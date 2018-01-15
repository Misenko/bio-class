## Not executable

# End on any non-zero return code
set -e

# User details
USERNAME="student"

# Paths
INSTALL_DIR="/opt/bio-class"
BIN_DIR="${INSTALL_DIR}/bin"
CONF_DIR="${INSTALL_DIR}/conf"

HOME_DIR="/home/${USERNAME}"

PATH_FILE="${INSTALL_DIR}/bio_paths.sh"
