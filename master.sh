#!/bin/bash
# include the configuration file

# -> git stash 
# -> ask pull

# -> collect static


# -> check settings

# --- deploy
# -> screen start
# -> start venv
# -> python manage.py runserver

echo $name "asdasd"
source $(dirname "$0")/functions.sh
source $(dirname "$0")/config.sh
source $(dirname "$0")/git-steps.sh

source $(dirname "$0")/check-settings.sh


source $(dirname "$0")/deploy.sh

# check if settings file exists
