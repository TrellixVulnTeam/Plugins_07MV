FROM teamvaders/warbot:latest

RUN git clone https://github.com/ayamkentaki/Plugins.git /root/warbot

WORKDIR /root/warbot

RUN pip3 install -U -r requirements.txt

ENV PATH="/home/warbot/bin:$PATH"

CMD ["python3", "-m", "warbot"]
