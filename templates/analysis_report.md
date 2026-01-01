diff --git a/templates/analysis_report.md b/templates/analysis_report.md
new file mode 100644
index 0000000000000000000000000000000000000000..8d6d262366d11aac2d955269e24ddc7c701f947b
--- /dev/null
+++ b/templates/analysis_report.md
@@ -0,0 +1,63 @@
+# Malware Analysis Report
+
+## Case Metadata
+
+- **Analyst:**
+- **Date:**
+- **Sample name:**
+- **Sample source:**
+- **Case ID:**
+
+## Executive Summary
+
+Provide a concise, non-technical summary of the observed behavior and risk.
+
+## Sample Details
+
+- **SHA-256:**
+- **MD5:**
+- **File type:**
+- **File size:**
+- **Compilation timestamp (if applicable):**
+
+## Environment
+
+- **VM OS:**
+- **Network mode:**
+- **Snapshot ID:**
+- **Monitoring tools:**
+
+## Behavior Summary
+
+- **Execution timeline:**
+- **Process tree:**
+- **File system changes:**
+- **Registry changes:**
+- **Persistence mechanisms:**
+- **Network activity:**
+
+## Indicators of Compromise (IOCs)
+
+### File Indicators
+
+- Hashes, filenames, dropped artifacts
+
+### Network Indicators
+
+- Domains, IPs, URLs, user agents
+
+### Host Indicators
+
+- Services, scheduled tasks, registry keys, mutexes
+
+## Evidence
+
+- Screenshots
+- Log excerpts
+- PCAP summaries
+
+## Recommendations
+
+- Containment actions
+- Detection ideas
+- Prevention steps
