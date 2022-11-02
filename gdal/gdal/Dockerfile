FROM ubuntu:22.04
 
RUN apt-get update; exit 0

#安装依赖
RUN apt update; exit 0
RUN apt install --no-install-recommends -y swig ant libproj-dev g++ make && apt autoremove

#安装jdk
COPY jdk-8u221-linux-x64.tar.gz /opt
RUN tar -zxvf /opt/jdk-8u221-linux-x64.tar.gz -C /usr/local && rm /opt/jdk-8u221-linux-x64.tar.gz

ENV JAVA_HOME /usr/local/jdk1.8.0_221
ENV JRE_HOME ${JAVA_HOME}/jre
ENV CLASSPATH .:${JAVA_HOME}/lib:${JRE_HOME}/lib
ENV PATH ${JAVA_HOME}/bin:$PATH

RUN export JAVA_HOME && export JRE_HOME && export CLASSPATH && export PATH

#拷贝源码包并解压
COPY gdal-3.5.2.tar.gz /opt

RUN mkdir /opt/gdal/

#安装gdal
RUN cd /opt && tar -zxvf gdal-3.5.2.tar.gz && cd /opt/gdal-3.5.2 && ./configure --prefix=/opt/gdal && make -j4 && make install && cd /opt/gdal-3.5.2/swig/java && make && cp /opt/gdal-3.5.2/swig/java/libgdalalljni.so /opt/gdal && rm -rf /opt/gdal-3.5.2 /opt/gdal-3.5.2.tar.gz