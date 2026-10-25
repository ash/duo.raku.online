---
title: Nombres de las variables
---

{% include menu.html %}

Antes de seguir, aquí hay un tema interesante: ¿qué nombres pueden tener las variables? Hasta ahora, hemos visto nombres simples como `$name` o `$age`. Solo tenían letras minúsculas del alfabeto inglés. Pero hay más posibilidades.

## Letras mayúsculas y minúsculas

Los nombres de variables, o _identificadores_, distinguen entre mayúsculas y minúsculas. Esto significa que las letras mayúsculas y minúsculas son diferentes. Así que todos los nombres de abajo se refieren a contenedores escalares diferentes:

```raku
$myname

$MyName

$myName

$MYNAME
```

Tú eliges qué estilo de nombres seguir. Pero quizás quieras reservar los nombres en mayúsculas para las constantes.

## Otros caracteres

También se permiten otros caracteres ASCII. Son los dígitos, el guion bajo `_`, el guion `-` y la comilla simple `'`. La comilla simple representa un apóstrofe. Ten en cuenta que un identificador debe empezar con una letra o un guion bajo. Tanto `-` como `'` deben tener una letra justo después. Aquí hay algunos identificadores válidos más:

```raku
$___

$a'b'c

$my-name

$address2
```

Otra vez, la elección de los nombres es tuya. Pero probablemente es una mala práctica hacer nombres difíciles de entender a propósito.

## Caracteres Unicode

En realidad, la idea de letras y dígitos es más amplia. Incluye todos los caracteres que son letras o dígitos decimales según sus propiedades Unicode. Por ejemplo, las siguientes variables son válidas en Raku:

```raku
$привет

$駱駝道

$αβγ

$Δ۲ # donde ۲ es un dígito
```

{% include nav.html %}
