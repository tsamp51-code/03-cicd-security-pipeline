# How to Add Security Exceptions

## When to Request an Exception
Only request an exception when:
- The finding is a confirmed false positive
- The risk has been formally accepted by a security lead
- A compensating control exists

## Exception Process
1. Open a GitHub issue describing the finding
2. Document why it is a false positive or accepted risk
3. Get approval from the security team
4. Add to policies/exceptions/ with expiry date
5. Review exceptions quarterly

## Never Grant Exceptions For
- Hardcoded secrets or credentials
- SQL injection vulnerabilities
- Command injection vulnerabilities
- S3 buckets with public access