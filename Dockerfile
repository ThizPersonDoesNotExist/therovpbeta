FROM fusuf/whatsasena:latest

RUN git clone https://github.com/ThizPersonDoesNotExist/therovpbeta /root/therovpbeta
WORKDIR /root/therovpbeta/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
