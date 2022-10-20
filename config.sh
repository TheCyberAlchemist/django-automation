# enter the following details below.
project_dir=''
project_name=""
git_url=""

server_url="127.0.0.1:8000"

# set settings file variable as {project_name}/settings.py
#settings_file="$project_dir/$project_name/settings.py"
#manage_file="$project_dir/manage.py"

settings_file="./$project_name/settings.py"
manage_file="./manage.py"


if [ -f"$settings_file" ]; then
	print_success "Settings file exists"
else
	print_error "Settings file does not exist"
	exit 1
fi
