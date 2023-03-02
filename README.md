# LeaderLidar
LeaderLidar is a car safety vendor. Their primary product, LeaderLidar, is comprised of two packages:

* telemetry - a package that integrates with car metrics and formats them into an internal events protocol.
* analytics - a package that accepts events and decides on actions such as "beep" or "brake".
* product - a package that includes the final product, compiled and ready for release.
* e2e-testing - a package that includes end-to-end tests that are run on the final product to ensure its functionality.

The company releases their product as a zip file. The product can be found in the product package, which is created by combining the telemetry and analytics packages. The e2e-testing package is used to test the final product before release. The tests are also run on the individual telemetry and analytics packages during the development process.

The codebase is versioned and released according to a specific pattern, with each version having a specific branch, and release process. The continuous integration and release processes are automated, and the final product is published to an artifact repository for distribution.

## Requirements
1. Each directory is a separate GitLab repository.
2. The artifact store is Artifactory.
3. GitLab, Jenkins, and Artifactory were deployed using Docker containers (see Dockerfile & docker-compose.yml).
4. Use an MBP job in Jenkins.
5. Configuration of those containers will be required, so I recommend looking at the Jenkinsfiles to see which changes (URL in 'curl' command, for example) and configuration (plugins, global config, and tool config in 'Manage Jenkins', etc.) are needed.
