FROM centos:centos7.4.1708

RUN curl -LOs https://downloads.globus.org/toolkit/globus-connect-server/globus-connect-server-repo-latest.noarch.rpm && \
    rpm --import https://downloads.globus.org/toolkit/gt6/stable/repo/rpm/RPM-GPG-KEY-Globus && \
    yum -y install globus-connect-server-repo-latest.noarch.rpm

RUN yum clean all && \
    yum update -y && \
    # yum groupinstall "Development Tools" && \
    yum -y install epel-release && \
    yum -y install yum-plugin-priorities && \
    yum -y install globus-connect-server


