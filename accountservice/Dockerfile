FROM iron/base

EXPOSE 3535
ADD accountservice-linux-amd64 /

ADD healthchecker-linux-amd64 /
HEALTHCHECK --interval=3s --timeout=3s CMD ["./healthchecker-linux-amd64", "-port=3535"] || exit 1

ENTRYPOINT ["./accountservice-linux-amd64"]
