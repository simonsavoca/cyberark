# Sample procedure to retrieve account password

$proxy = New-WebServiceProxy -Uri https://<MyServer>/AIMWebService/V1.1/AIM.asmx?WSDL
$t = $proxy.getType().namespace
$request = New-Object ($t + ".passwordRequest")
$Request.AppID = "<MyAppID>";
$request.Query = "Safe=<MySafeName>;Folder=Root;Object=<MyObjectName>";

# Retrieve the password
$response = $proxy.GetPassword($request)

# Possible usefull retrived properties
$Address = $($response.Properties | Where-Object { $_.key -eq "Address" }).Value
$Password = $response.Content
$CPMStatus = $($response.Properties | Where-Object { $_.key -eq "CPMStatus" }).Value
$LastTask = $($response.Properties | Where-Object { $_.key -eq "LastTask" }).Value
$LastSuccessChange = (Get-Date 01.01.1970)+([System.TimeSpan]::fromseconds($($response.Properties | Where-Object { $_.key -eq "LastSuccessChange" }).Value))
$LastSuccessReconciliation = (Get-Date 01.01.1970)+([System.TimeSpan]::fromseconds($($response.Properties | Where-Object { $_.key -eq "LastSuccessReconciliation" }).Value))
$LastSuccessVerification = (Get-Date 01.01.1970)+([System.TimeSpan]::fromseconds($($response.Properties | Where-Object { $_.key -eq "LastSuccessVerification" }).Value))
