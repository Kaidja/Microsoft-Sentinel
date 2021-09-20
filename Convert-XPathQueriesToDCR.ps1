$URL = "https://raw.githubusercontent.com/Kaidja/Azure-Sentinel/main/Data%20Collection%20Rules/ADCS-All-Events.xml"
$XPathContent = [XML](Invoke-WebRequest -Uri $URL).Content
foreach($DCRXPath in $XPathContent.QueryList.Query.Select){
    -join ($DCRXPath.Path, '!', $DCRXPath.'#text')
    
}
