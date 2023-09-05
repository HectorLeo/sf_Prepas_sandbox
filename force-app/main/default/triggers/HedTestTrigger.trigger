trigger HedTestTrigger on hed__Test__c (before insert, after insert, before update, after update) {

    String configName = Test.isRunningTest() ? 'Test' : 'HedTestTrigger';

    
    if(TriggerConfig__c.getAll().containskey(configName) && TriggerConfig__c.getInstance(configName).IsEnabled__c ){
        
        new HedTestTriggerHandler().run();
        
    }
    
    

}