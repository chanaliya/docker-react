FROM node:alpine as builder
WORKDIR '/home/schanaliya/mywebsite/docker_project/project3_frontend/frontend'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
COPY --from=builder /home/schanaliya/mywebsite/docker_project/project3_frontend/frontend/build /usr/share/nginx/html
