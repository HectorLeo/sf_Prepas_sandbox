trigger EXU_RequiredDocuments on hed__Application__c (before insert, after update) {
    if(trigger.isInsert){
        for(hed__application__c application : trigger.new){
            if(application.hed__Term__c != null && application.EXU_Semestre__c != null && application.hed__Applying_To__c != null){
             	List<EXU_Perfil_documentos__c> LISTA_PERFILES_DOCUMENTOS = New List<EXU_Perfil_documentos__c>();
                LISTA_PERFILES_DOCUMENTOS = [SELECT Id FROM EXU_Perfil_documentos__c WHERE EXU_Semestre__c =: application.EXU_Semestre__c AND EXU_Periodo__c =: application.hed__Term__c];
                List<EXU_Documentos__c> DOCUMENTOS_REQUERIDOS = New List<EXU_Documentos__c>();
                for(EXU_Perfil_documentos__c pd : LISTA_PERFILES_DOCUMENTOS){
                    
                }
            }
        }
    }
}