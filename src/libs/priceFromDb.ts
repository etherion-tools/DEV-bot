import {
  ChatInputApplicationCommandData,
  ChatInputCommandInteraction,
} from "discord.js";
import prisma from "../utils/prisma";

export default async function getPriceFromDb(
  interaction: ChatInputCommandInteraction
) {
  try {
    await interaction.deferReply();

    const dbPrice = await prisma.tokenPrice.findFirst({
      where: {
        tokenId: "scout-protocol-token",
      },
      orderBy: {
        timestamp: "desc",
      },
    });

    if (!dbPrice) {
      await interaction.editReply("No price data found in the database.");
    } else {
      await interaction.editReply(
        `Latest DEV Price from DB: $${dbPrice.price.toFixed(5)}`
      );
    }
  } catch (error) {
    await interaction.editReply(
      "Sorry, there was an error fetching the price from the database. Please try again later."
    );
  }
}
