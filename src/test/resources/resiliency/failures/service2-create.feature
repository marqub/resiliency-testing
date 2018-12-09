@Ignore
Feature: Create service2 proxy: does not fail if the proxy already exists

Scenario:
* def validStatus = [201, 409]
* def proxy = 
"""
{
    "name": "proxy_service2",
    "listen": "[::]:8081",
    "upstream": "service2-go-service.resiliency-testing:8080",
    "enabled": true
}
"""
Given url 'http://resiproxy.resiliency-testing.com/proxies'
And request proxy
When method post
Then match validStatus contains responseStatus
