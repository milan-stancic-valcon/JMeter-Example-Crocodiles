# JMeter Performance Testing with Docker and GitHub Actions

This repository demonstrates how to run JMeter performance tests using Docker and GitHub Actions, with automated result publishing to GitHub Pages.

## 🚀 Quick Start

### Prerequisites
- Docker Desktop
- PowerShell
- Git

### Local Execution
1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd JMeter-Example
   ```

2. Run the tests:
   ```powershell
   .\run-test.ps1
   ```

3. View results in `results/dashboard/index.html`

## 📁 Project Structure

```
JMeter-Example/
├── .github/
│   └── workflows/
│       └── jmeter-test.yml    # GitHub Actions workflow
├── Dockerfile                 # Docker configuration
├── run-test.ps1              # Local test runner script
└── k6-api-test-plan.jmx     # JMeter test plan
```

## 🔄 CI/CD Pipeline

The GitHub Actions workflow automatically:
1. Builds the JMeter Docker image
2. Executes the test plan
3. Publishes results to GitHub Pages
4. Archives detailed test results

### Viewing Results

- **Dashboard**: Visit [https://<username>.github.io/<repository>/](https://<username>.github.io/<repository>/)
- **Detailed Results**: Download from GitHub Actions artifacts

## 🛠️ Configuration

### Docker Setup
The `Dockerfile` uses `justb4/jmeter:5.5` as the base image and includes:
- JMeter installation
- Test plan copy
- Working directory setup

### Test Execution
The `run-test.ps1` script:
- Creates results directory
- Builds Docker image
- Runs JMeter tests
- Generates HTML dashboard

### GitHub Actions
The workflow (`jmeter-test.yml`):
- Triggers on push, PR, and manual activation
- Configures GitHub Pages
- Runs tests in Docker
- Publishes results

## 📊 Alternative Visualization Options

1. **Grafana + InfluxDB**
   - Real-time visualization
   - Custom dashboards
   - Alerting capabilities

2. **GitLab CI/CD**
   - Native performance metrics
   - Test trend analysis
   - Merge request comparisons

3. **Azure DevOps**
   - Cloud-based load generation
   - Built-in analytics
   - Azure Monitor integration

4. **k6 Cloud**
   - Modern cloud platform
   - Real-time results
   - Team collaboration features

5. **BlazeMeter**
   - JMeter compatibility
   - Cloud-based execution
   - Multiple geo-locations

6. **ELK Stack**
   - Powerful search
   - Custom visualizations
   - Scalable storage

7. **Prometheus + Grafana**
   - Time-series data
   - Alert management
   - High availability

8. **Jenkins Performance Plugin**
   - CI/CD integration
   - Trend analysis
   - Build pass/fail criteria

## 📝 Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## 📜 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🤝 Support

For support, please open an issue in the GitHub repository.
