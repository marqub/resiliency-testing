@Ignore
Feature: Time out service2 proxy    

Scenario: 
* def toxic = 
"""
{
    "name": "service2-timeout-toxic",
    "type": "timeout",
    "stream": "DOWNSTREAM",
    "toxicity": 1.0,
    "attributes": {"timeout":100}
}
"""
Given url 'http://resiproxy.resiliency-testing.com/proxies/proxy_service2/toxics'
And request toxic
When method post
Then status 200 
