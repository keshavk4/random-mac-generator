# Random MAC Address Generator
This program is a Bash script that generates a random MAC address for a wireless interface using the <strong>macchanger</strong> tool. It allows users to change their MAC address easily to enhance privacy or bypass MAC address-based restrictions.

## Prerequisites
Before using this program, ensure that you have the following prerequisites installed:

- <strong>macchanger</strong>: This tool is used to manipulate the MAC address of network interfaces. You can install it using the package manager of your Linux distribution.

## Usage
1. Open a terminal and navigate to the directory where the script is located.
2. Run the following command to make the script executable:
```sh
chmod +x random_mac_generator.sh
```

3. Execute the script using the following command:
```sh
./random_mac_generator.sh
```

The script will perform the following actions:
- Retrieve a random vendor MAC address from the macchanger tool's output.
- Generate a random MAC address by generating three random numbers in the range [0, 255].
- Combine the vendor MAC address with the random address to form the final MAC address.
- Disable the network interface (replace `<YOUR_NETWORK_INTERFACE>` with your actual wireless interface name).
- Change the MAC address of the network interface to the generated random MAC address.
- Enable the network interface.

<strong>Note</strong>: Replace `<YOUR_NETWORK_INTERFACE>` with the name of your wireless interface. You can find the name of your wireless interface by running the `ifconfig` command in the terminal and identifying the interface name starting with `wlan` or `wlo`.

4. The MAC address of your wireless interface will be changed to the randomly generated MAC address.

## Running at System Boot (Optional)
If you want the program to run automatically at system boot, you can use the crontab utility to schedule its execution. Here's how:

1. Open a terminal and run the following command to edit your user's crontab:
```sh
crontab -e
```

2. In the crontab file, add the following line to schedule the script execution at system boot:
```sh
@reboot /path/to/random_mac_generator.sh
```

Replace `/path/to/random_mac_generator.sh` with the actual path to the script file.

3. Save the crontab file and exit the editor.

Now, the script will run automatically each time the system boots up, ensuring that your wireless interface is assigned a random MAC address.

## Contributions
Contributions are always welcome! If you find any issues with the application or would like to suggest improvements, please open a new issue or submit a pull request.

## License
This application is released under the <a href=https://opensource.org/license/mit>MIT License</a>. See <a href=https://github.com/keshavk4/random-mac-generator/blob/main/LICENSE>LICENSE</a> for more details.