# DEV-bot

**Invite the Bot to Your Server:**  
https://discord.com/oauth2/authorize?client_id=932286642209833021  
*Add the DEV-bot to your Discord server.*

**Uniswap DEV Token Page:**  
https://app.uniswap.org/explore/tokens/base/0x047157cffb8841a64db93fd4e29fa3796b78466c  
*Buy DEV tokens here.*

## Setup

1.  Clone the repository.
2.  Install dependencies:
    ```bash
    npm install
    ```
3.  Create a `.env` file in the root and add your environment variables:
    ```env
    DISCORD_TOKEN=YOUR_DISCORD_BOT_TOKEN
    ```

## Development

*   Compile TypeScript:
    ```bash
    npm run build
    ```
*   Run the compiled bot:
    ```bash
    npm start
    ```
*   Run in development mode (uses `ts-node` and `nodemon` for live reload):
    ```bash
    npm run dev
    ```

## Basic Test

With the bot running and invited to a server:

*   `!ping` -> `Pong!` (using default prefix).

## Project Structure

*   `src/`: TypeScript source files (main logic in `src/index.ts`).
*   `dist/`: Compiled JavaScript output (ignored by Git).
*   `package.json`: Project metadata, dependencies, and scripts.
*   `tsconfig.json`: TypeScript compiler options.
*   `.env`: For environment variables (token, prefix - ignored by Git).
*   `.gitignore`: Specifies intentionally untracked files.

## Contributing

1.  Fork the repository.
2.  Create your feature branch (`git checkout -b feature/AmazingFeature`).
3.  Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4.  Push to the branch (`git push origin feature/AmazingFeature`).
5.  Open a Pull Request.

## TODO

- Implement the `/price` command: Display current DEV token price and a Uniswap link.
- Implement the `/volume` command: Display 24-hour trading volume for DEV token.
- Implement the `/linkwallet [wallet_address]` command: Allow users to link their wallets.
- Implement the `/balance` command: Show DEV token balance and USD value for linked wallets.
