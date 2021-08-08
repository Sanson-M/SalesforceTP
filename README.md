# SalesforceTP
## Ejercicio 2. Protocolo HTTP (Hypertext Transfer Protocol)
1.	¿Qué es un servidor HTTP?   
El servidor HTTP, o también llamado servidor web, es un software que hace uso del protocolo HTTP para almacenar os archivos que conforman a una página web y devolver su información al usuario cuando se solicite.
  
2.	¿Qué son los verbos HTTP? Mencionar los más conocidos  
Los verbos HTTP, o métodos, son peticiones a un servidor que indican que acción se quiere realizar sobre este y de la cual se obtiene una respuesta. Entre los más conocidos se encuentran: GET, POST, PUT, PATCH, DELETE, HEAD, CONNECT y OPTIONS.

3.	¿Qué es un request y un response en una comunicación HTTP? ¿Que son los headers?
Un request es un comando que permite al cliente enviar peticiones de acción HTTP, a un servidor en específico, para pedir el inicio de una acción. Response es la respuesta del servidor tras la acción solicitada.
Los headers son un campo central tanto en los request como en el response, encargados de modificar u otorgar información adicional sobre el servidor, la solicitud, el cliente, etc.

4.	¿Qué es un queryString? (contexto URL)  
Un queryString es la parte de la URL que contienen los datos que deben ser pasados a las aplicaciones web, generalmente se encuentran ubicados detrás de un ‘?’.

5.	¿Qué es un responseCode? ¿Qué significado tienen los posibles valores devueltos?   
Los responseCode son códigos de respuesta por parte del servidor que indican el resultado a una solicitud HTTP, sus posibles valores pueden ser:  
•	Respuestas informativas (cod100-199);  
•	Respuestas satisfactorias (cod200-299);  
•	Redirecciones (300-399);  
•	Errores de los clientes (400-499);  
•	Errores de los servidores (500-599).  

6.	¿Cómo se envía data en un GET y como en un POST?  
En un GET, los datos enviados que se envían a un servidor se escriben en la misma dirección URL(queryString), mientras que el POST introduce la data en una solicitud HTTP por lo cual no quedan a vista del usuario.

7.	¿Qué verbo HTTP utiliza el navegador cuando accedemos a una página?  
Al acceder a una página el navegador primero arma una conexión con el servidor utilizando el verbo CONNECT y luego emplea GET para retornar la información asociada al recurso identificado por la URL de la web solicitada.

8.	Explicar brevemente que son las estructuras de datos JSON y XML dando ejemplos de estructuras posibles.  
Las estructuras JSON y XML son utilizadas para intercambiar y organizar datos entre sistemas.
Las estructuras JSON se componen de dos partes: Una colección de pares con nombres y valor(Objetos, registros, estructuras, etc.), y una lista ordenada de valores(arrays).
Ejemplo:
```JSON
	  {
	  “persona”:
	    {
	      “nombre”:”Alicia”,
	      “edad”:26,
	      “oficio”:”Profesora”,
	      “idiomas”:”[“Español”,“Ingles”,”Frances”],
	      “provincia”:”Buenos Aires”
	    }
	  }
```
Las estructuras XML se conforman de etiquetas y datos; pudiendo ser estructuras, vectores, etc.  
Ejemplo:
```XML
	<libro>
		<autor>Ray Bradbury</autor>
		<titulo>Fahrenheit 451</titulo>
		<precio modena=”pesos argentinos”>500</precio>
		<editorial>De bolsillo</editorial>
	</iibro>
```
9.	Explicar brevemente el estándar SOAP  
El estándar SOAP es un protocolo basado en XML que define como dos objetos en diferentes procesos pueden comunicarse por medio del intercambio de datos; cada uno de estos mensajes consta de envelope(contenido y forma de procesarlo), header(codificación) y body(mensaje).

10.	Explicar brevemente el estándar REST Full  
Servicio que funciona como estándar para compartir información con un sistema de consulta(request) y respuesta(response). Su arquitectura, por trabajar sobre el protocolo HTTP, comparte sus mismos verbos/métodos; además permite el uso de XML, JSON, archivos binarios y/o texto.

