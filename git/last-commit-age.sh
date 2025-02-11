#!/bin/bash

# Calculate the time difference in seconds between the current time and the last commit timestamp
SECONDS_DIFF=$(( $(date +%s) - $(git log -1 --format=%ct) ))

# Convert seconds to a human-readable format
days=$((SECONDS_DIFF / 86400))
hours=$(( (SECONDS_DIFF % 86400) / 3600 ))
minutes=$(( (SECONDS_DIFF % 3600) / 60 ))
seconds=$((SECONDS_DIFF % 60))

# Display the result with a more beautified layout

# Header
printf "==================== Commit Age ====================\n"

# Data with Unicode icons
printf "⧗ [Days]          : %d\n" "$days"
printf "⧗ [Hours]         : %d\n" "$hours"
printf "⧗ [Minutes]       : %d\n" "$minutes"
printf "⧗ [Seconds]       : %d\n" "$seconds"

# Separator
printf "===================================================\n"

# Total seconds highlighted
printf "◆ [Total Seconds] : %d\n" "$SECONDS_DIFF"

# Footer
printf "===================================================\n"

