FROM gcr.io/google_containers/volume-nfs:0.8


ADD init.sh .

RUN chmond +x init.sh

RUN ./init.sh
