# Create results directory if it doesn't exist
New-Item -ItemType Directory -Force -Path "results" | Out-Null

# Clean up existing results
Remove-Item -Path "results\*" -Recurse -Force -ErrorAction SilentlyContinue

# Build the Docker image
docker build -t jmeter-test .

# Run JMeter test in Docker
docker run --rm `
    -v "${PWD}/results:/test/results" `
    jmeter-test `
    -n -t /test/k6-api-test-plan.jmx `
    -l /test/results/results.jtl `
    -j /test/results/jmeter.log `
    -e -o /test/results/dashboard
