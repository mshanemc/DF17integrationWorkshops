sfdx msm:org:create -f config/project-scratch-def.json -d 1 -s --json -u int -o work.shop
sfdx force:source:push
sfdx force:user:permset:assign -n CustomerID
sfdx msm:user:password:set -l User -g User -p sfdx1234 --json
sfdx force:apex:execute -f scripts/CustomerIDSetup.cls
sfdx force:org:open