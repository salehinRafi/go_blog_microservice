# Service Discovery (SD)
Service discovery provides a mechanism which allows automatic detection of services offered by any node in the network. In other words, service discovery is the action of finding a service provider for a requested service. (How services can communicate between each other without having any knowledge about where to find each other)?

> Service discovery (SD) is for use within our internal cluster so our microservices can find another within our system, while DNS typically is for more static and external routing so external parties can have requests routed to your service(s).

> We might have SD without DNS for a service that is not externally accessible. You might have DNS without SD for a system where everything has hardcoded IP addresses that internal applications use to talk to one another.