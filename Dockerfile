# Select the latest node image to work from
FROM node:latest

# Who edited this docker file
LABEL MAINTAINER=msokol@spartaglobal.com

# Choose the working directory
WORKDIR /usr/src/app

# 1. (. = copy whole current directory) 2. (. = to current working directory)
COPY . .

# Install npm
RUN npm install 

#####################
# Second stage -> Multi Stage Docker build
# FROM node:alpine

# Magical line -> Copies only essential things to the layer
# Compresses the size, creates a lighter weight image
# COPY --from=App /usr/src/app /usr/src/app

# WORKDIR /usr/src/app

# RUN npm install 

# Default port 3000
EXPOSE 3000

# Run seeds to see the posts appear, Start the app
CMD ["node",  "app.js"]
