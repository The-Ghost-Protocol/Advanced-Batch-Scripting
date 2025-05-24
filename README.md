# DataClone Script

## Overview

This is a simple batch script that clones the **Documents** folder of all user profiles on a Windows machine and copies them into a local `DATA` directory created next to the script itself.

The script is useful for administrative backup tasks, offline archival, or incident response scenarios.

---

## Features

- Iterates through each user profile in `C:\Users`
- Checks if the user has a `Documents` folder
- Copies the contents of each `Documents` folder to:
  ```
  <script_directory>\SHIELD\<username>\Documents\
  ```
- Creates the `DATA` directory if it does not already exist
- Displays status messages for each user's data being copied
- Aborts and displays an error message if the destination drive runs out of space

---

## Usage

1. Place the script in a directory with sufficient space to store the copied files.
2. Run the script as an **Administrator** to ensure access to all user directories:
   - Right-click the `.bat` file and select **Run as Administrator**
3. Monitor the console output for progress and any potential errors.

---

## Notes

- The script uses `xcopy` with the `/E`, `/Y`, and `/I` flags to ensure a complete and silent copy.
- The script assumes that all user profiles are located under `C:\Users`.
- If any copy operation fails (e.g. due to insufficient space), the script will abort further copying and display an error.

---

## Requirements

- Windows OS
- Administrator privileges for full access to user folders
- Sufficient disk space for the cloned data

---

## Example Output

```
Starting Data Cloning...
Copying from: C:\Users\Alice\Documents
Copying from: C:\Users\Bob\Documents

Data Cloning Complete.
```

---

## License

This script is provided as-is with no warranty. Use at your own risk.
