# resiliency-testing

This sample suite of integration tests aims to demo the use of the [Karate framework](https://github.com/intuit/karate) and [ToxiProxy](https://github.com/Shopify/toxiproxy) to automate resiliency testing.

All the failure scenarios involve 2 services and are simulated using [ToxiProxy](https://github.com/Shopify/toxiproxy), deployed using the dedicated K8s deployment, [ResiProxy](https://github.com/marqub/resiproxy)

The services are deployed in k8s using the provided helm chart in the sample [go-service repository](https://github.com/marqub/go-service)

Only a single instance of each services is deployed: the goal being to simulate consistently the failure scenarios.

**Before** deploying these services, [ResiProxy](https://github.com/marqub/resiproxy) must have been deployed using the helm chart provided in the repository.

THE COMPLETE DEPLOYMENT INFO ARE AVAILABLE IN THIS MEDIUM POST: 
Once the services have been deployed in a K8s cluster, the tests can be run from a local env using:

    gradlew test

The report is available in `build/surefire-reports`
