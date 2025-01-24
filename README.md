# Metal HUD Run Applications with Metal HUD Helper

## Overview

Metal HUD Run Applications with Metal HUD Helper is a practical Bash script that loads the Metal HUD debugging tool and automatically runs any specified macOS application.

---

## Installation and Configuration

### Step 1: Download the Script
1. Save the script as a file, e.g., `MetalRun.sh`.

### Step 2: Grant Execute Permission
1. Navigate to the directory where the script is saved:
   ```bash
   cd /path/to/script
   ```
2. Grant execute permission to the script:
   ```bash
   chmod +x MetalRun.sh
   ```

---

## Usage Instructions

### Basic Operation
1. Navigate to the directory containing the script:
   ```bash
   cd /path/to/script
   ```
2. Run the script:
   ```bash
   ./MetalRun.sh
   ```
3. Follow the prompt to input the name of the macOS application you wish to run, for example:
   ```
   Enter your application name: MyApp
   ```

### Advanced Features
- The application name should match the name of the app bundle located in the `/Applications` directory.
- The script automatically searches for Unix executable files in the `Contents/MacOS` directory of the app bundle.
- The script automatically enables the Metal HUD debugging tool.
- Not support Applications download and install from app store

---

## Example Output

1. After launching the script, you will see a prompt like this:
   ```
   ** Metal HUD Run Applications with Metal HUD Helper **
   -- CopyRight@BruceHanzi --
   == AppVersion: 1.25.2_MacOS_UNIVERSAL ==
   Enter your application name:
   ```
2. Once you specify the application name:
   ```
   Starting "MyApp" with Metal HUD...
   Ready to run application with Metal HUD
   Shell may output some codes, don’t worry
   ```

---

## Error Handling

### Error 1: Application Not Found
If the specified application name does not exist in the `/Applications` directory, the script displays:
```bash
Error: Application "MyApp" not found in /Applications.
```

### Error 2: No Executable Found
If no valid Unix executable file is found in the `Contents/MacOS` directory, the script displays:
```bash
Warning: No valid executable file found in "/Applications/MyApp.app/Contents/MacOS".
```

---

## Technical Details

1. **Color Support**:
   - ANSI escape sequences are used to add color to terminal outputs.
2. **Auto-Detection**:
   - The `find` command automatically searches for executable files while excluding `.sh` files.
3. **Environment Variables**:
   - The script uses `export MTL_HUD_ENABLED=1` to enable the Metal HUD.

---

## License

This is a completely free-to-use script intended for personal and educational purposes only.

---

## Support

For any issues or suggestions, please contact:
- Author: BruceHanzi
- Email: [shzzyefcom@163.com]
