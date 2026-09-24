// Imports AI decompilation progress from JSON into Ghidra as plate comments.
//
// Prerequisites:
//   1. Run  python tools/ghidra_export_progress.py  (outside Ghidra) to generate
//      tools/ghidra_import.json next to this script.
//   2. Open SCES_509.16 in Ghidra with language r5900:LE:32:default.
//   3. Run Auto Analyse.
//   4. Window -> Script Manager -> add <repo>/tools/ to the script path.
//   5. Double-click this script to run it.
//
// @category RaC1-Decomp
// @author   rac1-decomp contributors

import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.Listing;
import ghidra.program.model.listing.CodeUnit;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;

public class GhidraImportProgress extends GhidraScript {
    @Override
    public void run() throws Exception {
        // The JSON lives next to this script in tools/
        File scriptFile = getSourceFile().getFile(false);
        File toolsDir   = scriptFile.getParentFile();
        File jsonFile   = new File(toolsDir, "ghidra_import.json");

        if (!jsonFile.exists()) {
            println("Cannot find " + jsonFile.getAbsolutePath());
            println("Run:  python tools/ghidra_export_progress.py  first.");
            return;
        }

        String content = new String(Files.readAllBytes(jsonFile.toPath()));
        Listing listing = currentProgram.getListing();

        // Parse the JSON array with simple string splitting (no external deps).
        // Each element has "addr": "<8 hex digits>" and optionally "c_code": "<escaped string>".
        String[] parts = content.split("\"addr\":\\s*\"");
        int imported = 0;
        int skipped  = 0;

        for (int i = 1; i < parts.length; i++) {
            String part = parts[i];
            if (part.length() < 8) continue;
            String addrStr = part.substring(0, 8).trim();

            // Extract c_code value
            int codeStart = part.indexOf("\"c_code\": \"");
            if (codeStart == -1) { skipped++; continue; }
            codeStart += 11;

            // Walk to the closing quote, skipping escaped quotes.
            int codeEnd = codeStart;
            while (codeEnd < part.length()) {
                codeEnd = part.indexOf('"', codeEnd);
                if (codeEnd == -1) break;
                // Count preceding backslashes
                int bs = 0;
                for (int k = codeEnd - 1; k >= codeStart && part.charAt(k) == '\\'; k--) bs++;
                if (bs % 2 == 0) break; // unescaped quote — end of value
                codeEnd++;
            }
            if (codeEnd == -1 || codeEnd >= part.length()) { skipped++; continue; }

            String cCode = part.substring(codeStart, codeEnd)
                .replace("\\n",  "\n")
                .replace("\\\"", "\"")
                .replace("\\\\", "\\");

            long addr;
            try {
                addr = Long.parseLong(addrStr, 16);
            } catch (NumberFormatException e) {
                skipped++;
                continue;
            }

            Address ghidraAddr = currentProgram.getAddressFactory()
                .getDefaultAddressSpace().getAddress(addr);
            Function f = listing.getFunctionAt(ghidraAddr);
            if (f == null) { skipped++; continue; }

            if (cCode.length() > 4000) {
                cCode = cCode.substring(0, 4000) + "\n\n/* ... truncated — see src/ for full code ... */";
            }

            String comment =
                "AI Decompiled (100% Exact Match)\n" +
                "================================================================\n\n" +
                cCode;

            listing.setComment(ghidraAddr, CodeUnit.PLATE_COMMENT, comment);
            imported++;
        }

        println("GhidraImportProgress: imported " + imported + " function(s), skipped " + skipped + ".");
    }
}
