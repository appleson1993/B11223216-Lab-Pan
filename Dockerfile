# Build Stage
FROM node:20-alpine

WORKDIR /app

# 複製 package.json 和 package-lock.json（如果存在）
COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json

# 安裝依賴
RUN npm install

# 複製剩餘的應用源代碼
COPY . .

# 容器啟動時執行的命令
CMD ["npm", "run", "test"]
