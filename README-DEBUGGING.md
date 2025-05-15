# Debugging the Development Server

This document provides instructions for debugging and fixing common issues with the development server.

## Common Issues and Solutions

### 1. "shopify: not found" Error

**Symptoms**: When running `npm run dev`, you see `sh: 1: shopify: not found`.

**Solution**: Install the Shopify CLI globally:

```shell
npm install -g @shopify/cli @shopify/app
```

### 2. Server Not Responding

**Symptoms**: The dev server process is running, but the server is not responding.

**Solutions**:

**Option 1**: Restart the dev server:

```shell
# Stop the current process with Ctrl+C, then run:
npm run dev
```

**Option 2**: Try the local development server that doesn't require Shopify authentication:

```shell
npm run dev:local
```

### 3. Authentication Issues

**Symptoms**: The server is stuck at the Shopify authentication stage.

**Solution**: If you can't complete the authentication flow (for example, in a CI/CD environment), use the local development mode:

```shell
npm run dev:local
```

### 4. Environment Variables

The following environment variables are important for development:

- `SHOPIFY_APP_URL`: The URL where your app is hosted (defaults to http://localhost:3000)
- `PORT`: The port for the server (defaults to 3000)
- `FRONTEND_PORT`: The port for the frontend (defaults to 8081)

You can set these manually or use the dev:local script which sets them for you.

## Troubleshooting Steps

1. **Check logs**: Run `npm run dev` and watch for specific error messages
2. **Verify dependencies**: Ensure all dependencies are installed (`npm install`)
3. **Check Prisma**: Make sure Prisma is generating correctly (`npx prisma generate`)
4. **Environment variables**: Verify environment variables are set correctly
5. **Alternative approach**: Try the local development mode (`npm run dev:local`)

For additional help, refer to the [Shopify CLI documentation](https://shopify.dev/docs/apps/tools/cli) or the [Remix documentation](https://remix.run/docs).
