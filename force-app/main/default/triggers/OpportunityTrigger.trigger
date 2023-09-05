trigger OpportunityTrigger on Opportunity (before update, after update) {
	String configName = Test.isRunningTest() ? 'Test' : 'OpportunityTrigger';
    
    if(TriggerConfig__c.getAll().containskey(configName) && TriggerConfig__c.getInstance(configName).IsEnabled__c ){  
        new OpportunityTriggerHandler().run();
    }
}