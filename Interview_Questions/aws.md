## AWS Instances Types
Therefore, AWS EC2 offers 5 types of instances which are as follows:

General Instances
For applications that require a balance of performance and cost.
E.g email responding systems, where you need a prompt response as well as the it should be cost effective, since it doesn’t require much processing.
Compute Instances
For applications that require a lot of processing from the CPU.
E.g analysis of data from a stream of data, like Twitter stream
Memory Instances
For applications that are heavy in nature, therefore, require a lot of RAM.
E.g when your system needs a lot of applications running in the background i.e multitasking.
Storage Instances
For applications that are huge in size or have a data set that occupies a lot of space.
E.g When your application is of huge size.
GPU Instances
For applications that require some heavy graphics rendering.  
E.g 3D modelling etc.
Now, every instance type has a set of instances which are optimized for different workloads:

General Instances
t2
m4
m3
Compute Instances
c4
c3
Memory Instances
r3
x1
Storage Instances
i2
d2
GPU Instances
g2
## Network ACL(NACL)
A network access control list (ACL) is an optional layer of security for your VPC that acts as a firewall for controlling traffic in and out of one or more subnets. You might set up network ACLs with rules similar to your security groups in order to add an additional layer of security to your VPC
## NAT
You can use a NAT device to enable instances in a private subnet to connect to the internet (for example, for software updates) or other AWS services, but prevent the internet from initiating connections with the instances. A NAT device forwards traffic from the instances in the private subnet to the internet or other AWS services, and then sends the response back to the instances. When traffic goes to the internet, the source IPv4 address is replaced with the NAT device’s address and similarly, when the response traffic goes to those instances, the NAT device translates the address back to those instances’ private IPv4 addresses.
NAT devices are not supported for IPv6 traffic—use an egress-only Internet gateway instead.
## Egress-Only Internet Gateways
An egress-only Internet gateway is a horizontally scaled, redundant, and highly available VPC component that allows outbound communication over IPv6 from instances in your VPC to the Internet, and prevents the Internet from initiating an IPv6 connection with your instances.
## VPC Endpoints
A VPC endpoint enables you to privately connect your VPC to supported AWS services and VPC endpoint services powered by PrivateLink without requiring an internet gateway, NAT device, VPN connection, or AWS Direct Connect connection. Instances in your VPC do not require public IP addresses to communicate with resources in the service. Traffic between your VPC and the other service does not leave the Amazon network.

Endpoints are virtual devices. They are horizontally scaled, redundant, and highly available VPC components that allow communication between instances in your VPC and services without imposing availability risks or bandwidth constraints on your network traffic.
## Peering Connection
To create a VPC peering connection, first create a request to peer with another VPC. You can request a VPC peering connection with another VPC in your account, or with a VPC in a different AWS account. For an inter-region VPC peering connection where the VPCs are in different regions, the request must be made from the region of the requester VPC.

To activate the request, the owner of the accepter VPC must accept the request. For an inter-region VPC peering connection, the request must be accepted in the region of the accepter VPC.

## How will you bind the user session with a specific instance in ELB (Elastic Load Balancer) ?
This can be achieved by enabling Sticky Session.
## Sticky Session
Configure Sticky Sessions for Your Classic Load Balancer
By default, a Classic Load Balancer routes each request independently to the registered instance with the smallest load. However, you can use the sticky session feature (also known as session affinity), which enables the load balancer to bind a user's session to a specific instance. This ensures that all requests from the user during the session are sent to the same instance.

The key to managing sticky sessions is to determine how long your load balancer should consistently route the user's request to the same instance. If your application has its own session cookie, then you can configure Elastic Load Balancing so that the session cookie follows the duration specified by the application's session cookie. If your application does not have its own session cookie, then you can configure Elastic Load Balancing to create a session cookie by specifying your own stickiness duration.

Elastic Load Balancing creates a cookie, named AWSELB, that is used to map the session to the instance.

Requirements

An HTTP/HTTPS load balancer.

At least one healthy instance in each Availability Zone.

## To enable duration-based sticky sessions for a load balancer using the AWS CLI

Use the following create-lb-cookie-stickiness-policy command to create a load balancer-generated cookie stickiness policy with a cookie expiration period of 60 seconds:

```
aws elb set-load-balancer-policies-of-listener --load-balancer-name my-loadbalancer --load-balancer-port 443 --policy-names my-duration-cookie-policy
```
Use the following set-load-balancer-policies-of-listener command to enable session stickiness for the specified load balancer:
```
aws elb set-load-balancer-policies-of-listener --load-balancer-name my-loadbalancer --load-balancer-port 443 --policy-names my-duration-cookie-policy
```
## Elastic IP Addresses
An Elastic IP address is a static IPv4 address designed for dynamic cloud computing. An Elastic IP address is associated with your AWS account. With an Elastic IP address, you can mask the failure of an instance or software by rapidly remapping the address to another instance in your account.

An Elastic IP address is a public IPv4 address, which is reachable from the internet. If your instance does not have a public IPv4 address, you can associate an Elastic IP address with your instance to enable communication with the internet; for example, to connect to your instance from your local computer.

We currently do not support Elastic IP addresses for IPv6.