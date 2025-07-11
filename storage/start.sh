#!/bin/bash
bun install -g @anthropic-ai/claude-code
[ -f /home/claude/.claude/settings.json ] || {
    mkdir -p /home/claude/.claude
    echo "{
    \"apiKeyHelper\": \"echo none\",
    \"model\": \"${OPENAI_API_MODEL}\"
}" > /home/claude/.claude/settings.json
}
bunx --bun anyclaude --dangerously-skip-permissions 
