# TCL-DCL-Sentences

a) BBDD: 

USUARIOS Y PRIVILEGIOS.

Todo el proceso de creación de usuarios así como la asignación de permisos deberán realizarse con sentencias las cuales deberán incluirse en el archivo SQL.

1. Crea un usuario llamado GymAdmin, el cual podrá acceder a la Base de Datos desde cualquier servidor y que a su vez, podrá crear otros usuarios y otorgarles privilegios.

2. Utiliza la sentencia SQL pertinente para mostrar los privilegios del usuario administrador.

3. Accede a la Base de Datos con el usuario GymAdmin.

4. Crea un usuario denominado Supervisor. Su trabajo será gestionar todo lo referente a las actividades y horarios del Gimnasio. Crea los permisos pertinentes para el mismo en la Base de Datos y justifícalos.

5. Crea otro usuario denominado Contable. El contable gestionará lo referente a planes, y suscripciones y podrá hacerlo tanto desde las oficinas del gimnasio como desde trabajo remoto. Crea los permisos pertinentes para el Contable en la Base de Datos y justifícalos.

TRANSACCIONES

Genera las instrucciones SQL pertinentes que permita crear nuevos socios.
Indica como fecha_alta de los socios la fecha de fin de tu convocatoria.

6. Crea una transacción que permita:

Ingresar un nuevo socio corporativo
Insertar el nif de la empresa donde trabaja el nuevo socio, en la tabla corporativo.
7. Crea una segunda transacción que permita:

Ingresar un socio nuevo a la tabla socio. Deberás asignar al nuevo socio uno de los tres primeros planes.

Ingresar sus datos bancarios en la tabla principal
Realizar un SAVEPOINT
Insertar un seguimiento (usa la semana siguiente a la fecha de fin de tu convocatoria para crearlo)

Crear un ROLLBACK TO SAVEPOINT.

b) Instrucciones: Creación de un documento SQL con la resolución de las sentencias.
