## Deploying Your Resource Group

Remember to update your bicepparam parameters, with a suitable name.

To deploy your keyvault, run the following command from this folder:

```bash
az deployment group create --location eastus --parameters main.bicepparam --what-if
````

### Step 1: Preview the Deployment

On your first run, include the `--what-if` flag. This will show you a preview of what Azure will create or change without actually deploying anything.

### Step 2: Confirm the Changes

Review the output carefully and make sure the resources to be deployed are correct.

### Step 3: Deploy the Resources

Once you're satisfied, remove the `--what-if` flag and run the command again to execute the deployment:

```bash
az deployment group create --location eastus --parameters main.bicepparam
```