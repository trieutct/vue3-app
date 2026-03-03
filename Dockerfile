# ===== Stage 1: Build =====
FROM node:18-alpine AS build

WORKDIR /app

# Copy file cần thiết trước để cache tốt hơn
COPY package.json yarn.lock ./

# Cài dependencies bằng yarn
RUN yarn install --frozen-lockfile

# Copy toàn bộ source
COPY . .

# Build project
RUN yarn build


# ===== Stage 2: Nginx =====
FROM nginx:alpine

# Copy file build sang nginx
COPY --from=build /app/dist /usr/share/nginx/html

# Copy config nginx cho SPA
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]