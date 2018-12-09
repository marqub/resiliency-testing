Feature: go-service resiliency tests

Background:
* url 'http://service1.resiliency-testing.com'
* call read('failures/service2-delete.feature')
* call read('failures/service2-create.feature')

Scenario: Retrieve status when service 2 is available

* call read('failures/service2-enable.feature') { enabled: true }

Given path 'status'
When method get
Then status 200
Then match response ==
  """
    {
    "status":"OK",
    "name":"service1",
    "dependencies":[
        {
            "status":"OK",
            "name":"#ignore"
        }
    ]
    }
  """

Scenario: Retrieve status when service 2 is not available

* call read('failures/service2-enable.feature') { enabled: false }

Given path 'status'
When method get
Then status 200
Then match response ==
  """
    {
    "status":"OK",
    "name":"service1",
    "dependencies":[
        {
            "status":"UNKNOWN",
            "name":"#ignore"
        }
    ]
    }
  """

Scenario: Retrieve status when service 2 times out

* call read('failures/service2-timeout.feature')

Given path 'status'
When method get
Then status 200
