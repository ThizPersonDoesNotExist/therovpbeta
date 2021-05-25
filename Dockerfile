FROM fusuf/whatsasena:latest

RUN git clone https://github.com/ThizPersonDoesNotExist/rovpbot /root/rovpbot

WORKDIR /root/rovpbot/

ENV TZ=Europe/Istanbul

RUN npm install supervisor -g

RUN yarn install --no-audit

CMD ["node", "bot.js"]
