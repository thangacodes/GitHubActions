#!/bin/bash
echo "Script executed at:" $(date '+%Y-%m-%d %H:%M:%S')
echo "###################################"
echo "#        PROD Execution           #"
echo "###################################"
echo "Get to know about the GH runner information"
echo "Executor name is:" $(whoami)
echo "GitHub workflow path is:" $(pwd)
echo "GitHub hosted machine name is:" $(hostname)
