# CREDICLUB

**Actividad: Crear una Rest API con Python**

Para resolver el problema se utilizó MySql, Python y Flask.

La API de manera inicial recibe como datos de entrada la siguiente información del cliente: nombre, apellido paterno, apellido materno, fecha de nacimiento, ingresos mensuales y el número de dependientes económicos. Con base en una serie de reglas y los datos proporcionados, se decidirá si se aprueba o no un crédito para el usuario.

Para captar los datos de entrada se creo el siguiente formulario.
<p align="center">
<img src="https://user-images.githubusercontent.com/25446758/199854609-aeba1c45-7d30-4714-ae4a-6b237bc688ae.png" width="250" align="center">
</p>

Ahí el usuario deberá capturar la información solicitada y una vez que se envíe recibirá como respuesta la siguiente información: Id del usuario, su RFC y si el crédito fue aprobado o rechazado. Tal y como se aprecia en la siguiente imagen.
<p align="center">
<img src="https://user-images.githubusercontent.com/25446758/199854653-9af8c553-f6c4-49b8-a823-4130e4f7f6db.png" width="250" align="center">
</p>

Tanto los datos del cliente como la respuesta generada por la API se almacenan en una base de datos. En la siguiente imagen se pueden observar los registros guardados por cada consulta.
<p align="center">
<img src="https://user-images.githubusercontent.com/25446758/199859104-ceeed062-3a22-4d6d-b090-d0be79f63809.png" width="800" align="center">
</p>

Para efectos de demostración se creyó adecuado incluir el cliente dentro de la misma API con la finalidad de que el resultado se mostrara de una forma atractiva y conveniente, regresando un HTML. Sin embargo, claro esta que sí se estuviera trabajando en un ambiente real solamente se recibiría la petición y como respuesta se regresaría un JSON con el resultado generado.

También como es habitual, se trabajó dentro de un ambiente virtual creado con anaconda para el código python el cual también se adjunta para poder recrear fácilmente el ejercicio. 

