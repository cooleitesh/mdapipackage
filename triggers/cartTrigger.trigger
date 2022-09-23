trigger cartTrigger on Cart__c (before update) {
    
    for(Cart__c cart : trigger.new)
    System.debug('Eitesh=>'+cart);
}