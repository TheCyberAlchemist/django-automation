print_statement "\nCollecting static files.\n"
python3 "$manage_file" collectstatic --noinput > /dev/null 2>&1

if [ -e "$requirements_file" ]; then
	print_statement "Installing Requirements."
    pip3 install -r "$requirements_file" > /dev/null 2>&1
fi

python3 "$manage_file" runserver $server_url
