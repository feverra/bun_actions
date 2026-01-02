FROM oven/bun:latest

WORKDIR /app

COPY package.json bun.lock ./
RUN bun install --frozen-lockfile

COPY . .

EXPOSE 3000
CMD ["bun", "src/index.ts"]

# HEALTHCHECK --interval=30s --timeout=5s --start-period=5s CMD curl --fail http://localhost:3000/health || exit 1
