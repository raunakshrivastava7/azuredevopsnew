git clone git@github.com:raunakshrivastava7/azuredevopsnew.git

make install

az webapp up --name flaskcicdproject4 --resource-group Azuredevops --runtime "PYTHON:3.7"

./make_predict_azure_app.sh

az webapp log tail --name flaskcicdproject4 --resource-group Azuredevops --ids /subscriptions/0c7436df-9359-4a04-b572-96ab6d89334c/resourceGroups/Azuredevops/providers/Microsoft.Web/sites/flaskcicdproject4

locust -f locustfile.py --headless --host https://flaskcicdproject4.azurewebsites.net -u 10 -r 1 --run-time 2m


