#search for files in . directory from last 120 min and sum their disk usage
find . -type f -mmin -120 -print0 | du -hc --files0-from - | tail -n 1