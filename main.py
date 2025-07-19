from pyrogram import Client
from config import API_ID, API_HASH, BOT_TOKEN

app = Client(
    name="LBMusicBot",
    api_id=API_ID,
    api_hash=API_HASH,
    bot_token=BOT_TOKEN,
    plugins={"root": "LBMusicPlugins"}  # Update this if you have a different plugin folder
)

if __name__ == "__main__":
    print("🔊 Starting LB Music Bot...")
    app.run()
