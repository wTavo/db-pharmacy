<h1 align="center">
  <br>
    <a href="https://github.com/ninpl/README-Template"><img src="./res/logo.png" alt="LogoRepo" width="100"></a>
  <br>
  Pharmacy DataBase
  <br>
</h1>

# 📦 Base de Datos para Farmacia con Entrega a Domicilio

Este repositorio contiene la estructura de una base de datos orientada al manejo de productos farmacéuticos, ventas, usuarios, direcciones, recetas médicas y control de roles enfocada para una aplicación móvil de tipo delivery para farmacias.

## 📊 Descripción General

La base de datos fue diseñada para cumplir con los requerimientos de una farmacia moderna con servicios en línea, permitiendo:

* Gestión de usuarios y direcciones.

* Administración de productos y control de inventario.

* Registro de compras y generación de facturas.

* Manejo de recetas médicas.

* Control de roles y permisos.

* Recolección de reseñas de productos.

## 🧱 Estructura de la Base de Datos

### 🧾 Tabla productos
***Contiene productos farmacéuticos generales:***

`nombre_comercial`

`detalles`

`precio`

`existencia`

***Relacionada con:***

`clave_productos (claves del SAT)`

`compras`

`reseñas`

### 🧾 Tabla clave_productos
***Contiene claves del SAT:***

`clave_sat`

`descripcion`

`palabras_clave`

**Fuente:** [SAT - Claves de productos o servicios](https://www.gob.mx/sat/acciones-y-programas/consulta-mas-claves-de-productos-o-servicios-sugeridas-asi-como-su-claves-de-unidades-de-medida)

### 🧾 Tabla compras y factura
`Tabla compras: vincula productos con usuarios`

`Tabla factura: contiene método de pago, total pagado y fecha`

### 🧾 Tabla usuarios
***Contiene:***

`nombre, apellidos`

`correo, telefono`

`password, rol`

`RFC, cedula_profesional (si aplica), CURP`

***Asociado con:***

`domicilio_usuarios`

`recetas`

`reseñas`

### 🧾 Tabla domicilio_usuarios
***Permite múltiples direcciones por usuario:***

`calle, numero_ext, numero_int`

`referencias, codigo_postal`

***Relacionada con:***

`codigos_postales`

### 🧾 Tabla codigos_postales
***Contiene información oficial del Servicio Postal Mexicano:***

`asentamiento, tipo_asentamiento`

`municipio, estado, ciudad, zona`

**Fuente:** [Servicio Postal Mexicano](https://www.correosdemexico.gob.mx/SSLServicios/ConsultaCP/CodigoPostal_Exportar.aspx)
**Última Actualización: 2025**

### 🧾 Tabla recetas
***Registro médico de recetas:***

`id_receta, id_medico, cedula_profesional`

`medicamento, unidad_medida, dosis`

`frecuencia, via_administracion`

`fecha_inicio, fecha_fin, indicaciones`

**Fuente:** [Medicamentos PLM](https://www.medicamentosplm.com/)

### 🧾 Tabla reseñas
`Los usuarios pueden calificar productos después de comprarlos`

### 🧾 Tabla roles
***Define permisos por usuario:***

`DBA - Todos los privilegios`

`Farmacéutico -	SELECT, INSERT, UPDATE en productos, inventario, recetas`

`Doctor - INSERT en recetas, SELECT en productos`

`Cliente - SELECT en productos, INSERT en compras`

`Repartidor - SELECT, UPDATE en pedidos`

`Auditor - Solo lectura sobre toda la base de datos`

### 🔁 Interrelaciones Importantes

`Productos ↔ Compras ↔ Factura`

`Usuarios ↔ Domicilios`

`Usuarios ↔ Recetas`

`Productos ↔ Reseñas`

***Estas relaciones permiten generar reportes como:***

* Productos más vendidos.

* Fechas con mayor demanda.

* Métodos de pago más usados.

* Opiniones de clientes sobre productos.

* Control y validación de recetas médicas.

### 📦 Gestión de Inventario

***Cuando se realiza una compra:***

* Se actualiza automáticamente el stock.

* Si el producto se agota, se puede emitir una alerta para reposición.


## 🧑‍⚕️ Normativa de Referencia

Esta base de datos se diseñó tomando como referencia la siguiente norma oficial mexicana:

📄 NORMA Oficial Mexicana NOM-024-SSA3-2010
**"Que establece los objetivos funcionales y funcionalidades que deberán observar los productos de sistemas de expediente clínico electrónico..."**

**Fuente: NOM-024-SSA3-2010 - DOF**

Se consideraron principios de:

* Interoperabilidad

* Confidencialidad y seguridad

* Uso de catálogos oficiales

* Procesamiento clínico válido

## 🧮 Fuentes de Datos Utilizadas
[SAT – Claves de productos o servicios](https://www.gob.mx/sat/acciones-y-programas/consulta-mas-claves-de-productos-o-servicios-sugeridas-asi-como-su-claves-de-unidades-de-medida)

[Medicamentos PLM – Catálogo de medicamentos](https://www.medicamentosplm.com/)

[Servicio Postal Mexicano – Catálogo Nacional de Códigos Postales](https://www.correosdemexico.gob.mx/SSLServicios/ConsultaCP/CodigoPostal_Exportar.aspx)

## ✅ Conclusión

Esta base de datos está diseñada no solo para almacenar datos, sino para funcionar como una solución que cumpla estándares nacionales, facilite la logística, mantenga la seguridad de la información médica y mejore la experiencia de usuarios en un entorno digital de farmacia y atención médica.
