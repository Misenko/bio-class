#!/bin/bash

function create_user {
# Add a non-root user account
useradd --shell /bin/bash ${USERNAME}
usermod -L ${USERNAME}
}
