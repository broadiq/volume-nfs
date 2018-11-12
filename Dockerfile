FROM gcr.io/google_containers/volume-nfs:0.8


ADD init.sh .

RUN chmod +x init.sh


ENTRYPOINT ["/init.sh"]
