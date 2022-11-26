echo -e "\n"
print_question "Do you want to pull from the remote repo ? [y/n] "
read -r answer
if [[ $answer =~ ^[Yy]$ ]]
then
	git stash
	print_statement "Stashing any changes."
	print_question "Enter the username : "
	read -r username
	print_question "Enter the token : "
	read -r token 
	print_statement "Pulling from the remote repository."
	git pull $username:$token@$git_url
else
	print_error "Not pulling from origin."
fi


