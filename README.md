secretlounge-ng
---------------
Rewrite of [secretlounge](https://github.com/6697/secretlounge), a bot to make an anonymous group chat on Telegram.

## Setup
```
$ pip3 install -r requirements.txt
$ cp -r config.example/ config/
$ cp config/config.yaml.example config/config.yaml
Edit config/config.yaml with your favorite text editor.
$ ./secretlounge-ng
```

## Docker Setup
(Install docker first)
```
$ docker build -t secretlounge-ng .
$ cp -r config.example/ config/
$ cp config/config.yaml.example config/config.yaml
Edit config/config.yaml with your favorite text editor.
$ docker run -d -v $PWD/config/:/app/config secretlounge-ng
```


## @BotFather Setup
Message [@BotFather](https://t.me/BotFather) to configure your bot as follows:

* `/setprivacy`: enabled
* `/setjoingroups`: disabled
* `/setcommands`: paste the command list below

### Command list
```
start - Join the chat (start receiving messages)
stop - Leave the chat (stop receiving messages)
users - Find out how many users are in the chat
info - Get info about your account
sign - Sign a message with your username
s - Alias of sign
tsign - Sign a message with your tripcode
t - Alias of tsign
motd - Show the welcome message
version - Get version & source code of this bot
modhelp - Show commands available to moderators
adminhelp - Show commands available to admins
toggledebug - Toggle debug mode (sends back all messages to you)
togglekarma - Toggle karma notifications
tripcode - Show or set a tripcode for your messages
```
