diff --git a/scripts/strings_extract.sh b/scripts/strings_extract.sh
new file mode 100755
index 0000000000000000000000000000000000000000..b67ad61ded9449373c0437e4863e2ef4ed341427
--- /dev/null
+++ b/scripts/strings_extract.sh
@@ -0,0 +1,16 @@
+#!/usr/bin/env bash
+set -euo pipefail
+
+if [[ $# -ne 1 ]]; then
+  echo "Usage: $0 <sample_path>" >&2
+  exit 1
+fi
+
+sample="$1"
+
+if [[ ! -f "$sample" ]]; then
+  echo "Sample not found: $sample" >&2
+  exit 1
+fi
+
+strings -a -n 4 "$sample" | sort -u
