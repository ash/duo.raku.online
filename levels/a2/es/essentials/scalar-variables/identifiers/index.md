---
title: Nombres de las variables
---

{% include menu.html %}

Antes de seguir, veamos un tema interesante. ¿Qué nombres pueden tener las variables? Hasta ahora, usamos nombres simples, como `$name` o `$age`. Solo tienen letras minúsculas del alfabeto inglés. Pero hay más opciones.

## Mayúsculas y minúsculas

Los nombres de variables también se llaman _identificadores_. En los identificadores, las mayúsculas y las minúsculas son diferentes. Así que cada nombre de abajo es un contenedor escalar diferente:

```raku
$myname

$MyName

$myName

$MYNAME
```

Tú decides cómo nombrar tus variables. Pero aquí tienes una idea. Usa los nombres en mayúsculas solo para las constantes. Las constantes son valores que no cambian.

## Otros caracteres

Otros caracteres ASCII también son posibles. Puedes usar dígitos y el guion bajo `_`. También puedes usar el guion `-` y la comilla simple `'`. Aquí, la comilla simple es un apóstrofe. Un identificador debe empezar con una letra o un guion bajo. Después de un `-` o un `'`, debe ir una letra. Aquí hay algunos identificadores correctos más:

```raku
$___

$a'b'c

$my-name

$address2
```

Otra vez, tú eliges los nombres. Pero algunos nombres parecen un código secreto. Probablemente es mala idea elegir esos nombres a propósito.

## Caracteres Unicode

En realidad, hay muchas más letras y dígitos. Unicode tiene propiedades para cada carácter. Dicen si el carácter es una letra o un dígito decimal. Raku usa estas propiedades. Por ejemplo, estas variables son correctas en Raku:

```raku
$привет

$駱駝道

$αβγ

$Δ۲ # donde ۲ es un dígito
```

{% include nav.html %}
