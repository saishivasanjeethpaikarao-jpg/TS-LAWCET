# TS LAWCET - Law Entrance Exam Prep Platform
# Clean Next.js deployment

FROM node:20-alpine

WORKDIR /app

COPY package.json pnpm-lock.yaml* yarn.lock* package-lock.json* ./

RUN npm install -g pnpm@latest && pnpm install --frozen-lockfile || npm ci

COPY . .

RUN pnpm build || npm run build

EXPOSE 3000

CMD ["pnpm", "start"]

