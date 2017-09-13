list<account> accounts = [select Id, Customer_Id__c from Account];
integer k = 1;
for (account a:accounts){
    a.Customer_Id__c = string.valueOf(k);
    k++;
}
update accounts;