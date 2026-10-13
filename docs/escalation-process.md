# What To Do When the Pipeline Blocks You

## Step 1 - Read the Finding
The pipeline output tells you exactly what was found and where.
Do not ignore it or try to bypass it.

## Step 2 - Determine if it is Real
Ask yourself:
- Is this actually in my code?
- Is this a real vulnerability or a false positive?
- Does it affect what we are shipping?

## Step 3 - Fix It (Preferred Path)
Fix the issue, push again, pipeline passes.

## Step 4 - Exception Process (If Needed)
If you believe it is a false positive:
- Open a GitHub issue with full details
- Tag the security team
- Do not merge until approved

## Step 5 - Emergency Process
For emergency production fixes only:
- Get verbal approval from security lead
- Document in the PR why this is an emergency
- Create a follow-up ticket to fix properly within 48 hours
- Security lead must review within 24 hours