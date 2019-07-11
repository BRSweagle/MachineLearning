#############
//Uploads config into Machine Learning Repo.

curl -X POST \
https://devtest2.sweagle.com/api/v1/tenant/metadata-parser/parse -H "Authorization: bearer d910c7f4-182d-4830-881a-a13ad3abc451" -d "mds=GoogleCloud&parser=all&args=&format=YAML" -O /Users/boondock/Documents/GitHub/MachineLearning/GoogleCloud.yaml

Git add .
Git commit -m "Alter File"
Git push origin master