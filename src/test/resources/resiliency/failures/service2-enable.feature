@Ignore
Feature: Enable/Disable service2 proxy 

Scenario:
* def enabled = __arg.enabled
* def proxy = 
"""
{
    "name": "proxy_service2",
    "listen": "[::]:8081",
    "upstream": "service2-go-service.resiliency-testing:8080",
    "enabled": "#(enabled)",
}
"""
Given url 'http://resiproxy.resiliency-testing.com/proxies/proxy_service2'
And request proxy
When method post
Then status 200
