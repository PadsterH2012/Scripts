# https://serverfault.com/questions/262809/correct-way-to-give-elevated-privileges-to-mono-application?rq=1
FROM mono:3.12

ADD Release /usr/local/bin/CoiniumServ/build/release

EXPOSE 8081

CMD ["/bin/bash"]

CMD ["mono", "--debug /usr/local/bin/CoiniumServ/build/release/CoiniumServ.exe"]
