#CHERRYTREE DOCKERFILE

FROM python:2.7-slim-stretch

# Install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
                wget \
                tk-dev \
                python-gtk2 \
                python-gtksourceview2 \
                python-dbus \
                python-enchant \
                python-chardet \
                p7zip-full \
                x11-apps \
                xauth

# Download and install CherryTree
RUN mkdir /opt/ct
RUN wget http://www.giuspen.com/software/cherrytree_0.38.8-0_all.deb -O /opt/ct/install
RUN dpkg -i /opt/ct/install

CMD ["cherrytree"]
