# imagen de ubuntu
FROM ubuntu:16.04
# support
MAINTAINER eloypripan <https://github.com/Eloypripan/>
# ejecutar:
#RUN -it ubuntu bash
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install git python3 python3-pip screen wget
RUN git clone https://github.com/eternnoir/pyTelegramBotAPI
RUN git clone https://github.com/azzorini/pingueinstein
RUN ls
RUN cd pyTelegramBotAPI
RUN python3 setup.py install
RUN cd ..
RUN cd pingueinstein 
RUN wget https://sites.google.com/site/apuntesfisicaugr/TOKEN.txt
RUN cd ..
RUN pip3 install pillow sympy

# Expose the container's network port: 25565 during runtime.
EXPOSE 25565

#Automatically start 
CMD bash PingueReset
#CMD bash ~/pingueinstein/PingueReset

