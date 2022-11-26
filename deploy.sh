"$python_command" "$manage_file" collectstatic --noinput
"$python_command" "$manage_file" runserver $server_url
