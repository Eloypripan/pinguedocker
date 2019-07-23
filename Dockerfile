# imagen de ubuntu
FROM ubuntu:16.04
# support
MAINTAINER eloypripan <https://github.com/Eloypripan/>
# ejecutar:
#RUN -it ubuntu bash
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install git python3 python3-pip screen
RUN git clone https://github.com/eternnoir/pyTelegramBotAPI
RUN git clone https://github.com/azzorini/pingueinstein
#RUN pushd pyTelegramBotAPI
RUN ls
#RUN python3 /pyTelegramBotAPI/setup.py install
RUN cd pyTelegramBotAPI
RUN python3 setup.py install
RUN popd
RUN pip3 install pillow sympy

# Expose the container's network port: 25565 during runtime.
EXPOSE 25565

#Automatically start 
CMD bash PingueReset
#CMD bash ~/pingueinstein/PingueReset