11.	¿Qué son los headers en un request?¿Para qué se utiliza el key Content-type en un header?  
Los headers en un request son headersHTTP usados, opcionalmente, para proporcionar información sobre el contexto de la solicitud enviada al servidor, así este adecue su respuesta.
El key Contect-type es un header utilizado para indicar el tipo de contenido del recurso con el que se va a trabajar.

## Ejercicio 3. Request HTTP.

1. Primer request GET a la URL:  
![PRIMER GET](https://user-images.githubusercontent.com/83475063/128638652-3985c9c6-2676-4ed8-85e5-07e9ccc1f082.png)
2. Request POST:  
![POST2](https://user-images.githubusercontent.com/83475063/128638712-228f7082-d93e-4e88-8fab-6af7e66d7825.png)
3. Segundo request GET:  
![SEGUNDO GET](https://user-images.githubusercontent.com/83475063/128638734-09c29476-dd7f-4444-af76-99470beecd75.png)

### ¿Qué diferencias se observan entre las llamadas del punto 1 y 3?  
Las diferencias halladas entre ambos request GET están en que en el último de estos se muestra cómo se agregó/almaceno un nuevo recurso proveniente del body realizado en el POST. 

## Ejercicio 4. Modulos de Trailhead.
Link a mi perfil en Trailhead:  https://trailblazer.me/id/mesanson

## Ejercicio 5. Objetos de Salesforce.  
1.	Lead: Contacto de un cliente potencial para la compañía.  
Almacena datos sobre localidad(dirección, ciudad, país), salario (ingresos monetarios anuales), contacto (email, número de teléfono, etc.), nombre completo, etc.

2.	Account: Cuenta de un individuo, ya sea persona u organización relacionada a una empresa.  
Almacena datos sobre el nombre del propietario, número de cuenta, contacto (email, teléfono, fax, etc.), dirección de facturación y/o envió, última actividad, etc.

3.	Contact: Contacto de un individuo relacionado a una misma cuenta.  
Almacena información de contacto(número de teléfono, email, etc.), nombre, dirección e información optativa sobre como contactar al individuo.

4.	Opportunity: Representa una transacción, por venta realizada o potencial a futuro, entre la compañía y una cuenta.  
Almacena información sobre el número de cuenta, monto, fecha de apertura y/o cierre, antigüedad del producto/servicio creado, contacto y contrato.

5.	Product: Producto que la compañía ofrece a la venta.  
Almacena datos de la fecha de creación, Id, nombre, código de producto, última modificación, descripción, etc.

6.	PriceBook: Lista de productos ofrecidos a la venta.  
Almacena datos como nombre, Id, descripción, fecha de creación y/o última modificación, etc.

7.	Quote: Posible cotización(precio) para productos y/o servicios de una compañía.  
Almacena información sobre descuentos, fecha de expiración, precio total y subtotal, estado(disponibilidad), etc.

8.	Asset: Representa un artículo con valor comercial, pudiendo ser un producto vendido por parte de la compañía o de un competidor.  
Almacena datos sobre el dueño, precio, producto, fecha de compra, numero serial, etc.

9.	Case:  Asunto de problema y/o inconveniente presentado por parte de un cliente.  
Almacena información de contacto(email, fax, id, teléfono, etc.), numero de reclamo, comentarios internos, fecha de creación y/o modificación, etc.

10.	Article(CaseArticle):  //No se encontró información para Article pero si para CaseArticle así que se trabajó con este ultimo  
Representa la relación entre un Case y el KnowledArticle el cual otorga información (solo de lectura o eliminación) sobre el inconveniente a tratar.  
Almacena datos sobre el lenguaje en el que se encuentra escrito, versión, numero de caso, etc.

### Diagrama de relaciones realizado en Drawio:  

![DiagramRelationSales](https://user-images.githubusercontent.com/83475063/128378446-d7cb9489-e6f8-4ad9-a517-415feea476ed.png)
