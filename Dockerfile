FROM qnib/alpn-go-dev

RUN apk update && \
    apk add py-pip gcc
RUN apk add python-dev 
RUN apk add g++ gmp-dev mpfr-dev
RUN apk add py-configobj libusb
RUN apk add uwsgi-python
RUN apk add glib-dev
RUN pip install --upgrade pip
RUN apk add libzmq zeromq-dev
RUN pip install ipython[notebook] 
RUN go get github.com/takluyver/igo && \
    mkdir -p ~/.ipython/kernels/igo && \
    cp -r $GOPATH/src/github.com/takluyver/igo/kernel/* ~/.ipython/kernels/igo
