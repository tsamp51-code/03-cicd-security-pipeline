# CI/CD Security Pipeline

A secure CI/CD pipeline built with GitHub Actions that embeds 
security checks at every stage of the development lifecycle.

## Security Checks Included
- Secret scanning (Gitleaks)
- Static analysis SAST (Semgrep)
- Dependency scanning (Safety)
- Infrastructure as Code scanning (Checkov)
- Container scanning (Trivy)

## Pipeline Philosophy
Security is not a gate at the end - it runs automatically on 
every commit and pull request. Issues caught here cost $100 
to fix. The same issue in production costs $1,000,000+.

## Block vs Warn Thresholds
| Finding Type | Severity | Action |
|---|---|---|
| Secrets | Any | BLOCK |
| SQL Injection | High/Critical | BLOCK |
| Dependency CVE | Critical | BLOCK |
| Open S3 Bucket | Any | BLOCK |
| Code Quality | Medium | WARN |
| Missing headers | Low | WARN |