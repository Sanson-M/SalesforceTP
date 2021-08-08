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
- Lead: Contacto de un cliente potencial para la compañía.  
Almacena datos sobre:  
	1. Localidad(dirección, ciudad, país);
	2. Salario (ingresos monetarios anuales);
	3. Contacto (email, número de teléfono, etc.);
	4. Nombre completo...

- Account: Cuenta de un individuo, ya sea persona u organización relacionada a una empresa.  
Almacena datos sobre:
	1. Nombre del propietario;
	2. Número de cuenta;
	3. Contacto (email, teléfono, fax, etc.);
	4. Dirección de facturación y/o envió;
	5. Ultima actividad...

- Contact: Contacto de un individuo relacionado a una misma cuenta.  
Almacena información de:
	1. Contacto(número de teléfono, email, etc.);
	2. Nombre;
	3. Dirección e información optativa sobre como contactar al individuo

- Opportunity: Representa una transacción, por venta realizada o potencial a futuro, entre la compañía y una cuenta.  
Almacena información sobre:
	1. Número de cuenta;	
	2. Fecha de apertura y/o cierre;
	3. Antigüedad del producto/servicio creado;
	4. Contacto;
	5. Contrato y Monto.

- Product: Producto que la compañía ofrece a la venta.  
Almacena datos de:
	1. Fecha de creación;
	2. Id y Nombre;
	3. Código de producto;
	4. Ultima modificación;
	5. Descripción...

- PriceBook: Lista de productos ofrecidos a la venta.  
Almacena datos como:
	1. Nombre;
	2. Id; 
	3. Descripción;
	4. Fecha de creación y/o última modificación...

- Quote: Posible cotización(precio) para productos y/o servicios de una compañía.  
Almacena información sobre:
	1. Descuentos;
	2. Fecha de expiración;
	3. Precio total y subtotal,
	4. Estado(disponibilidad)...

- Asset: Representa un artículo con valor comercial, pudiendo ser un producto vendido por parte de la compañía o de un competidor.  
Almacena datos sobre:
	1. Dueño;
	2. Precio;
	3. Producto;
	4. Fecha de compra;
	5. Numero serial...

- Case:  Asunto de problema y/o inconveniente presentado por parte de un cliente.  
Almacena información de:
	1. Contacto(email, fax, id, teléfono, etc.);
	2. Numero de reclamo;
	3. Comentarios internos;
	4. Fecha de creación y/o modificación...

- Article(CaseArticle):  //No se encontró información para Article pero si para CaseArticle así que se trabajó con este ultimo  
Representa la relación entre un Case y el KnowledArticle el cual otorga información (solo de lectura o eliminación) sobre el inconveniente a tratar.  
Almacena datos sobre:
	1. Lenguaje en el que se encuentra escrito;
	2. Versión;
	3. Numero de caso...

### Diagrama de relaciones realizado en Drawio:  

