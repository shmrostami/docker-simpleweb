# Specify a base image
FROM node:alpine

WORKDIR /usr/app

# Install some dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]


# CMD build image: docker build -t rostami/simpleweb .
# CMD run image: docker run -p 8080:8080 rostami/simpleweb