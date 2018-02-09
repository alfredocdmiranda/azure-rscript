# POST method: $req
#$requestBody = Get-Content $req -Raw | ConvertFrom-Json
$requestBody = Get-Content $req -Raw
cd D:\home\site\wwwroot\script
#$customers = $requestBody.customers
$response = D:\home\R-3.3.3\bin\x64\Rscript.exe script.r

# GET method: each querystring parameter is its own variable
#if ($req_query_test) 
#{
#    $name = $req_query_test 
#}

Out-File -Encoding Ascii -FilePath $res -inputObject "Hello $response"
