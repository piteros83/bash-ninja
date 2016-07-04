#write multiple files in selected destination 
for i in {1..20000}; do dd if=/dev/urandom of=/opt/xxx/tmp/file$i bs=5M count=1; done