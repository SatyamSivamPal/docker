#base image
FROM ubuntu

#installing nodejs version-18
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

#copy the code to container
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY index.js index.js

#generate node modules
RUN npm install

#run node and index.js
ENTRYPOINT [ "node", "index.js" ]

#converting images code
#docker build -t image_name path



