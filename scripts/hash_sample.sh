diff --git a/scripts/hash_sample.sh b/scripts/hash_sample.sh
new file mode 100755
index 0000000000000000000000000000000000000000..4c14162bf8d3cb2e770009f94ea9ce5b03addf60
--- /dev/null
+++ b/scripts/hash_sample.sh
@@ -0,0 +1,18 @@
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
+sha256sum "$sample"
+md5sum "$sample"
+ls -lh "$sample" | awk '{print "size:", $5, "path:", $9}'
