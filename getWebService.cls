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
            ///Consigo mi idvirtualdreams de forma generica
            String virtualD=listContacts[0].idvirtualdreams__c; ///Como minimo tengo 1 Contacto en la lista que posee mi ID (sino el metodo no se invoca)
            Map<String,Object> account=(Map<String,Object>)results.get(virtualD);
            virtualD=(String)account.get('email');//reutilizo la misma variable para almacenar mi email (que debe asignarse)
                                                  //y asi evito repetir el get dentro del for
            
            List<Contact>listToUpdate=new List<Contact>();
            
            for(Contact contact:listContacts)
            {//Asigno el mail correspondiente al mi ID y lo añado a la lista
                contact.Email=virtualD;
                listToUpdate.add(contact);
            }
            update listToUpdate;
        }
    } 
}
