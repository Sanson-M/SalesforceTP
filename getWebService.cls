public class getWebService
{
    @future (callout=true)
    public static void updateMethod(List<String> idContacts)
    {
        Http http=new Http();
        HttpRequest request=new HttpRequest();   
        //Seteo la pagina en la que quiero trabajar y el verbo HTTP a utilizar
        request.setEndpoint('https://vdfactory-234311.firebaseio.com/contacts.json');
        request.setMethod('GET');
        //Hago un solo llamado a la URL
        HttpResponse response = http.send(request);
        
        List<Contact> listContacts= new List<Contact>();
        try///Analizo si encontre el/los contactos segun la lista idVirtualDreams(idContacts)
        {
            listContacts=[SELECT Email, idvirtualdreams__c
                          FROM Contact WHERE idvirtualdreams__c IN:idContacts];
        }catch(System.QueryException e)
        {
            return;
        }
        
        if(response.getStatusCode()==200)
        {//Si obtengo informacion desde el request trabajo
            Map<String,Object> results=(Map<String,Object>)JSON.deserializeUntyped(response.getBody());
            
            List<Contact>listToUpdate=new List<Contact>();
            
            for(Contact contact:listContacts)
            {//Obtengo el mail correspondiente al ID buscado(por parametro)
                Map<String,Object> account=(Map<String,Object>)results.get(contact.idvirtualdreams__c);
                contact.Email=(String)account.get('email');
                
                listToUpdate.add(contact);
            }
            update listToUpdate;
        }
    } 
}