echo -e "\n"
print_statement "Stashing any changes."
git stash
print_question "Do you want to pull ? [y/n] "
read -r answer
if [[ $answer =~ ^[Yy]$ ]]
then
	print_question "Enter the username : "
	read -r username
	print_question "Enter the token : "
	read -r token 
	print_statement "Pulling from the remote repository."
	git pull https://$username:$token@$git_url
else
	print_error "Not pulling from origin."
fi


