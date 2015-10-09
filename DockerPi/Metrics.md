# Test 1 [script](test1.sh)

 - Plain official hypriot-rpi-20151004-132414.img
 - tmpfs for `/var/lib/docker` (to make test faster)
 - docker daemon configured as [script](conf/etc/systemd/system/docker.service.d/custom-daemon-opts.conf)
 - start containers with `--net=host` and `--log-driver=none`
 - 64Mb swap file [script](swap.sh)
  
results:  
```
COUNTER=1039, PORT=11039
WARNING: IPv4 forwarding is disabled. Networking will not work.
d0a288229bdf3fa1c9662946d763efcd1f2b2f930016486875a5c399a47ba8e4
Error response from daemon: Cannot start container d0a288229bdf3fa1c9662946d763efcd1f2b2f930016486875a5c399a47ba8e4: [8] System error: fork/exec /proc/self/exe: cannot allocate memory
```

# Test 2

same as Test 1 + [boot](conf/boot) tweaks (need to reboot)

results:

# Test 3

same as Test 2 + [sysctl](etc/sysctl.d) tweaks

results:  
