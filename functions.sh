#!/bin/bash
# set -e
# set all color variables
RED='\033[1;31m'
GREEN='\033[1;32m'
ORANGE='\033[1;33m'
BLUE='\033[1;34m'
PURPLE='\033[1;35m'
CYAN='\033[1;36m'

NC='\033[0m'

get_dots(){
  indentation=${1:-1}
  dots="|-----"
  for ((i=1;i<indentation;i++))
  do 
  	dots+="-----"
  done
  echo "$dots"
}

print_heading(){
  echo -e "${PURPLE}[*] ***** $1 ***** ${NC}"

}

print_statement(){
  dots=$(get_dots $2)
  echo -e "${ORANGE}[-] ${dots} $1${NC}"
}

print_success(){
  dots=$(get_dots $2)
  echo -e "${GREEN}[+] ${dots} $1${NC}"
}

print_error(){
  dots=$(get_dots $2)
  echo -e "${RED}[!] ${dots} $1${NC}"
}

# get_input function that takes in a prompt and returns the user input
print_question(){
  dots=$(get_dots $2)
#   echo without a newline
	echo -e -n "${CYAN}[?] ${dots} $1${NC}"
}
