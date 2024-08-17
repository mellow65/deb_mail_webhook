import os
from discord_webhook import DiscordWebhook

# Replace with your Discord webhook URL
WEBHOOK_URL = "https://discord.com/api/webhooks/XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

def check_folder_and_notify(folder_path):
    if os.path.exists(folder_path) and os.path.isdir(folder_path):
        if len(os.listdir(folder_path)) > 0:
            # If there are files, send a Discord webhook message
            send_discord_notification("You have an email in container 1XX.")    #fill in container number   

def send_discord_notification(message):
    
    webhook = DiscordWebhook(url=WEBHOOK_URL, content=message)
    response = webhook.execute()

if __name__ == "__main__":
    folder_path = "/var/mail"                    #this should be the default mail location, change if needed. 
    check_folder_and_notify(folder_path)
 
