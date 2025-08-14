FROM rigon/sharelatex-full

RUN apt-get update && apt-get install biber -y

COPY \
  entrypoint.sh \
  /root/

ENTRYPOINT ["/root/entrypoint.sh"]
