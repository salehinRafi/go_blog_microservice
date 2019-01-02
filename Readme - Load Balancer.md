# Load Balancer
A load balancer is a piece of hardware (or virtual hardware) that acts like a reverse proxy to distribute network and/or application traffic across different servers. A load balancer is used to improve the concurrent user capacity and overall reliability of applications.

### Two types of Load-Balancers
1. Client-side
    -  Client itself will decide on the server it need to forward the request. How it work is very simple: Client holds the list of server IPs that It can deliver the requests. Client select an IP from the list randomly and forward the request to the server.
    -  Some advantages:
        > Load-balancing is resilience, decentralization and no central bottlenecks since each service consumer keeps its own registry of producer endpoints.

    - Some drawbacks:
        > Higher internal service complexity and risk of local registries containing stale entries.

2. Server-side
    -  A Server side load balancer sits between the client and the server farm accepting incoming network and application traffic and distributing the traffic across multiple backend servers using various methods.
    -  Some advantages:
        > Simplicity. The load-balancer and service discovery mechanism is typically built into our container orchestrator and you don’t have to care about installing or managing those components. Also, the client (e.g. our service) doesn’t have to be aware of the service registry - the load-balancer takes care of that for us.

    - Some drawbacks:
        > Decreases resilience and the load-balancer could theoretically become a performance bottleneck.