
# Mouse Debounce Script

This guide will help you install `libinput`, create a debounce script for mouse clicks, and set it up to run automatically at system startup.

## Installation

### Install `libinput`

First, install the `libinput-tools` package to manage input devices:

```bash
sudo apt-get install libinput-tools
```

Once installed, you can list your input devices using:

```bash
libinput list-devices
```

## Create the Script

1. **Create the Script File**

   Open a new file for editing:

   ```bash
   nano ~/debounce_mouse.sh
   ```

2. **Add the Script Content**

   Copy and paste the content from `debounce_mouse.sh`

   Adjust `DEVICE` and `DEBOUNCE_TIME` as necessary.

3. **Make the Script Executable**

   Save the script and make it executable:

   ```bash
   chmod +x ~/debounce_mouse.sh
   ```

## Run the Script

Run the script in the background:

```bash
~/debounce_mouse.sh &
```

## Using Crontab

To ensure the script runs automatically at startup, follow these steps:

1. **Edit Crontab for Your User**

   Open your user’s crontab file for editing:

   ```bash
   crontab -e
   ```

2. **Add an Entry to Run the Script at Startup**

   Add the following line to run the script at every boot:

   ```bash
   @reboot /home/yourusername/debounce_mouse.sh
   ```

   Replace `/home/yourusername/debounce_mouse.sh` with the absolute path to your script.

3. **Save and Close the Crontab File**

   Save and close the file. 

4. **Verify Crontab Entry**

   Check if the crontab entry was added successfully by running:

   ```bash
   crontab -l
   ```

This setup will ensure your debounce script runs automatically each time your system starts, keeping your mouse clicks debounced and controlled.
