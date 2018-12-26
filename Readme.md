# goblog
Code samples for the Go microservice blog series [[here](http://callistaenterprise.se/blogg/teknik/2015/05/20/blog-series-building-microservices/)].


### What happen on this part?

##### Testing and mocking with GoConvey.
1. Unit testing with GoConvey
    - Install: ```go get "github.com/smartystreets/goconvey/convey"```.
    - Create **handlers_test.go** in **/service**

2. Mock the client we’re using to access the BoltDB using [testify](https://github.com/stretchr/testify).
    - Install testify : ```go get "github.com/stretchr/testify```
    - Create **mockclient.go** in **/dbclient**
3. Run test by moving to the root “accountservice” folder and type: ```go test ./...```.
    >```./…``` go test to run all tests in the current folder and all subfolders.