![DiagramRelationSales](https://user-images.githubusercontent.com/83475063/128378446-d7cb9489-e6f8-4ad9-a517-415feea476ed.png)

## Ejercicio 6.  
Parte A. Consulta con un GET en POSTMAN, mi ID es: -MgLzjG23khM6zxu-7QN
![getMiId](https://user-images.githubusercontent.com/83475063/128648279-3f0ac23b-1308-4eb1-aba0-77fa1bf5bbab.png)


## Ejercicio 7. 
### Soluciones de Salesforce  

A.	¿Qué es Salesforce?  
Salesforce es un software dedicado a la gestion y/o administracion de relaciones e interacciones entre una empresa y sus clientes.  

B.	¿Qué es Sales Cloud?  
Sales Cloud es el apartado de Salesforce que permite almacenar y gestionar la compañía de forma remota y automatica (guardando toda la información en la nube).  

C.	¿Qué es Service Cloud?  
Es el servicio de Salesforce, emparentado a Sales Cloud, que se utiliza para manejar las relaciones y el contacto con los diversos clientes de una empresa así entablar un soporte y comunicación constante.   

D.	¿Qué es Health Cloud?  
Es el apartado de Salesforce el cual otorga un software de gestión para todos los recursos dedicados a la atención médica y hospitalaria, en relación médico-paciente.  
  
E.	¿Qué es Marketing Cloud?  
Marketing Cloud es un servicio de gestión, otorgado por Salesforce, para trabajar en el ambiente de marketing y vincular posibles compradores con los productos y/servicios de una compañía.  

### Funcionalidades de Salesforce

A.	¿Qué es un RecordType?  
RecordType son registros utilizados que permiten gestionar la informacion  relacionada a un objeto, desde sus procesos en el negocio, diseño y posibles valores de selección.    

B.	¿Qué es un ReportType?  
Es la plantilla que definirá que objetos, campos, nombres y selecciones se puedan hacer al momento de realizar un reporte.  

C.	¿Qué es un Page Layout?  
Es el apartado de un RecordType dedicado al diseño y organización de la información y como esta será presentada al usuario.  

D.	¿Qué es un Compact Layout?  
Es el apartado que se encarga de controlar que opciones, campos y/o nombres serán los primeros en aparecer a la vista del usuario.  

E.	¿Qué es un Perfil?  
Un perfil es un registro que setea los privilegios de accion y acceso que tengan los usuarios sobre los objetos e información relacionada a una empresa.  

F.	¿Qué es un Rol?  
Un rol es una herramienta para controlar el acceso a los registros por parte de los usuarios; se utiliza para armar relaciones jerárquicas en una misma organización.  

G.	¿Qué es un Validation Rule?   
Es la sección encargada de verificar que los datos ingresados por los usuarios sean los correctos para los parámetros de un campo antes de ser guardados.  

H.	¿Qué diferencia hay entre una relación Master Detail y Lookup?  
El Master Detail declara una relación padre-hijo entre objetos donde el hijo puede heredar ciertas características del padre y, si este último es eliminado, todos sus hijos también desaparecerán. Por otro lado, el Lookup a pesar de que también establece una relación, no necesita establecer un padre.   

I.	¿Qué es un Sandbox?  
Un Sandbox es un “entorno de pruebas”. Permite realizar diferentes acciones dentro de en un ambiente seguro, igual al original de la organización, antes de ser implementadas en la estructura verdadera.   

J.	¿Que es un ChangeSet?  
Es una herramienta de Salesforce utilizada para migrar modificaciones realizadas entre una organización a otra(esto solo afecta a moficaciones de Setup, la informacion de registros permanecera igual).  

K.	¿Para qué sirve el import Wizard de Salesforce?  
ImportWizard sirve para importar información desde y hacia los sObjects, permitiendo realizar acciones como insert, update y upsert.  

L.	¿Para qué sirve la funcionalidad Web to Lead?  
Web to Lead sirve para guardar la información de usuarios que accedieron a la página web de la compañía y almacenarla como un cliente potencial en el Salesforce.   

M.	¿Para qué sirve la funcionalidad Web to Case?  
Web to Case sirve para generar un reclamo en el Salesforce a partir del realizado, por un cliente, en la página web de la empresa.  

N.	¿Para qué sirve la funcionalidad Omnichannel?  
La funcionalidad Omnichannel sirve para asignar el reclamo de un cliente al agente de soporte indicado, permitiéndole a este último tener un acceso claro y directo sobre la información del caso al que atenderá.   

O.	¿Para qué sirve la funcionalidad Chatter?  
Chatter sirve para mantener una comunicación más instantánea y directa entre los distintos empleados que forman a la empresa; así estos puedan trabajar de forma colaborativa.  

### Conceptos generales  

A.	¿Qué significa SaaS? ¿Salesforce es SaaS?  
SaaS (Software as a Service) plantea un software ofrecido como servicio que se encuentra accesible mediante la nube a todos sus clientes. A cambio de suscripción, se obtienen funcionalidades especificas, sin necesidad de hardware ni de mantenimiento.   
Salesforce es un PaaS (Plataform as a Service) que ofrece multiples SaaS al publico; tales como SalesCloud, MarketingCloud,HealthCloud,etc.    

B.	¿Que significa que una solución sea Cloud?  
Significa que esta almacenada en la Nube (es decir alojado remotamente en un servidor web), y que el acceso será mediante internet.  

C.	¿Que significa que una solución sea On-Premise?  
Significa que tal solución está dada dentro de las instalaciones de la empresa; es decir, instalada y alojada de manera local.   

D.	¿Que es un pipeline de ventas?  
Es el conjunto de procesos y/o etapas que componen a las ventas de una compañía.  

E.	¿Que es un funnel de ventas?  
Es el diseño de los procesos ideales para concretar que un cliente potencial concluya exitosamente en un cliente de echo de la empresa.  
  
F.	¿Qué significa Customer Experience?  
Customer Experience significa la experiencia que tuvo un cliente en la empresa, ya sea por haberse realizado una venta o por haber entablado un intercambio comunicativo.  

G.	¿Qué significa omnicanalidad?  
Omnicanalidad es el contacto con el cliente desde más de una única vía de comunicación, siempre actuando todas como una única y buscando entablarse en aquella que se adapte mejor.  

H.	¿Qué significa que un negocio sea B2B?  
Un negocio es B2B (Business-to-Business) cuando se encuentra dirigido a comercializar sus productos y/o servicios entre otros negocios; es decir, dedicado al comercio mayorista.  

I.	¿Qué significa que un negocio sea B2C?  
Un negocio B2C (Business-to-Consumer) significa que es aquel que dirige la venta de sus bienes comerciales al usuario final.  

J.	¿Qué es un KPI?  
KPI(Key Performance Indicator) es un medidor que hace referencia al nivel de desempeño, en base a un objetivo final fijado previamente, de una estrategia o iniciativa de marketing.  

K.	¿Qué es una API y en qué se diferencia de una Rest API?  
Una API es la arquitectura que define los parámetros necesarios para permitir el intercambio de información entre dos aplicaciones diferentes. El Rest API es un protocolo, utilizado en dicho intercambio, basado en la arquitectura REST.  

L.	¿Qué es un Proceso Batch?  
Batch es la ejecucion de procesos en serie sin necesidad de un usuario para intervenir o supervisar.   

M.	¿Qué es Kanban?  
Kanban es una metodología de desarrollo de las actividades y cómo estas se irán completando, basado en la visualización, división de etapas y distribución adecuada del tiempo.  

N.	¿Qué es un ERP? ¿Salesforce es un ERP?  
ERP(Enterprise Resource Planning) es un software para la gestión y control de los procesos diarios y/o centrales de una empresa.
No, Salesforce no es un ERP pero si ofrece sus servicios para generarlo.   

