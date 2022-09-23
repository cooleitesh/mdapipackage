public class BeerSearchAuraService {
    @AuraEnabled
    public static List<Beer__c> searchBeer(String searchParam){
        String query='';
        if(searchParam <> null){
        string likeParam= '%'+searchParam+'%';
        query='Select Name,brewery_Name__c,Price__c,Alcohol__c,Remaining_Quantity__c,Total_Quantity__c,Tags__c from Beer__c where Name like :likeParam limit 30';    
        }else{
        query='Select Name,brewery_Name__c,Price__c,Alcohol__c,Remaining_Quantity__c,Total_Quantity__c,Tags__c from Beer__c limit 30';        
        }
        List<sObject> beerList = Database.query(query);
        return beerList;
    }
}