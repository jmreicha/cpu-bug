FROM arhea/yarn:6-onbuild

# Default directory
COPY package.json /usr/src/app

# Use yarn to speed up install time
RUN yarn install

# Copy remaining files
COPY . /usr/src/app

EXPOSE 8080

CMD [ "npm", "start" ]

