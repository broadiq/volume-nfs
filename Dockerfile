FROM gcr.io/google_containers/volume-nfs:0.8


ADD run_nfs_briq.sh /usr/local/bin/


RUN chmod +x /usr/local/bin/run_nfs_briq.sh


#ENTRYPOINT ["/usr/local/bin/run_nfs_briq.sh"]
