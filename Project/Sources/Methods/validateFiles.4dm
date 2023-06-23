//%attributes = {}
var $schemaFolder : 4D:C1709.Folder
var $json; $schema; $result : Object

$schemaFolder:=Folder:C1567(fk documents folder:K87:21).folder("Boulot/4D v0.0/4D.app/Contents/Components/4D WritePro Interface.4dbase/Resources/4DWP_Wizard/JsonSchemas")

$json:=JSON Parse:C1218(File:C1566("/RESOURCES/4DWP_Wizard/Templates/peopleByCompany.json").getText())
$schema:=JSON Parse:C1218($schemaFolder.file("schemaTemplate.json").getText())
$result:=JSON Validate:C1456($json; $schema)
If ($result.success=False:C215)
	ALERT:C41(JSON Stringify:C1217($result.errors))
End if 

$json:=JSON Parse:C1218(File:C1566("/RESOURCES/4DWP_Wizard/Translations/en.json").getText())
$schema:=JSON Parse:C1218($schemaFolder.file("schemaTranslate.json").getText())
$result:=JSON Validate:C1456($json; $schema)
If ($result.success=False:C215)
	ALERT:C41(JSON Stringify:C1217($result.errors))
End if 

$json:=JSON Parse:C1218(File:C1566("/RESOURCES/4DWP_Wizard/Themes/myTheme.json").getText())
$schema:=JSON Parse:C1218($schemaFolder.file("schemaTheme.json").getText())
$result:=JSON Validate:C1456($json; $schema)
If ($result.success=False:C215)
	ALERT:C41(JSON Stringify:C1217($result.errors))
End if 
