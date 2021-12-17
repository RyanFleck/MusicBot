# Discord.py Music Bot

A simple music bot written in discord.py using youtube-dl. Use this as an example or a base for your own bot and extend it as you want. 

Adapted from this [gist](https://gist.github.com/vbe0201/ade9b80f2d3b64643d854938d40a0a2d), Copyright (c) 2019 Valentin B.

### Pre-Setup

If you don't already have a discord bot, click [here](https://discordapp.com/developers/), accept any prompts then click "New Application" at the top right of the screen.  Enter the name of your bot then click accept.  Click on Bot from the panel from the left, then click "Add Bot."  When the prompt appears, click "Yes, do it!" 
![Left panel](https://i.imgur.com/hECJYWK.png)

Then, click copy under token to get your bot's token. Your bot's icon can also be changed by uploading an image.

![Bot token area](https://i.imgur.com/da0ktMC.png)

### Setup

Create a file named `.env`

Add `TOKEN=<your bot token>`

Your .env file should look something like this:

```
TOKEN=<Bot token>
```

To run locally use:

```
env $(cat .env) poetry run python main.py
```


### Adding to a server

First, use this link:

<https://discord.com/api/oauth2/authorize?client_id=920007238062583848&permissions=380107803712&scope=bot>

On your backend, run:

```sh
# Build and Run
env $(cat .env) docker-compose build 
docker-compose up -d --force-recreate

# Enter Container
docker exec -it musicbot-2 /bin/bash
```
