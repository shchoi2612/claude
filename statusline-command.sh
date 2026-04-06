#!/usr/bin/env bash
# Claude Code status line with context usage percentage
input=$(cat)

# Run the existing ccstatusline with the same input
first_line=$(echo "$input" | npx -y ccstatusline@latest 2>/dev/null)

# Extract context used percentage (pre-calculated field)
used=$(echo "$input" | jq -r '.context_window.used_percentage // empty')

# Build context line
if [ -n "$used" ]; then
  ctx_line=$(printf "Ctx: %.0f%%" "$used")
else
  ctx_line="Ctx: -"
fi

# Output: first line from ccstatusline, second line with context
if [ -n "$first_line" ]; then
  printf "%s\n%s" "$first_line" "$ctx_line"
else
  printf "%s" "$ctx_line"
fi
