: '

project_dir := "path/to/project"
project_name := "project_name"
git_url := "https://path/to/git/repo.git"
python_command := "python3" or "python" or "python3.9" etc.
server_url := "" it is the url of the server where the project will be deployed

'
# enter the following details below.
project_dir=''
project_name=""
git_url=""
python_command="python3"

server_url="127.0.0.1:8000"

# set settings file variable as {project_name}/settings.py
#settings_file="$project_dir/$project_name/settings.py"
#manage_file="$project_dir/manage.py"

settings_file="./$project_name/settings.py"
requirements_file="./requirements.txt"
manage_file="./manage.py"


if [ -e "$settings_file" ]; then
	print_success "Settings file exists"
else
	print_error "Settings file does not exist"
	exit 1
fi
