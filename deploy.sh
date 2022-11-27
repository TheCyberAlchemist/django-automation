print_statement "ollecting static files.\n"
"$python_command" "$manage_file" collectstatic --noinput > /dev/null 2>&1

if [ -e "$requirements_file" ]; then
	print_statement "Installing Requirements."
    "$pip_command" install -r "$requirements_file" > /dev/null 2>&1
fi

"$python_command" "$manage_file" runserver $server_url
