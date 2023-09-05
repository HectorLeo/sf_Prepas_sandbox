trigger LeadTrigger on Lead (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    
    String configName = Test.isRunningTest() ? 'Test' : 'LeadTrigger';
    
    if(TriggerConfig__c.getAll().containskey(configName) && TriggerConfig__c.getInstance(configName).IsEnabled__c ){
        
        if(!LeadTriggerHelper.getIsTriggerRunning()){
            
            LeadTriggerHelper.setIsTriggerRunning(true);
            
            new LeadTriggerHandler().run();
            
            LeadTriggerHelper.setIsTriggerRunning(false);
        }
        
        
    }
    
}