# Contributing to DEV-bot

Thank you for your interest in contributing to DEV-bot! 🚀 We're excited to collaborate with you.

DEV-bot is a Discord bot for the Scout Game ecosystem and DEV token community. All contributions, whether big or small, are welcome and appreciated.

## Getting Started

### Prerequisites

- Node.js (version 16 or higher)
- npm
- Git
- Discord account
- Text editor of your choice

### Setup

1. **Fork the repository** on GitHub
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/YOUR_USERNAME/DEV-bot.git
   cd DEV-bot
   ```

3. **Install dependencies**:
   ```bash
   npm install
   ```

4. **Set up environment variables**:
   - Create a `.env` file in the root directory
   - Add your Discord bot token:
     ```
     DISCORD_TOKEN=your_discord_bot_token_here
     ```
   - You can get a bot token from the [Discord Developer Portal](https://discord.com/developers/applications)

5. **Test your setup**:
   ```bash
   npm run dev
   ```

## How to Contribute

### Reporting Issues

- Use GitHub Issues to report bugs or request features
- Provide clear descriptions and steps to reproduce
- Include relevant information about your environment

### Making Changes

1. **Create a new branch** for your feature or fix:
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes** following our coding guidelines below

3. **Test your changes**:
   ```bash
   npm run dev
   ```

4. **Commit your changes**:
   ```bash
   git commit -m "Add: brief description of changes"
   ```

5. **Push to your fork**:
   ```bash
   git push origin feature/your-feature-name
   ```

6. **Open a Pull Request** on GitHub

### Pull Request Guidelines

- Provide a clear title and description
- Reference any related issues
- Keep changes focused and atomic
- Test your changes before submitting

## Coding Guidelines

### Basic Standards

- Write clean, readable TypeScript code
- Use meaningful variable and function names
- Add comments for complex logic
- Follow the existing code style

### Discord Bot Best Practices

- Commands should use explicit invocation (prefix or slash commands)
- Avoid unnecessary mentions in bot responses
- Handle errors gracefully
- Respect Discord API rate limits

### File Structure

- Place new commands in the appropriate directory
- Keep related functionality together
- Update documentation when adding new features

## Areas Where You Can Help

### Current Priorities

- Implement `/linkwallet [wallet_address]` command
- Add `/total-price` command for DEV token pricing
- Improve error handling and user feedback
- Add more comprehensive tests

### Other Ways to Contribute

- Report bugs and suggest improvements
- Improve documentation and comments
- Add new Discord commands
- Enhance CoinGecko API integration

## Getting Help

- Check existing GitHub Issues and discussions
- Join our community Discord server (if available)
- Ask questions in your Pull Request or Issue

## License

By contributing to DEV-bot, you agree that your contributions will be licensed under the GPL-3.0 license.

---

Thanks again for contributing! Every contribution helps make DEV-bot better for the Scout Game community. 🎮
