FROM alpine:3.16
RUN apk add --update nodejs npm && npm install zx -g
COPY . . 
RUN ls
ENTRYPOINT [ "/bin/sh", "./entrypoint.sh" ]
