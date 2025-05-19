## Environment Setup Guide

Before you can deploy resources using Bicep, you need to set up your development environment.

### ✅ 1. Install Visual Studio Code

Download and install [Visual Studio Code](https://code.visualstudio.com/). This will be your main editor for working with Bicep files.

### ✅ 2. Install the Azure CLI

Install the Azure Command-Line Interface (CLI) to manage resources from the terminal.

- Follow the instructions for your platform: [Install Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
- After installation, run the following command to verify it’s working:

```bash
az --version
````

### ✅ 3. Install the Bicep Extension for Visual Studio Code

Open Visual Studio Code and install the **Bicep** extension:

* Go to the Extensions view (`Ctrl+Shift+X`)
* Search for "Bicep"
* Click **Install** on the official Microsoft Bicep extension

Alternatively, you can install it from this link: [Bicep VS Code Extension](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-bicep)

### ✅ 4. Sign In to Azure

Use the Azure CLI to sign in to your account:

```bash
az login
```

This opens a browser window where you can authenticate with your Azure credentials.


## Important note!

When you select your subscription, you need to select the Workshop subscription!

If you are not sure if you have the right subscription you can use the command

```bash
az account subscription show
```