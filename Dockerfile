FROM lambci/lambda:build-python3.6

ENV PYTHON_VERSION=3.6.1
RUN yum install -y tar xz yum-utils make automake gcc gcc-c++ sqlite sqlite-devel
RUN curl -O https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tar.xz
RUN tar xf Python-${PYTHON_VERSION}.tar.xz
RUN mkdir -p /var/task/python
WORKDIR Python-${PYTHON_VERSION}
RUN ./configure --prefix=/var/task/python
RUN make -j9
RUN make altinstall
# set workdir back
WORKDIR /var/task
