To create a 1 GB swap file on a Linux system, follow these steps:

### 1. **Create a Swap File**
Use the `dd` command to create a file that will be used for swap space.

```bash
sudo fallocate -l 1G /swapfile
```
If `fallocate` is not available, you can use `dd`:

```bash
sudo dd if=/dev/zero of=/swapfile bs=1M count=1024
```

### 2. **Set Correct Permissions**
Ensure that only the root user can read and write to the swap file for security purposes.

```bash
sudo chmod 600 /swapfile
```

### 3. **Make the File a Swap Space**
Convert the file into a swap area.

```bash
sudo mkswap /swapfile
```

### 4. **Enable the Swap File**
Activate the swap file to start using it.

```bash
sudo swapon /swapfile
```

### 5. **Verify Swap Status**
You can check if the swap is active using:

```bash
sudo swapon --show
```

Or:

```bash
free -h
```

### 6. **Make Swap Permanent**
To make the swap file persist across reboots, add it to the `/etc/fstab` file.

```bash
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
```

### Done!
You've successfully created a 1 GB swap file. It will be automatically enabled at boot.