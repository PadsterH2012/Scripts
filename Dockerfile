FROM mono:3.12

ADD Release /usr/local/bin/CoiniumServ/build/release

EXPOSE 8081

CMD ["/bin/bash"]

CMD ["mono", "--debug /usr/local/bin/CoiniumServ/build/release/CoiniumServ.exe"]
