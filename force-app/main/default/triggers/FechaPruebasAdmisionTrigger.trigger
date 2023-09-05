trigger FechaPruebasAdmisionTrigger on EXU_FechaPruebasAdmision__c (after insert) {
    
    String configName = Test.isRunningTest() ? 'Test' : 'FechaPruebasAdmisionTrigger';
    System.debug('configName ' + configName);
    if(TriggerConfig__c.getAll().containskey(configName) && TriggerConfig__c.getInstance(configName).IsEnabled__c ){
        System.debug('Run Handler');
        new FechaPruebasAdmisionTriggerHandler().run();
        
    }
    
}