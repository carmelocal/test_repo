# Download the Microsoft repository GPG keys
wget -q https://packages.microsoft.com/config/ubuntu/18.10/packages-microsoft-prod.deb -e use_proxy=yes -e http_proxy=10.72.70.116:8888

# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb

# Update the list of products
sudo apt-get update

# Enable the "universe" repositories
sudo add-apt-repository universe

# Install PowerShell
#sudo apt-get install -y powershell
