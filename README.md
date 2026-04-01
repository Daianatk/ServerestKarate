# QA Serverest Karate

## 📌 Objetivo
Crear una suite de pruebas automatizadas para la API de **Usuarios de ServeRest** ([https://serverest.dev](https://serverest.dev)) utilizando **Karate DSL**.  
El proyecto valida las operaciones CRUD y cubre casos positivos y negativos.

---

## 🚀 Entregables
1. Repositorio GitHub con el proyecto completo.  
2. README con instrucciones de configuración y ejecución.  
3. Informe breve sobre la estrategia de automatización y patrones utilizados.

---

## 🧪 Estrategia de Automatización
- **Framework:** Karate DSL con Maven.  
- **Patrón de organización:** un `feature` por endpoint (`usuarios-get`, `usuarios-post`, `usuarios-id`, `usuarios-put`, `usuarios-delete`).  
- **Casos positivos:** creación, consulta, actualización y eliminación exitosa de usuarios.  
- **Casos negativos:** eliminación de usuarios con carrito, creación con datos inválidos, búsqueda de IDs inexistentes.  
- **Validaciones:** uso de `match` para comprobar tipos (`#string`, `#boolean`, `#[]`) y mensajes de respuesta.  
- **Datos de prueba:** generación dinámica de usuarios con emails únicos.  
- **Reportes:** Karate genera reportes HTML en `target/karate-reports`.

---

## 📂 Estructura del Proyecto
```plaintext
qa-serverest-karate/
 ├── pom.xml
 ├── README.md
 ├── src
 │   └── test
 │       └── java
 │           └── features
 │               ├── usuarios-get.feature
 │               ├── usuarios-id.feature
 │               ├── usuarios-post.feature
 │               ├── usuarios-put.feature
 │               └── usuarios-delete.feature
 └── target/
     ├── surefire-reports/
     └── karate-reports/

📊 Casos Cubiertos
GET /usuarios → Listar usuarios.

POST /usuarios → Registrar usuario válido.

GET /usuarios/{id} → Buscar usuario por ID.

PUT /usuarios/{id} → Actualizar datos de usuario existente.

DELETE /usuarios/{id} → Eliminar usuario (si no tiene carrito asociado).

▶️ Ejecución
1. Clonar el repositorio:
git clone https://github.com/Daianatk/ServerestKarate.git
cd qa-serverest-karate

2. Ejecutar las pruebas:
mvn test

3. Ver resultados:
- Reportes Surefire: target/surefire-reports/
- Reportes Karate: target/karate-reports/karate-summary.html
