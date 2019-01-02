# goblog
Building Microservices: Serving JSON over HTTP for inter-service or external communication between services.


### What happen on this part?

##### Consuming service discovery Information
1. Scaling and load-balancing with Docker Swarm
    - for service discovery & server-side load-balancing

2. Bring out the quotes
    -	to showcase how transparent the service discovery and load-balancing becomes when the only thing we need to know about the service we’re calling is its logical service name.
    -	Utilize a HTTP-specific mocking framework that intercepts outgoing requests for us and returns a pre-determined answer - **gock**. 
        ```go get -u gopkg.in/h2non/gock.v1```




# Credit
Callista Enterprise - [Blog Series - Building Microservices](http://callistaenterprise.se/blogg/teknik/2015/05/20/blog-series-building-microservices/).