FROM ubuntu:22.04
 
COPY server-jre-8u351-linux-x64.tar.gz /opt
RUN tar -zxvf /opt/server-jre-8u351-linux-x64.tar.gz -C /usr/local && rm /opt/server-jre-8u351-linux-x64.tar.gz

ENV JAVA_HOME /usr/local/jdk1.8.0_351
ENV JRE_HOME ${JAVA_HOME}/jre
ENV CLASSPATH .:${JAVA_HOME}/lib:${JRE_HOME}/lib
ENV PATH ${JAVA_HOME}/bin:$PATH

RUN export JAVA_HOME && export JRE_HOME && export CLASSPATH && export PATH

COPY --from=base/gdal:3.5.2  /lib /lib
COPY --from=base/gdal:3.5.2  /opt/gdal /opt/gdal

ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib:/usr/lib:/opt/gdal/lib