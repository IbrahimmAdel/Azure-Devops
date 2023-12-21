### Install azureCLI
```
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
```

### Login to azure 
```az login --user <username> --password <password>   /  az login```

### Get Subscription ID 
```
az account show --query id -o tsv
```

### Create service account 
```
az ad sp create-for-rbac
```
