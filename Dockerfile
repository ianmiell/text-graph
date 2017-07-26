FROM ubuntu
RUN apt-get update -y
RUN apt-get install -y golang perl cpanminus graphviz git
RUN cpan Graph::Easy
RUN mkdir -p /root/go
ENV GOPATH /root/go
# See https://github.com/ianmiell/rel
RUN go get github.com/fiatjaf/rel
# See https://stackoverflow.com/questions/3211801/graphviz-and-ascii-output
ENV PATH ${PATH}:/root/go/bin
CMD bash

