clear
### replace ###SITEID### with your uniqueue site id. replace ###API-TOKEN### with your api key
#needed in order to connect 
$AllProtocols = [System.Net.SecurityProtocolType]'Ssl3,Tls,Tls11,Tls12'
[System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols
## setup uri and header
$uri = "https://###SITEID###.live.dynatrace.com/api/v1/userSessionQueryLanguage/table?query=SELECT%20country%2C%20city%2C%20COUNT(*)%20FROM%20usersession%20GROUP%20BY%20country%2C%20city&explain=false&Api-Token=###APITOKEN###"
## execute api, save results into $results
$results = Invoke-RestMethod -Method GET -Uri $uri 
#$results | ConvertTo-Json
#$results.values
#$results | ConvertTo-Json
#$results.values
foreach($result in $results.values)
{
#convert to name you want to use. $country = $result[0]
$result[0]
$result[1]
$result[2]
}
