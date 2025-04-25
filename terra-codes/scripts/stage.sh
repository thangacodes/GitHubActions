#!/bin/bash
# Print current date and time
echo "Script executed at: $(date '+%Y-%m-%d %H:%M:%S')"
# Header for staging execution
echo "###################################"
echo "#        Stage Execution          #"
echo "###################################"
echo "Get to know about the GH runner information"
echo "Executor name is:" $(whoami)
echo "GitHub workflow path is:" $(pwd)
echo "GitHub hosted machine name is:" $(hostname)
