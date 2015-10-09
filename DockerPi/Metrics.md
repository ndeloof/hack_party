# Test 1

 - Plain official hypriot-rpi-20151004-132414.img
 - tmpfs for `/var/lib/docker` (to make test faster)
 - docker daemon configured as [conf/etc/systemd/system/docker.service.d/custom-daemon-opts.conf]
 - start containers with `--net=host` and `--log-driver=none`
 - 64Mb swap file [swap.sh]
  
results:  
