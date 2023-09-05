trigger HedTestScoreTrigger on hed__Test_Score__c (before update) {
    String configName = Test.isRunningTest() ? 'Test' : 'HedTestScoreTrigger';
    
    if(TriggerConfig__c.getAll().containskey(configName) && TriggerConfig__c.getInstance(configName).IsEnabled__c ){  
        new HedTestScoreTriggerHandler().run();
    }

}