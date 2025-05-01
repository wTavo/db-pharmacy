🧬 Base de Datos para Farmacia con Envío a Domicilio
Este repositorio contiene el diseño y estructura de una base de datos pensada para el manejo de una farmacia con funciones de delivery. El objetivo es ofrecer una solución robusta para la gestión de productos, usuarios, recetas médicas, compras, direcciones y control de inventario, todo con control de roles y permisos.

📌 Descripción General
La base de datos está orientada a la gestión de productos farmacéuticos, con especial atención al control de medicamentos, compras y logística de envío a domicilio.

Incluye tablas interrelacionadas que permiten:

Almacenamiento detallado de medicamentos.

Gestión de usuarios con diferentes roles.

Registro de recetas médicas.

Control de compras y existencias.

Registro preciso de direcciones.

Relación con claves oficiales del SAT.

Seguridad y control de acceso mediante roles.

🗂️ Estructura Principal
🔹 productos_medicamentos
Contiene la información médica y comercial de cada medicamento:

Nombre comercial

Principio activo

Concentración

Presentación comercial

Forma farmacéutica

Vía de administración

Laboratorio

Existencia

Precio

Clave SAT (relacionada con clave_productos)

Ideal para búsqueda avanzada y control de inventario.

🔹 clave_productos
Tabla que almacena las claves oficiales del SAT junto con su descripción y palabras clave. Cada producto o medicamento debe vincularse con una clave SAT válida.

🔹 usuarios
Gestión de los usuarios del sistema. Campos clave:

Nombre y apellidos

Correo electrónico

Teléfono

Contraseña

Rol

RFC

Cédula profesional (si aplica)

CURP

Cada usuario puede tener múltiples direcciones (ver domicilio_usuarios) y está vinculado a compras, recetas o tareas según su rol.

🔹 domicilio_usuarios & codigos_postales
Permiten una gestión detallada de direcciones, esencial para el sistema de entregas. Incluyen:

Calle, número interior/exterior, referencias

Código postal

Información del asentamiento, municipio, estado, ciudad y zona

Optimiza la logística de envío, validación y cobertura.

🔹 compras & factura
Registro de transacciones realizadas por los usuarios:

Fecha

Productos adquiridos

Total pagado

Método de pago

La factura está asociada directamente a las compras.

🔹 recetas
Controla medicamentos prescritos por profesionales de la salud:

ID del médico y su cédula profesional

Medicamento prescrito

Dosis, frecuencia, vía de administración

Fechas de inicio/fin

Indicaciones adicionales

Facilita el cumplimiento legal y la trazabilidad de medicamentos controlados.

🔹 reseñas
Los usuarios pueden dejar comentarios y valoraciones sobre los productos que han adquirido, fomentando la transparencia y confianza en el sistema.

🔹 roles
Define y restringe las acciones que puede realizar cada tipo de usuario:

Rol	Permisos principales
DBA	Control total sobre la base de datos.
Farmacéutico	Lectura y modificación de productos, inventario y recetas.
Doctor	Inserción de recetas, consulta de productos.
Cliente	Consulta de productos, creación de pedidos.
Repartidor	Lectura y actualización de pedidos asignados.
Auditor	Consulta de toda la información sin permisos de modificación.

Esto garantiza la seguridad, privacidad y eficiencia del sistema.

📊 Análisis y Reportes
Gracias a su diseño relacional, la base de datos permite generar reportes clave como:

Productos más vendidos

Historial de disponibilidad de medicamentos

Zonas con mayor demanda

Frecuencia de métodos de pago

Evaluación de desempeño por rol o usuario

🛠️ Funcionalidades Soportadas
Inventario en tiempo real: Se actualiza tras cada compra o ajuste manual.

Validación de recetas: Asociación directa con médicos y sus cédulas.

Rutas de entrega optimizadas: Gracias al desglose geográfico del domicilio.

Control administrativo: Compatible con auditorías y políticas fiscales.

📍 Conclusión
Esta base de datos está diseñada para cubrir todos los procesos clave de una farmacia moderna con servicios en línea, permitiendo escalar el sistema con seguridad y eficiencia. La separación por roles, el control de medicamentos, y el enfoque en la experiencia de usuario hacen que sea una herramienta poderosa para gestionar ventas, entregas, inventarios y más.
