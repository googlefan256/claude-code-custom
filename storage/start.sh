#!/bin/bash
bun install -g @anthropic-ai/claude-code
[ -f /root/.claude/settings.json ] || {
    mkdir -p /root/.claude
    echo "{
    \"apiKeyHelper\": \"echo none\",
    \"model\": \"${OPENAI_API_MODEL}\"
}" > /root/.claude/settings.json
}
bunx --bun anyclaude
