diff --git a/docs/lab_guide.md b/docs/lab_guide.md
new file mode 100644
index 0000000000000000000000000000000000000000..d1876076ba2fdcd078804426027cfd204ffbfdee
--- /dev/null
+++ b/docs/lab_guide.md
@@ -0,0 +1,77 @@
+# Malware Analysis & Sandbox Lab Guide
+
+> **Safety first:** Only use benign test samples or malware specimens obtained legally for educational use.
+> Never run samples on production systems. Keep the sandbox isolated.
+
+## Goals
+
+- Build an isolated sandbox environment for detonation.
+- Collect host and network telemetry for analysis.
+- Extract indicators of compromise (IOCs).
+- Document findings in a repeatable, reportable format.
+
+## Suggested Environment
+
+- **Host:** Any modern OS with virtualization support.
+- **Guest VM:** Windows 10/11 (analysis VM) or a controlled Linux VM for tooling.
+- **Tools (examples):**
+  - Process/registry monitoring: Procmon, Sysmon
+  - Network monitoring: Wireshark, tcpdump
+  - Static analysis: strings, PE-bear, Detect It Easy
+  - Memory analysis: Volatility (optional)
+
+## Isolation Checklist
+
+1. **No shared clipboard / drag-and-drop** (disable for the VM).
+2. **No shared folders** between host and guest.
+3. **Host-only or NAT network** (no bridged mode).
+4. **Snapshot before detonation** so you can revert.
+5. **Separate analysis account** inside the guest.
+
+## Workflow
+
+### 1) Prepare the Sample
+
+- Place the sample in `samples/` and never execute it on the host.
+- Compute hashes and basic metadata using:
+
+```bash
+./scripts/hash_sample.sh samples/<sample>
+```
+
+### 2) Baseline the VM
+
+- Record a baseline of running processes, services, and open connections.
+- Capture a short, clean network trace before detonation.
+
+### 3) Detonate in the Sandbox
+
+- Start monitoring tools (Procmon/Sysmon, Wireshark).
+- Execute the sample and observe for 5–10 minutes.
+- Save logs and network captures into `artifacts/`.
+
+### 4) Collect Indicators
+
+- Extract strings to identify domains, URLs, or mutexes:
+
+```bash
+./scripts/strings_extract.sh samples/<sample> > artifacts/strings.txt
+```
+
+- Record hashes, network IOCs, and persistence mechanisms.
+
+### 5) Report Findings
+
+- Use `templates/analysis_report.md` as a starting point.
+- Include screenshots, process trees, and network summaries.
+
+## Operational Notes
+
+- Keep data labeled with timestamps.
+- Use consistent naming: `YYYYMMDD_sample_name_*`.
+- Store artifacts locally; avoid uploading raw malware to third-party services.
+
+## Next Steps
+
+- Add automation for snapshotting and log collection.
+- Integrate sandbox reports into a central case management system.
