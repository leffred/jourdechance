# 1. On utilise une image légère de Node.js
FROM node:lts-alpine AS base
WORKDIR /app

# 2. On installe les dépendances
COPY package.json package-lock.json ./
RUN npm install

# 3. On copie tout le code et on construit le site
COPY . .
RUN npm run build

# 4. Configuration finale pour le démarrage
ENV HOST=0.0.0.0
ENV PORT=8080
EXPOSE 8080

# 5. La commande qui lance le site
CMD ["node", "./dist/server/entry.mjs"]