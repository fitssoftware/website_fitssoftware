FROM node:20.18.0

WORKDIR /app

COPY ./package.json .
RUN npm i
COPY . .
EXPOSE 3000

ENTRYPOINT [ "npm", "run", "start"]

# Activate this comment to start the container, but run the npm command manualy
#ENTRYPOINT [ "tail", "-f", "/dev/null" ]