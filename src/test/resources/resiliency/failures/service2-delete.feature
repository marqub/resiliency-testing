@Ignore
Feature: Delete service2 proxy

Scenario:
* def validStatus = [204, 404]

Given url 'http://resiproxy.resiliency-testing.com/proxies/proxy_service2'
When method delete
Then match validStatus contains responseStatus
