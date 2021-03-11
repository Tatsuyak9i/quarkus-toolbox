  
FROM quay.io/openshiftlabs/cloudnative-workspaces-quarkus:2.6
USER root

RUN dnf install -y sudo dnf install gcc glibc-devel zlib-devel libstdc++-static  && dnf clean all -y

USER 1001
