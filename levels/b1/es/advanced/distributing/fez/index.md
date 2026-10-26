---
title: Publicar con fez
translations_gpt:
---

{% include menu.html %}

El tema anterior presentó `fez`, una herramienta que sube distribuciones al ecosistema de Raku. No tienes que usar `fez`, porque hay otras formas de publicar. Pero es la opción más común. Además, hace más que subir. Puede preparar una nueva distribución para ti y gestionar tu cuenta de autor. Instálalo con `zef`:

```
zef install fez
```

## Iniciar una distribución

Puedes crear a mano un `META6.json` y los directorios `lib/` y `t/`. O puedes dejar que `fez` los prepare por ti:

```
fez init My::Greeting
```

`fez init` crea una nueva distribución sobre la que puedes trabajar. Es un directorio de proyecto con un `META6.json` ya preparado y la estructura estándar. Así puedes empezar enseguida a escribir código en `lib/` y pruebas en `t/`. No tienes que preparar tú mismo el archivo de metadatos.

## Registro e inicio de sesión

Para publicar, necesitas una cuenta en el ecosistema. La creas una vez con `fez register`, que te pide un nombre de usuario, un correo electrónico y una contraseña. Después inicias sesión con `fez login`. Este comando guarda tu clave, para que los comandos posteriores sepan quién eres:

```
fez register
fez login
```

Tu nombre de usuario es importante. El `META6.json` de una distribución debe tener un campo `auth` con el valor `zef:<username>`. Así es como el ecosistema sabe que la subida viene de verdad de ti.

## Subida

Cuando tengas una cuenta y la distribución esté lista, ejecuta `fez upload`. Este comando empaqueta el directorio actual y lo envía:

```
fez upload
```

Después, cualquiera puede instalarla por su nombre con `zef install My::Greeting`. Puedes subir cada versión solo una vez. Así que recuerda aumentar la `version` en `META6.json` antes de publicar una actualización.

## Otros comandos útiles

Aquí tienes algunos comandos más de `fez` que vas a necesitar:

* `fez review` — revisar si una distribución tiene posibles problemas antes de subirla;
* `fez list` — mostrar las distribuciones que ya has publicado;
* `fez refresh` — volver a construir `META6.json` a partir de los archivos que hay ahora en el disco.

> Todos estos necesitan tener `fez` instalado y una conexión a la red. Todo lo que va después de `init` también necesita una cuenta en el ecosistema.

{% include nav.html %}
