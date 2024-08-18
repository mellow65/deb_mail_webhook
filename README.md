End goal is to set up a discord webhook notification from your instance of Debian 12.  Current goal is to search the email folder for something new a couple times a day, and if there is something there it will send you a discord message letting you know you have an email. 

Always consider it a work in progress as I barely know what I'm doing. 


This has only been tested on Deb 12. 
```bash

curl -o- https://raw.githubusercontent.com/mellow65/deb_mail_webhook/main/deb_email.sh | bash

wget -qO- https://raw.githubusercontent.com/mellow65/deb_mail_webhook/main/deb_email.sh | bash


```



Test the python script
```bash

curl -o- https://raw.githubusercontent.com/mellow65/deb_mail_webhook/main/test_discord.sh | bash

wget -qO- https://raw.githubusercontent.com/mellow65/deb_mail_webhook/main/test_discord.sh | bash

```
