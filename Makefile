build:
	go build PetsPkg 
test:
	go test -v  -coverpkg=./... ./... -coverprofile cover.out 
calculate-coverage:
	go tool cover -func cover.out | grep total | awk '{print substr($$3, 1, length($$3)-1)}'
