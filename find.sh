#search for files in . directory from last 120 min and sum their disk usage
find . -type f -mmin -120 -print0 | du -hc --files0-from - | tail -n 1

#search for files in . directory from date to date and sum their disk usage
find /arch/logi/comarch_old/testy -type f -newermt "2016-06-28 00:00:00" \! -newermt "2016-06-29 23:59:59" -print0 | du -hc --files0-from - | tail -n 1

#find in solaris
find [path] -type f -exec grep '[pattern]' /dev/null {} +