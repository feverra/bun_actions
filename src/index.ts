const server = Bun.serve({
    port: 3000,
    fetch() {
        return new Response("Hello from Bun + Docker Compose");
    },
});

console.log(`🚀 running on http://localhost:${server.port}`);
console.log(`🚀 running on http://localhost:${server.port}`);
