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
   sudo ln -s $(pwd)/dynswap /usr/local/bin/dynswap.sh
   ```

4. **Run the script**:
   ```bash
   dynswap.sh
   ```

## Systemd Integration (Recommended)

To run the script automatically every minute using systemd, use the configuration files provided in the `./systemd` directory:

1. **Move the script and config**:
   ```bash
   sudo cp /usr/local/bin/dynswap.sh /usr/local/bin/dynswap.sh
   sudo cp ./systemd/dynswap.service /etc/systemd/system/
   sudo cp ./systemd/dynswap.timer /etc/systemd/system/
   ```

2. **Enable and start the timer**:
   ```bash
   sudo systemctl daemon-reload
   sudo systemctl enable --now dynswap.timer
   ```

3. **Check the status**:
   ```bash
   systemctl list-timers --all | grep dynswap
   ```

> **Note:** This script was modified using AI.

## License
MIT license
