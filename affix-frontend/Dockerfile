FROM node:16-alpine

WORKDIR /usr/src/app

COPY ./package.json ./
COPY ./yarn.lock ./

RUN yarn install

COPY . .

ENV REACT_APP_BASE_URL=https://api.affix-tech.com/api

EXPOSE 3000

CMD [ "yarn", "start" ]

# RUN mkdir -p /usr/src/app
# WORKDIR /usr/src/app
# COPY package.json .
# COPY yarn.lock .
# RUN yarn install --ignore-platform
# COPY . .
# RUN yarn build

# # 2nd Stage
# FROM nginx:1.14.2-alpine
# COPY --from=0 /usr/src/app/build /usr/share/nginx/html
# WORKDIR /usr/share/nginx/html
# CMD ["nginx", "-g", "daemon off;"]