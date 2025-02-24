FROM justb4/jmeter:5.5

COPY k6-api-test-plan.jmx /test/

WORKDIR /test
