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

print_statement(){
  echo -e "${ORANGE}[-] ...... $1${NC}"
}

print_success(){
  echo -e "${GREEN}[+] ...... $1${NC}"
}

print_error(){
  echo -e "${RED}[!] ...... $1${NC}"
}

# get_input function that takes in a prompt and returns the user input
print_question(){
#   echo without a newline
	echo -e -n "${CYAN}[?] ...... $1${NC}"
}
