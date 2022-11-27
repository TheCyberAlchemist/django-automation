#!/bin/bash
# set -e

echo -e "\n"
print_heading "Settings File Check."
echo -e "\n"

allowed_hosts=$(grep "ALLOWED_HOSTS" $settings_file)
print_statement "$allowed_hosts"

echo -e "\n"

if grep -q -i -e "DEBUG[ ]*=[ ]*True" $settings_file
then
	print_error "DEBUG is set to True."
	print_question "Do you want change DEBUG to False ? [y/n] " 2
	read -r answer
	if [[ $answer =~ ^[Yy]$ ]]
	then
		awk '{sub(/^DEBUG[ ]*=[ ]*True$/,"DEBUG=False"); print}' "$settings_file" > "$settings_file.tmp" && mv "$settings_file.tmp" "$settings_file"
		print_success "DEBUG is now changed to False." 3
	else
		print_error "DEBUG is still set to True." 3
	fi
else
	print_success "DEBUG is set to False."
fi
