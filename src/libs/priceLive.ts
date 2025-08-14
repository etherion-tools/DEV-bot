import { ChatInputCommandInteraction} from "discord.js";
import prisma from "../utils/prisma";
import { getDevPrice } from "../utils/uniswapPrice";

export default async function priceLive(interaction: ChatInputCommandInteraction){
    try{
        await interaction.deferReply();

    const liveprice = await getDevPrice();

    if(!liveprice){
        return await interaction.editReply("Failed to fetch live price");
    }

    await interaction.editReply(
        `Live DEV Price: ${liveprice.toFixed(5)}`
    );

    const savePrice = await prisma.tokenPrice.create({
        data:{
            price: liveprice,
            tokenId: "scout-protocol-token",
        }
    });
    return savePrice;
} catch (error) {
    console.log(error)
    await interaction.editReply(
        "Sorry, there was an error fetching the live price. Please try again later."
    );
  }
}