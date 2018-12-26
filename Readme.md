# goblog
Code samples for the Go microservice blog series [[here](http://callistaenterprise.se/blogg/teknik/2015/05/20/blog-series-building-microservices/)].


### What happen on this part?

##### Embedded database and JSON.
1. Declare an ‘Account’ struct
   - Embedding a key-value store (go get github.com/boltdb/bolt)
   - Seed (n) fake accounts on startup

2. Adding a query Method.
3. Serving the account over http.