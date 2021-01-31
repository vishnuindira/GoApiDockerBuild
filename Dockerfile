FROM golang
MAINTAINER vishnu prasad vv <https://github.com/vishnuindira>
# get the code from github
RUN go get github.com/vishnuindira/GoRestFulApi
# create a working directory
WORKDIR /go/src/app
#copy files
RUN cp  /go/src/github.com/vishnuindira/GoRestFulApi/main.go /go/src/app
#gooo build
RUN go build /go/src/app/main.go
# run the binary
CMD ["/go/src/app/main"]
