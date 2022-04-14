FROM node
  
WORKDIR /opt/ot-express

# install deps
COPY package.json /opt/ot-express
RUN npm install

# Setup workdir
COPY . /opt/ot-express

# run
EXPOSE 3000
CMD ["npm", "start"]