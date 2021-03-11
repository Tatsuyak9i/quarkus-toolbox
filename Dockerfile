  
FROM cloudnative-workspaces-quarkus:2.6
USER root

RUN \ 
cd /tmp && \
wget http://mirror.centos.org/centos/8/PowerTools/x86_64/os/Packages/libstdc++-static-8.3.1-5.1.el8.x86_64.rpm && \
wget http://mirror.centos.org/centos/8/AppStream/x86_64/os/Packages/libstdc++-devel-8.3.1-5.1.el8.x86_64.rpm && \
wget http://mirror.centos.org/centos/8/BaseOS/x86_64/os/Packages/libstdc++-8.3.1-5.1.el8.x86_64.rpm && \
rpm -ivh libstdc* && \
rm *.rpm

USER 1001
