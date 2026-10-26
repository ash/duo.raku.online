---
title: Contenedores escalares
translations_gpt:
---

{% include menu.html %}

Los contenedores escalares guardan valores individuales, o escalares. El nombre te lo dice. Estos contenedores tienen el sigilo `$`.

Aquí tienes un uso muy simple de un escalar:

```raku
my $lang = 'Raku';
```

La variable `$lang` es un contenedor escalar.

Por defecto, un contenedor escalar no limita el tipo de datos. Así puedes guardar en él un valor de cualquier tipo. Aquí tienes el ejemplo más simple. Primero, una variable guarda un entero. Luego la misma variable guarda una cadena:

```raku
my $value = 42;
$value = 'forty-two';
```

El autor no recomienda escribir código así.

Dentro de Raku, esto significa una cosa. Por defecto, un contenedor nuevo puede guardar valores del tipo `Any`. `Any` es el tipo base de la mayoría de los otros tipos. Por ejemplo, `Int` y `Str` vienen de `Any`.

{% include nav.html %}
