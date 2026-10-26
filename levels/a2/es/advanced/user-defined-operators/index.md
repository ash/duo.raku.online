---
title: Operadores definidos por el usuario
translations_gpt:
---

{% include menu.html %}

En Raku, los operadores son solo subrutinas con nombres especiales. Así, puedes crear tus propios operadores. Para esto, usas los nombres de categoría de la página [Tipos de operadores en Raku](/es/advanced/operator-types). Son `prefix`, `infix`, `postfix`, y así sucesivamente.

Para declarar un operador, escribe un `sub`. Su nombre tiene tres partes. Primero va la categoría. Luego van dos puntos. Después va el símbolo del operador entre corchetes angulares. Aquí hay un nuevo operador infijo. Su nombre es `plus`:

```raku
sub infix:<plus>($a, $b) {
    $a + $b
}

say 3 plus 4; # 7
```

Después, usas `plus` entre sus dos operandos. Funciona exactamente como un operador infijo incorporado.

Un operador postfijo va después de su operando. El factorial es un ejemplo típico. Aquí está como el operador postfijo `!`. Usa [el metaoperador de reducción](/es/advanced/metaoperators/reduction) que ya conoces:

```raku
sub postfix:<!>(Int $n) {
    [*] 1..$n
}

say 5!; # 120
```

Puedes usar más que letras y signos de puntuación ASCII. El símbolo de un operador puede ser cualquier carácter. Este operador prefijo usa el signo de sección `§`. Duplica un número:

```raku
sub prefix:<§>($x) {
    $x * 2
}

say §5; # 10
```

Tus propios operadores son una herramienta fuerte. Por eso, úsalos con cuidado. Con un buen operador, el código se parece al lenguaje de su tema. Un operador extraño solo confunde al siguiente lector.

{% include nav.html %}
