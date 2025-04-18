#!/bin/bash
echo "Init script is executed at: $(date '+%Y-%m-%d %H:%M:%S')"
user_input(){
   echo "User input function"
   read -p "What actions do you want to perform (image_build or app_deployment)? " FEED
   echo "User entered the input: $FEED"
   sleep 2
   if [[ $FEED == "image_build" || $FEED == "IMAGE_BUILD" ]]; then
      echo "List out the available Docker images.."
      docker image ls
      echo "User wants to build image first.."
      docker build -t nodejs .
      # Optionally list images again after building
      echo "Listing available Docker images after the build:"
      docker image ls
   else
      echo "User doesn't need anything at this moment.."
   fi
}

app_deploy(){
   echo "App deployment function"
   read -p "Do you want to deploy the Docker app? (app_deploy/APP_DEPLOY): " INPUT
   echo "User entered the input: $INPUT"
   sleep 2
   if [[ $INPUT == "app_deploy" || $INPUT == "APP_DEPLOY" ]]; then
      echo "List out the available Docker containers.."
      docker ps -a
      echo "User wants to deploy the app.."
      docker run -d -p 8080:80 --name container1 nodejs
      # Optionally list out containers
      echo "Listing available Docker container after the build:"
      docker ps -a 
   else
      echo "User doesn't need anything at this moment.."
   fi
}

cleanup(){
   echo "docker image with container cleanup.."
   read -p "Do you want to cleanup images with contain? (yes/no): " FINAL_CONFIRMATION
   echo "User provided input as:" $FINAL_CONFIRMATION
   if [[ $FINAL_CONFIRMATION == "yes" || $FINAL_CONFIRMATION == "YES" ]]; then
      echo "You are good to cleanup.."
      docker stop container1
      docker rm -f container1
      docker rmi -f nodejs
   else
      echo "User doesn't need anything at this moment.."
   fi 
}

# Invoking functions one after another
user_input
app_deploy 
cleanup
