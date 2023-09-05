/*****************************************************************************************************
 * Nombre del trigger           :   EMS_CampaignTrigger
 * Versión                      :   1.0
 * Fecha de creación            :   07/11/2019
 * Clase de prueba              :   EMS_CampaignTriggerTest     
 *                          
 * --------------------------------------------------------------------------------------------------
 * Desarrollador                          Fecha                      Descripción
 *  
 * Carlos Uriel Bolívar Aguilar         07/11/2019                  Versión original
 ****************************************************************************************************** */

trigger EMS_CampaignTrigger on Campaign (before insert, before update) {
    EMS_CampaignTriggerHandler handlerCampaign = new EMS_CampaignTriggerHandler();
    handlerCampaign.campaniaHandlerTrigger(trigger.new, trigger.old, trigger.newMap, trigger.oldMap, trigger.operationType);
}