# Cloud Run Hello World with Cloud Code

This "Hello World" is a [Cloud Run](https://cloud.google.com/run/docs) service that renders a webpage. The example here renders a little more than what you would use for a vanilla quickstart. Feel free to use the reference [quickstart here](https://cloud.google.com/run/docs/quickstarts/build-and-deploy#java).

----

## Table of Contents

* [VS Code Guide](#vs-code-guide)
    1. [Getting Started](#vs-code-getting-started)
    2. [Running on Cloud Run](#vs-code-running-on-cloud-run)  
* [IntelliJ Guide](#intellij-guide)
    1. [Getting Started](#intellij-getting-started)
    2. [Running on Cloud Run](#intellij-running-on-cloud-run)
* [Service Configuration](#service-configuration)
* [Next steps](#next-steps)

----

## VS Code Guide

### VS Code Getting Started

This sample demonstrates how to use the Cloud Code extension in VS Code.

* [Install Cloud Code for VS Code](https://cloud.google.com/code/docs/vscode/install)
* [Creating a new app](https://cloud.google.com/code/docs/vscode/creating-an-application)
* [Editing YAML files](https://cloud.google.com/code/docs/vscode/yaml-editing)

### VS Code Running on Cloud Run

1. Open the command palette
2. Run `Cloud Code: Deploy to Cloud Run`

## IntelliJ Guide

### IntelliJ Getting Started

This sample demonstrates how to use the Cloud Code extension in IntelliJ.

* [Install Cloud Code for IntelliJ](https://cloud.google.com/code/docs/intellij/install)
* [Creating a new Cloud Run app](https://cloud.google.com/code/docs/intellij/quickstart-cloud-run)

### IntelliJ Running on Cloud Run

1. Enable Cloud Run support on your project.
In the [Console](http://console.cloud.google.com), use the navigation menu to access `APIs and Services` > `Dashboard`.
Click on Cloud Run API within the list of available APIs and click `Enable API`.
2. Choose the automatically created run configuration, `Cloud Run: Deploy` from the Run/Debug
configurations dialog on the top taskbar.
3. Click `Run` run action icon. This brings up the `Edit configuration` window.
4. Set your Google Cloud project ID.
5. Choose a region for your deployment platform.
6. Click `Run`.

## Service Configuration

Configuration for this service uses environment variables.

* **`PORT`** [default: `8080`] The service binds this port. To avoid conflicts, set explicitly this environment variable to an unused value.

## Next Steps

* Read the Cloud Run documentation on [developing your service](https://cloud.google.com/run/docs/developing).
* Follow the [System packages tutorial](https://cloud.google.com/run/docs/tutorials/system-packages) to learn how to use the command-line to build and deploy a more complicated service.

## Optimization

* https://cloud.google.com/run/docs/tips/general#run_tips_global_scope-java
* https://cloud.google.com/run/docs/tips/java

## Workflow

* To skip CI while updating docs include '[skip ci]' or '[ci skip]' in your commit message
* Feature branches either in shared or forked repos can only use alphanumeric and dashes

## Known Issues

* Java/Maven projects fail at times due to connection timeouts from external maven repos
  - Rerun failed build or cache maven packages in artifact registry to improve this scenario
  - We should not have to setup authentication for Maven/Gradle as we are using Cloud Build, but just in case (https://cloud.google.com/artifact-registry/docs/java/authentication)
