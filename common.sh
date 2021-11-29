#!/usr/bin/env bash

gray="\\e[37m"
blue="\\e[36m"
red="\\e[31m"
green="\\e[32m"
yellow="\\e[33m"
reset="\\e[0m"

#######################################
# echoes a message in blue
# Globals:
#   None
# Arguments:
#   Message
#######################################
info() {
  echo -e "${blue}INFO: $*${reset}";
}

#######################################
# echoes a message in red
# Globals:
#   None
# Arguments:
#   Message
#######################################
error() {
  echo -e "${red}ERROR: $*${reset}";
}

#######################################
# echoes a message in grey. Only if debug mode is enabled
# Globals:
#   DEBUG
# Arguments:
#   Message
#######################################
debug() {
  if [[ "${DEBUG}" == "true" ]]; then
    echo -e "${gray}DEBUG: $*${reset}";
  fi
}

#######################################
# echoes a message in yellow
# Globals:
#   None
# Arguments:
#   Message
#######################################
warning() {
  echo -e "${yellow}âœ” $*${reset}";
}

#######################################
# echoes a message in green
# Globals:
#   None
# Arguments:
#   Message
#######################################
success() {
  echo -e "${green}âœ” $*${reset}";
}

#######################################
# echoes a message in red and terminates the programm
# Globals:
#   None
# Arguments:
#   Message
#######################################
fail() {
  echo -e "${red}âœ– $*${reset}";
  exit 1;
}