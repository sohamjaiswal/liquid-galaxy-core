
# Install lightdm if not already installed
sudo apt update
sudo apt install -y lightdm

# Set lightdm as the default display manager
sudo dpkg-reconfigure lightdm

# Stop the gdm3 service
sudo systemctl disable gdm3.service
sudo systemctl stop gdm3.service

# Start lightdm service
sudo systemctl enable lightdm.service
sudo systemctl start lightdm.service

echo "Press ENTER key to reboot now"
read
sudo reboot