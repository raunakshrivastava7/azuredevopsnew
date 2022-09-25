# Overview

<TODO: complete this with an overview of your project>

## Project Plan

Trello Link : https://trello.com/invite/b/RZyeVL2j/3509cb54122f1bea307fd9eac2b1768d/udacityazuredevopsproject

Link to a spreadsheet that includes the original and final project plan : https://docs.google.com/spreadsheets/d/1g1Ow5obzBnpcr1a2J7A1gY5bRy2V1mKvbq2ytTphvyE/edit?usp=sharing


## Instructions

* Architectural Diagram (Shows how key parts of the system work)>

![alt text](https://github.com/raunakshrivastava7/azuredevopsnew/blob/main/screenshots/Archdiagram.png)

* Instructions for running the Python project:>

1. Create 'Azuredevopsnew' repository in your Github account. Integrate GitFlow Actions with the repository.
![alt text](https://github.com/raunakshrivastava7/azuredevopsnew/blob/main/screenshots/GithubActionWorkflow.png)

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

The project can be immproved further by a having a more descriptive home page of the Flask web application with the explanation about its objective, input format and output. The landing page should have an option to provide input and a button clicking on whcih the prediction result should be displayed to the user.

## Demo 

* Youtube link of project demo : https://youtu.be/tOXrh8WHMbE


