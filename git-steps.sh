echo -e "\n"
print_heading "Version Control Phase."
echo -e "\n"
print_question "Do you want to pull from the remote repo ? [y/n] "
read -r answer
if [[ $answer =~ ^[Yy]$ ]]
then
	git stash > /dev/null 2>&1
	print_statement "Stashing any changes." 2
	print_question "Enter the username : " 2
	read -r username
	print_question "Enter the token : " 2
	read -r token 
	print_success "Pulling from the remote repository." 2
	git pull https://$username:$token@$git_url > /dev/null 2>&1
else
	print_error "Not pulling from origin." 2
fi


