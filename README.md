# Trance: A Discord Music Bot

Source adapted from this [gist](https://gist.github.com/vbe0201/ade9b80f2d3b64643d854938d40a0a2d), Copyright (c) 2019 Valentin B.

[Add to your server!](https://discord.com/api/oauth2/authorize?client_id=920007238062583848&permissions=377960320064&scope=bot)
Email me [here](https://ryanfleck.ca/about) if you want to use it on a large server.

Remember to adhere to a [code of ethics.](https://www.sqlite.org/codeofethics.html)

<br />

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

<https://discord.com/api/oauth2/authorize?client_id=920007238062583848&permissions=377960320064&scope=bot>

On your backend, run:

```sh
# Build and Run
env $(cat .env) docker-compose build 
docker-compose up -d --force-recreate

# Enter Container
docker exec -it musicbot-2 /bin/bash
```
