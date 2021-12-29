trigger AccountTrigger on Account (before update) {
    System.debug('Accounts with Old Active status');
    for(Account acc : Trigger.old){
        System.debug(acc.Name + ' : ' + acc.Active__c);
    }
    System.debug('Accounts with New Active status');
    for(Account acc : Trigger.new){
        System.debug(acc.Name + ' : ' + acc.Active__c);
    }
}