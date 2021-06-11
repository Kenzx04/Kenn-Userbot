# KENN USERBOT
FROM koala21/kampangbot:buster

#
# KENN
#
RUN git clone -b Lord-Userbot https://github.com/Kenzx04/Kenn-Userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/Kenzx04/Kenn-Userbot/Kenn-Userbot/requirements.txt

CMD ["python3","-m","userbot"]
