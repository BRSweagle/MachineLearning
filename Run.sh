#############
###//Uploads config into Machine Learning Repo.
###

echo 
curl -X POST https://devtest2.sweagle.com/api/v1/tenant/metadata-parser/parse -H "Authorization: bearer d910c7f4-182d-4830-881a-a13ad3abc451" -d "mds=GoogleCloud&parser=all&args=&format=YAML" -o /Users/boondock/Documents/GitHub/MachineLearning/GoogleCloud.yaml

echo Git add .
echo Git commit -m "Alter File"
echo Git push origin master


