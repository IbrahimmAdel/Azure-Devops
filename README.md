![](https://github.com/IbrahimmAdel/Banque-Misr-DevOps-Task/blob/master/azure-azurepipeline-project/screenshots/Project.png)
---
## Project Structure
The project is meticulously organized to encompass various phases, each tailored to address specific elements within the infrastructure:

- **Dockerization**: Crafted Dockerfiles for the Flask app , coupled with a Docker Compose file for streamlined local testing.
- **Azure DevOps Pipeline**: Orchestrated a robust CI/CD pipeline using Azure DevOps for continuous integration and deployment of the Flask app on an AKS cluster, while leveraging Azure PostgreSQL for the database.
- **Terraform**: Defined infrastructure components pertinent to Azure, encompassing the creation of Azure Kubernetes Service (AKS), Azure Database for PostgreSQL, and other essential resources.
- **Kubernetes**: Developed Kubernetes manifests tailored for Azure, dictating the deployment specifications for the Flask app and integration with Azure PostgreSQL on the AKS cluster.

---
### Azure DevOps CI/CD Pipeline Setup
Configured an Azure DevOps CI/CD pipeline for streamlined automation.

#### - pipeline file: [azure-pipelines.yml](https://github.com/IbrahimmAdel/Banque-Misr-DevOps-Task/blob/master/azure-azurepipeline-project/azure-pipelines.yml)
#### - Install Terraform cli in Azure DevOps pipeline to run terraform commands [Terraform](https://marketplace.visualstudio.com/items?itemName=ms-devlabs.custom-terraform-tasks)
#### - Service Connections needed in pipeline 
![](https://github.com/IbrahimmAdel/Banque-Misr-DevOps-Task/blob/master/azure-azurepipeline-project/screenshots/project-service-connections.png)
#### `First Stage` Apply Terraform files to build Azure Resource Group, Azure Kubernetes Service 'AKS', and Azure PostgreSQL database
![](https://github.com/IbrahimmAdel/Banque-Misr-DevOps-Task/blob/master/azure-azurepipeline-project/screenshots/created%20resource%20group.png)
#### `Second stage` Build Docker image and push it to DockerHub Repo
![](https://github.com/IbrahimmAdel/Banque-Misr-DevOps-Task/blob/master/azure-azurepipeline-project/screenshots/Docker%20Hub.png)
#### `Last stage` Deploy Kubernetes manifists to the AKS
  ![](https://github.com/IbrahimmAdel/Banque-Misr-DevOps-Task/blob/master/azure-azurepipeline-project/screenshots/AKS-resources.png)
----
## Conclusion
#### This intricate deployment project seamlessly integrates various tools and technologies to establish a robust end-to-end deployment process. By following the comprehensive guide, you have successfully created a resilient pipeline for building, deploying, and managing a Flask web application on an AKS cluster, complemented by Azure PostgreSQL. This project serves as a solid foundation for scaling and refining your DevOps practices in the Azure ecosystem.
