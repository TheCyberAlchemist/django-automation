#!/bin/bash
echo -e "\n"
source $(dirname "$0")/functions.sh
source $(dirname "$0")/config.sh
source $(dirname "$0")/git-steps.sh

source $(dirname "$0")/check-settings.sh


source $(dirname "$0")/deploy.sh

# check if settings file exists
