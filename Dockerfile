FROM node:20-alpine
WORKDIR /server
COPY package.json yarn.lock .yarnrc.yml ./
COPY .yarn/releases .yarn/releases
RUN yarn install
COPY . .
RUN yarn build
EXPOSE 9000
