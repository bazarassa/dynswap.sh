# dynswap.sh

It's a bash script that dynamicaly creates swapfiles when your available system memory is full

## Installation and Usage

Follow these steps to set up and run the script:

1. **Download the script**:
   ```bash
   curl -O https://raw.githubusercontent.com/bazarassa/dynswap.sh/refs/heads/master/dynswap
   ```

2. **Make the script executable**:
   ```bash
   chmod +x dynswap
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
