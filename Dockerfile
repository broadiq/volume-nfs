FROM gcr.io/google_containers/volume-nfs:0.8


ADD init.sh .
ADD permissions.sh .

RUN chmod +x init.sh
RUN chmod +x permissions.sh

ENTRYPOINT ["/init.sh"]
