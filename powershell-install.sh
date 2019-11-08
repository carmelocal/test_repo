# Download the Microsoft repository GPG keys
wget -e use_proxy=yes -e https_proxy=$1 https://packages.microsoft.com/config/ubuntu/18.10/packages-microsoft-prod.deb

# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb

# Update the list of products
sudo apt-get update

# Enable the "universe" repositories
sudo add-apt-repository universe

# Install PowerShell
sudo apt-get install -y powershell
