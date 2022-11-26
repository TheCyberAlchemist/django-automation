<h1 align="center">django-automation</h1>

This project is the automation of my Django deployment workflow.

# 🗒️ Steps to Get Started
- Clone this repository into your server.
- Change the required config.sh variables. ( Detailed explaination [here 🔗](https://github.com/TheCyberAlchemist/django-automation/edit/main/README.md#-variables-in-configsh))
- Go to the Django Project Directory.
- Execute *master.sh*.
- Answer the prompts.
- ☺️ Relax.

# ✨ Workflow Automated 
- Askes weather to pull from the remote repo.
  - If "Yes"
    - Prompts for the github username and token.
    - Stashes the current changes (If any).
    - Pulls from the github URL (set in **config.sh**).
- Checks weather ***Debug*** is set to False.
  - Asks to change it to False Automatically.
- Prints the ***Allowed_Hosts*** array for ready reference.
- Runs **manage.py collectstatic** command.
- Installs all the pip packages form requirements.txt (if found).
- Runs ***manage.py runserver*** on the given server URL (set in **config.sh**).

# ❔ Variables in config.sh
- ***project_dir*** -- The is the absolute path to the Django Project Directory. (Usually starts like "~/...")
- ***project_name*** -- This is the name of the Django Project. (i.e. The Folder name where the settings.py is stored) 
- ***git_url*** -- This is the githib repo and branch URL. (‼️ Please note that there must be no "https://" in this string ‼️)
- ***python_command*** -- This is nothing but the "python" command used by the system. (Usually "python3" in linux systems)
- ***pip_command*** -- Pip command used by the system.(Usually "pip3" in linux systems)
- ***server_url*** -- The URL the Django Server should be hosted. (Usually 0:80 in production server).
- The rest of the variables are not to be changed.

# 🗒️ Future Goals
- Add the server URL automatically into the allowed hosts.
- Making the scripts play well with relative paths.
