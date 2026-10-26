---
title: Publicar con fez
translations_gpt:
---

{% include menu.html %}

El tema anterior mostró `fez`. Con `fez`, subes una distribución al ecosistema de Raku. No tienes que usar `fez`. Hay otras formas de publicar. Pero la mayoría de la gente usa `fez`. Y hace más que subir. También puede crear una nueva distribución para ti. Puede ocuparse además de tu cuenta de autor. Instala `fez` con `zef`:

```
zef install fez
```

## Crear una nueva distribución

Puedes hacer tú mismo el `META6.json` y los directorios `lib/` y `t/`. Pero `fez` puede hacerlos por ti:

```
fez init My::Greeting
```

`fez init` crea el comienzo de una nueva distribución. Es un directorio de proyecto. Ya tiene un `META6.json` y la estructura estándar. Así que puedes empezar a escribir enseguida. El código va en `lib/` y las pruebas van en `t/`. No necesitas preparar tú mismo el `META6.json`.

## Registro e inicio de sesión

Para publicar, necesitas una cuenta en el ecosistema. Creas la cuenta solo una vez, con `fez register`. Te pide un nombre de usuario, un correo electrónico y una contraseña. Después inicias sesión con `fez login`. Este comando guarda tu clave. Con esta clave, los siguientes comandos saben quién eres:

```
fez register
fez login
```

Tu nombre de usuario es importante. El `META6.json` de una distribución debe tener un campo `auth`. Su valor es `zef:<username>`. Así el ecosistema sabe que la subida es de verdad tuya.

## Subida

Tienes una cuenta y la distribución está lista. Ahora `fez upload` empaqueta el directorio actual y lo envía:

```
fez upload
```

Después, cualquiera puede instalarla por su nombre con `zef install My::Greeting`. Puedes subir cada versión solo una vez. Así que, antes de una actualización, aumenta la `version` en `META6.json`.

## Más comandos útiles

También vas a usar estos comandos de `fez`:

* `fez review` — buscar posibles problemas en una distribución antes de subirla;
* `fez list` — mostrar las distribuciones que ya has publicado;
* `fez refresh` — hacer de nuevo `META6.json` a partir de los archivos que están ahora en el disco.

> Todos estos comandos necesitan `fez` instalado y acceso a la red. Todo lo que viene después de `init` también necesita una cuenta en el ecosistema.

{% include nav.html %}
