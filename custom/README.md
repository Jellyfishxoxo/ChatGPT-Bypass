
<!-- Requirements -->

## 1. Requirements

<b>Install jq </b>

````
apt install jq
````

<b>Export API Key </b>

Head over to 'beta.openai.com' to retrieve your personal API key and set it the variable CHATGPT_TOKEN...or hard code the key. idc

## 2. Usage (Linux)


Store api key into CHATGPT_TOKEN
````
export CHATGPT_TOKEN=<api key>
````
Insert your input for chatgpt here (all symbols can be used, ¨¨ included)
````
nano input.txt
````

Execute
````
./chatgpt.sh "input.txt"
````

![image](https://user-images.githubusercontent.com/32078075/219980552-22d06e43-c4c6-4031-ba3c-57ef9d644c95.png)


clear content of input.txt
````
truncate -s 0 input.txt
echo "" > input.txt
````
