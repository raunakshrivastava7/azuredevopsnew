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


* Passing tests that are displayed after running the `make all` command from the `Makefile`

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

> 

## Enhancements

The project can be immproved further by a having a more descriptive home page of the Flask web application with the explanation about its objective, input format and output. The landing page should have an option to provide input and a button clicking on whcih the prediction result should be displayed to the user.

## Demo 

<TODO: Add link Screencast on YouTube>


<img width="1391" alt="image" src="https://user-images.githubusercontent.com/13537446/187718276-e377eb78-9d5f-4bd3-821c-26094fb9135e.png">


