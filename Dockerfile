#FROM gcr.io/google_containers/volume-nfs:0.8

FROM centos:latest
MAINTAINER "John S. Lutz <jlutz@broadiq.com>"




# Install nfs-utils
RUN yum -y install /usr/bin/ps nfs-utils && yum clean all

# Install java 8
RUN yum -y install java-1.8.0-openjdk

# Copy entrypoint
ADD run_nfs.sh /usr/local/bin/run_nfs.sh

ADD NfsManager-0.0.1-SNAPSHOT.jar /

# Create exports dir
RUN mkdir -p /exports	\
 && chmod +x /usr/local/bin/run_nfs.sh

RUN mkdir -p /tmp-briq 


# Export NFS Ports
EXPOSE 20048/tcp 2049/tcp 111/tcp 8077

# Expose volume
VOLUME /exports

# Launch entrypoint
ENTRYPOINT ["/usr/local/bin/run_nfs.sh"]

CMD ["/exports"]
