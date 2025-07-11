#!/bin/bash
bun install -g @anthropic-ai/claude-code
echo "{
    \"apiKeyHelper\": \"echo none\",
    \"model\": \"${OPENAI_API_MODEL}\"
}" > /root/.claude/settings.json || true
bunx --bun anyclaude
