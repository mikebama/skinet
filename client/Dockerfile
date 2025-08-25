FROM node:20-alpine AS build
WORKDIR /app

# copy all source files then install deps conditionally (keeps Dockerfile simple)
COPY . .
RUN if [ -f package.json ]; then npm ci --silent; fi

# build the Angular app if a build script exists
RUN if [ -f package.json ]; then npm run build -- --outputPath=dist || true; fi

# FROM node:20-alpine
# WORKDIR /app
# COPY --from=build /app/dist ./dist

# # Install a tiny static server only if there's a build output
# RUN npm install -g serve --silent || true
# EXPOSE 80
CMD ["sh", "-c", "if [ -d dist ]; then serve -s dist -l 80; else echo 'No build found'; tail -f /dev/null; fi"]
