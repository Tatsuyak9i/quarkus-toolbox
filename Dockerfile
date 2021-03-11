  
FROM mandrel-20-rhel8:latest
USER root

RUN \ 
cd /opt && \
curl https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz -o apache-maven.tar.gz && \
tar -xzf ./apache-maven.tar.gz && \
rm -f ./apache-maven.tar.gz

RUN \
curl https://downloads-openshift-console.apps.ocp1.rh.axies.org/amd64/linux/oc.tar -o oc.tar && \
tar xf ./oc.tar && \
mv ./oc /usr/bin && \
chgrp 0 /usr/bin/oc && \
chmod g=u /usr/bin/oc

RUN chgrp -R 0 apache-maven-3.6.3 && \
    chmod -R g=u apache-maven-3.6.3 &&
ENV PATH=/opt/apache-maven-3.6.3/bin:$PATH

USER 1001
