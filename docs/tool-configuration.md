# Security Tool Configuration

## Gitleaks (Secret Scanning)
- Runs on every push and pull request
- Scans entire git history on first run
- Blocks pipeline on any secret detection
- No exceptions for secrets - rotate and remove

## Semgrep (SAST)
- Runs on every pull request
- Uses OWASP Top 10 ruleset
- Blocks on HIGH and CRITICAL findings
- MEDIUM findings are warnings only

## Safety (Dependency Scanning)
- Checks requirements.txt against CVE database
- Blocks on CRITICAL CVEs with known exploits
- Scheduled weekly scan for new CVEs

## Checkov (IaC Scanning)
- Runs on all Terraform file changes
- Blocks on public S3, open security groups
- Configuration in policies/checkov-config/

## Trivy (Container Scanning)
- Runs on Dockerfile changes
- Scans OS packages and application dependencies
- Blocks on CRITICAL and HIGH findings