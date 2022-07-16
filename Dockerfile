FROM strapi/base
WORKDIR /app
COPY ./package.json ./
RUN npm install
COPY . .
ENV NODE_ENV production
RUN npm run build
EXPOSE 80
CMD ["npm", "start"]