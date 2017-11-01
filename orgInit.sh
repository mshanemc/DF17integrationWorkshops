sfdx force:org:create -f config/project-scratch-def.json -d 1
sfdx force:source:push
sfdx force:user:permset:assign -n CustomerID
sfdx force:user:password:generate
sfdx force:apex:execute -f scripts/CustomerIDSetup.cls
sfdx force:org:open