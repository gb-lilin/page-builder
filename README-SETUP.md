# Setting up the Development Environment

This document provides instructions for setting up the development environment for this Shopify app.

## Prerequisites

1. **Node.js**: This project requires Node.js version ^18.20 || ^20.10 || >=21.0.0 as specified in package.json.
2. **Shopify CLI**: Required to run the development server.

## Installation Steps

### 1. Install project dependencies

```shell
npm install
```

### 2. Install Shopify CLI globally

The Shopify CLI is required to run the development server. Install it globally:

```shell
npm install -g @shopify/cli @shopify/app
```

### 3. Start the development server

```shell
npm run dev
```

When you run the dev server for the first time, you'll be prompted to authenticate with your Shopify Partner account. Follow the instructions in the terminal to complete this process.

## Troubleshooting

### Error: "shopify: not found"

If you see an error like `sh: 1: shopify: not found` when trying to run the development server, it means the Shopify CLI is not installed or not in your PATH. Follow step 2 above to install it globally.

### Other Issues

Refer to the main README.md file for more troubleshooting tips or the [official Shopify documentation](https://shopify.dev/docs/apps/tools/cli) for more information about the Shopify CLI.
