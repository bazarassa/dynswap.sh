# dynswap.sh

It's a bash script that dynamicaly (only) creates swapfiles when your available system memory is full

## Installation and Usage

Follow these steps to set up and run the script:

1. **Download the script**:
   ```bash
   curl -O <URL_TO_SCRIPT>
   ```
   *(Replace `<URL_TO_SCRIPT>` with the actual download link)*

2. **Make the script executable**:
   ```bash
   chmod +x dynswap.sh
   ```

3. **Optional: Link to /usr/local/bin**:
   To run the script from anywhere, you can create a symbolic link:
   ```bash
   sudo ln -s $(pwd)/dynswap.sh /usr/local/bin/dynswap.sh
   ```

4. **Run the script**:
   ```bash
   dynswap.sh
   ```

> **Note:** This script was modified using AI.

## License
MIT license
