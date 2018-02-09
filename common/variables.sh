## Not executable

# End on any non-zero return code
set -e

# User details
USERNAME="student"

# Paths
CONF_DIR="/opt/bio-class/conf"
HOME_DIR="/home/${USERNAME}"

INSTALL_DIR="/opt/bio-software"
export PATH_FILE="${INSTALL_DIR}/paths.sh"
