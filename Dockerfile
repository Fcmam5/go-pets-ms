FROM golang:1.15.7-alpine3.13

# Set the Current Working Directory inside the container
WORKDIR $GOPATH/src/github.com/codefresh-contrib/pets

# Copy everything from the current directory to the PWD (Present Working Directory) inside the container
COPY . .

# Download all the dependencies
RUN go get -d -v ./...

# Install the package
RUN go install -v ./...

# This container exposes port 9090 to the outside world
EXPOSE 9090

# Run the executable
CMD ["PetsPkg"]
