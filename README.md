# Consumir-REST-Soap


Construir un web Service SOAP y un Web Service Rest, que incluyan los 2 métodos descritos más abajo. Adicionalmente, deberá construirse un Cliente para cada uno de los 2 servicios antes solicitados. El lenguaje programación usado para construir los Servicios debe ser distinto del usado para construir los Clientes. Como apoyo para la validación de los servicios, se sugiere utilizar alguna herramienta para consumir los servicios como SOAP UI, REST Client, u otro.
Métodos a implementar
Validación dígito verificador: El método debe recibir un rut (por ejemplo 12345678-9) y devolver un indicador de si es válido o no en función del cálculo del dígito verificador. Para lograr lo anterior, deberá implementar el algoritmo de dígito verificador usado en Chile.
Nombre Propio: El método debe recibir un apellido paterno (un campo de entrada), un apellido materno (otro campo), los nombres (todos los nombres, juntos, en otro campo) y un indicador del género de la persona (M o F). El método debe devolver el nombre completo en formato “NOMBRES AP_PATERNO AP_MATERNO”, antecedido del “saludo” según el género (Sr. para M; Sra. para F). Adicionalmente, el nombre completo debe venir formateado con el estilo “nombre propio” (o proper case) que significa todo en minúsculas, excepto la inicial (por ejemplo “Sr. Jorge Daniel González Urrutia”). Note que los nombres/apellidos recibidos como parámetros pueden venir en minúsculas, mayúsculas o alguna combinación.



# Install

Deben instalar las siguientes dependencias para que funcione correctamente y tener instalado ruby 2.6 en su PC, además de que esté en el PATH
```
gem install httparty
gem install savon --version '~> 2.0'

```
# Ejecución

Para levantar el cliente se debe ejecutar el siguiente comando desde la terminal, en la carpeta raíz del repositorio
```
ruby main.rb
```

En el cliente (en general) se puede seleccionar cual es la API a la que se le harán las peticiones, dependiendo de estas las respuestas van a variar entre JSON y XML