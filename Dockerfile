FROM unbuntu:16.04
MAINTAINER dragica adamovic <unaadam.github.io>

RUN apt-get update
RUN apt-get install -y python3-pip
RUN pip3 install numpy pandas argparse matplotlib seaborn plotly sklearn
