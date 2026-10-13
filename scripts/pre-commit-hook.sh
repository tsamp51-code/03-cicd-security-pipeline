#!/bin/bash
# Pre-commit security checks
# Run before every commit on your local machine

echo "Running pre-commit security checks..."

# Check for common secret patterns
echo "Checking for secrets..."
if git diff --cached | grep -E "(password|secret|api_key|token|AWS_SECRET)" | grep -v "^-"; then
    echo "BLOCKED: Potential secret detected in staged changes"
    echo "Remove the secret before committing"
    exit 1
fi

# Check for AWS access key patterns
if git diff --cached | grep -E "AKIA[0-9A-Z]{16}"; then
    echo "BLOCKED: AWS Access Key detected in staged changes"
    exit 1
fi

echo "Pre-commit checks passed"
exit 0
