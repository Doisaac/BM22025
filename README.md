<div width="100%" align="center">
  <img src="./banner.jpg">
  <h3>Quinta Actividad Evaluada - Fundamentos de Ensamblador</h3>
  <h5>Ejercicios de resta, multiplicación y división</h5>
</div>

## 📁 Contenido

| # | Carpeta | Descripción | Código | 
|---|-----------------|--------------------------------------------------------------------------------|----------|
| 1 | **ejercicio-1** | Programa para restar tres enteros, usando sólo registros de 16 bits            | [ejer-1] |
| 2 | **ejercicio-2** | Programa para multiplicar dos números enteros, usando registros de 8 bits      | [ejer-2] |
| 3 | **ejercicio-3** | Programa para dividir dos números enteros, usando registros de 32 bits         | [ejer-3] |

## 🗄️Estructura

En cada carpeta encontrarás la siguiente estructura:

- `archivo.asm`: Este archivo contiene el código fuente en lenguaje ensamblador.
- `archivo.o`: Este archivo es el resultado de compilar el código fuente en lenguaje ensamblador. Es un archivo objeto.
- `archivo sin extensión`: Archivo Ejecutable 

La anterior estructura te permite distinguir entre los diferentes tipos de archivos que pueden encontrarse
dentro de la carpeta que contiene cada ejercicio y entender su propósito.

## 🏃Ejecución 

Para ejecutar los ejercicios, sigue estos pasos:

1. Clona o descarga el repositorio.
   
2. Abre una terminal y navega al directorio principal del repositorio. 
   es decir, a la carpeta que contiene todos los archivos del proyecto (BM22025).
  
3. Dentro del directorio principal del repositorio, dirígete a la carpeta del ejercicio que desees ejecutar.

4. En tu terminal, escribe el siguiente comando, reemplazando "nombre del archivo
   sin extensión" con el nombre real del archivo que no tiene extensión que deseas ejecutar: 
   
    ```bash
    ./nombre del archivo sin extensión
    ```
    
¡Y eso es todo! Una vez que hayas ejecutado este comando, el archivo correspondiente se ejecutará en la terminal

## 📝 Modificaciones

Si quieres realizar modificaciones en el archivo .asm:

1. Modifica el archivo .asm según tus necesidades con tu editor de texto favorito.
   
2. Abre la terminal y asegúrate de estar en la ubicación donde se encuentra el archivo .asm.
   Una vez confirmado, escribe el siguiente comando:

    ```bash
    nasm -f elf32 nombre-del-archivo.asm && ld -o nombre-nuevo nombre-del-archivo.o
    ```
    
  Asegúrate de reemplazar "nombre-del-archivo.asm" con el nombre real del archivo .asm que has modificado, y "nombre-nuevo"
  con el nombre que deseas para el nuevo archivo ejecutable.

Siguiendo estos pasos, podrás modificar el archivo .asm y generar un nuevo archivo ejecutable con los cambios que realizaste.

[ejer-1]: https://github.com/Doisaac/BM22025/tree/main/ejercicio-1
[ejer-2]: https://github.com/Doisaac/BM22025/tree/main/ejercicio-2
[ejer-3]: https://github.com/Doisaac/BM22025/tree/main/ejercicio-3
