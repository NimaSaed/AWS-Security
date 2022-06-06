ELB access log    


|Log Record Fields|Description|
| --- | --- |
|client:port|The IP address and port of the requesting client.|
 |request_processing_time| The total time elapsed, in seconds, from the time the load balancer received the   request until the time it sent it to a target.    |
|   response_processing_time    |   The total time elapsed (in seconds)   from the time the load balancer received the response header from the target   until it started to send the response to the client.     |
|   request    |   The request line from the client   enclosed in double quotes and logged using the following format: HTTP method   + protocol://host:port/uri + HTTP version.    |
|   chosen_cert_arn    |   The ARN of the certificate presented to   the client.    |
