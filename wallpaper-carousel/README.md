
# Wallpaper Changer

This repository provides scripts to automatically change your wallpaper on Linux at startup and to manually change to the next or previous wallpaper using terminal commands.


## Setup Instructions

Follow these steps to set up:

### 1. Clone the Repository

First, clone the repository to your local machine.

### 2. Create and Configure `wallpaper.sh`

1. **Create `wallpaper.sh`:**

  Create a script named wallpaper.sh in your home directory:

   ```sh
   nano ~/wallpaper.sh
   ```

2. **Paste the code from `wallpaper.sh` in this repo into `wallpaper.sh`:**

3. **Make the script executable:**

   ```sh
   chmod +x wallpaper.sh
   ```

### 3. Create and Configure `wallpaper.sh.desktop`

1. **Create `wallpaper.sh.desktop`:**

   Open a terminal and create a new .desktop file:

   ```desktop
   nano ~/.config/autostart/wallpaper.sh.desktop
   ```

if autostart folder is absent first create it, then continue with the above.

2. **Paste the code from `wallpaper.sh.desktop` of this repo into `wallpaper.sh.desktop`:**

### 4. Set Up Aliases in `.bashrc`

1. **Open your `.bashrc` file in a text editor:**

   ```sh
   nano ~/.bashrc
   ```

2. **Add the lines from `.bashrc.txt` to add aliases for `nextwall` and `prevwall` commands:**


3. **Apply the changes:**

   ```sh
   source ~/.bashrc
   ```

### 6. Verify and Use

- **Ensure you have the required permissions to execute the scripts.**
- **Place your wallpapers in your wallpaper directory.**
- **Use `nextwall` to change to the next wallpaper and `prevwall` to change to the previous wallpaper.**

## Notes

- The scripts are configured for GNOME desktops using `gsettings`. If you use a different desktop environment, you may need to modify the script to use the appropriate command for changing wallpapers.

## Contributing

Feel free to open issues or submit pull requests for improvements or bug fixes.

## License

This project is licensed under the MIT License.
