![build workflow](https://github.com/raunakshrivastava7/azuredevopsnew/actions/workflows/pythonapp.yml/badge.svg)

# Overview

This project demonstrates a CI/CD pipeline to automatically integrate and deploy a Flask based web application using Gihub Actions and Azure Devops features.
The project has a Flask based web application to predict housing prices in Boston using machine learning algorithms. The Web application code is maintained in a Github repository. GitHub Actions is integrated with the repository to automatically build and test the changes pushed to the repoository. The repository is cloned in Azure and the web app is created in Azure. There is and Azure Devops project with Agent pool and Pipeline linked with the Github repository to enable Continuous deployment of the web application.


## Project Plan

Trello Link : https://trello.com/b/RZyeVL2j/udacityazuredevopsproject

Link to a spreadsheet that includes the original and final project plan : https://docs.google.com/spreadsheets/d/1g1Ow5obzBnpcr1a2J7A1gY5bRy2V1mKvbq2ytTphvyE/edit?usp=sharing


## Instructions

* Architectural Diagram:

![alt text](https://github.com/raunakshrivastava7/azuredevopsnew/blob/main/screenshots/Archdiagram2.png)

* Instructions for running the Python project:

1. Create 'Azuredevopsnew' repository in your Github account. Integrate GitHub Actions with the repository. Whenever an update happens in the repository code, the GitHub Actions workflow runs, builds the updated code and tests it.
![alt text](https://github.com/raunakshrivastava7/azuredevopsnew/blob/main/screenshots/GithubActionWorkflow.png)

![alt text](https://github.com/raunakshrivastava7/azuredevopsnew/blob/main/screenshots/GithubActionsWorkflow.png)

2. Login to Azure Bash shell and create a SSH key. Define the SSH key in Github profile settings.
3. Clone the Azuredevopsnew repository in Azure shell using this command : git clone git@github.com:raunakshrivastava7/azuredevopsnew.git

![alt text](https://github.com/raunakshrivastava7/azuredevopsnew/blob/main/screenshots/git%20clone.png)

4. Run the command in Azure to setup the environment for web application : make all
![alt text](https://github.com/raunakshrivastava7/azuredevopsnew/blob/main/screenshots/successful%20make.png)

5. Create the web application using this command : az webapp up --name flaskcicdproject4 --resource-group Azuredevops --runtime "PYTHON:3.7"

6. Open https://flaskcicdproject4.azurewebsites.net/ to verify if the app is running successfully.
![alt text](https://github.com/raunakshrivastava7/azuredevopsnew/blob/main/screenshots/webapp_home.png)


7. Login to dev.azure.com and create a public project 'Flask-ML-Deploy'. In Devops portal, create Personal Access Token and Service Connection.

8. In Flask-ML-Deploy project, create a new Agent pool 'newpool'.
![alt text](https://github.com/raunakshrivastava7/azuredevopsnew/blob/main/screenshots/agent_pool.png)


9. Create a new VM in Azure portal and setup the environment.
![alt text](https://github.com/raunakshrivastava7/azuredevopsnew/blob/main/screenshots/agent_pool_vm2.png)

10. Create Pipeline in Azure Devops portal and manually run the pipeline to verify if it is running successfully.
![alt text](https://github.com/raunakshrivastava7/azuredevopsnew/blob/main/screenshots/azure_pipeline_manual_run.png)
![alt text](https://github.com/raunakshrivastava7/azuredevopsnew/blob/main/screenshots/azure_pipeline_build.png)
![alt text](https://github.com/raunakshrivastava7/azuredevopsnew/blob/main/screenshots/azure_pipeline_deploy.png)


11. Trigger the Azure Pipelines automatic running by updating the code in Azuredevopsnew repository.
![alt text](https://github.com/raunakshrivastava7/azuredevopsnew/blob/main/screenshots/azure_pipeline_run_by_github_action.png)


12. Successful prediction from deployed flask app in Azure Cloud Shell. Run make_predict_azure_app.sh file to get the prediction result.
![alt text](https://github.com/raunakshrivastava7/azuredevopsnew/blob/main/screenshots/webapp_correct_prediction.png)

13. Get the output of streamed log files from deployed application using this command : az webapp log tail --name flaskcicdproject4 --resource-group Azuredevops --ids /subscriptions/0c7436df-9359-4a04-b572-96ab6d89334c/resourceGroups/Azuredevops/providers/Microsoft.Web/sites/flaskcicdproject4

![alt text](https://github.com/raunakshrivastava7/azuredevopsnew/blob/main/screenshots/webapp_log2.png)


14. Locust test output :
![alt text](https://github.com/raunakshrivastava7/azuredevopsnew/blob/main/screenshots/Locust_log4.png)

> 

## Enhancements

The project can be improved further by deploying the web app to a Kubernetes cluster so that it can be easily scaled and maintained as per requirement. 
Another approach to improve the project is to have separate Development, QA and Production environments. The Development environment should be used for development of the app. After development, the app should be deployed in QA envitonment for QA, testing and fixes. Finally, the bug-free app should be deployed in Production environment.

## Demo 

* Youtube link of project demo : https://youtu.be/tOXrh8WHMbE


