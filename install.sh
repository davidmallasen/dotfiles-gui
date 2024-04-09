#!/bin/bash

echo "Installing packages in the system requires sudo permission."
read -rp "Do you want to install packages?: (Y/n): " user_response
if [ "$user_response" = "y" ] || [ "$user_response" = "Y" ] || [ "$user_response" = "" ]; then
    SUDO_VAR="yes"
else
    SUDO_VAR="no"
fi

# Install and configure Plank dock
bash plank_setup.sh $SUDO_VAR

# Need to log-out
display_banner() {
    echo "*************************************************"
    echo "*                                               *"
    echo "*           Customization completed             *"
    echo "*                                               *"
    echo "*          IT IS NECESSARY TO LOG OUT           *"
    echo "*                                               *"
    echo "*     The current repository can be deleted     *"
    echo "*                                               *"
    echo "*************************************************"
}

# Call the function to display the banner
display_banner

