---
title: Operadores definidos por el usuario
translations_gpt:
---

{% include menu.html %}

Los operadores en Raku son en realidad solo subrutinas con nombres especiales. Esto significa que puedes definir tus propios operadores. Usas los nombres de categoría de la página [Tipos de operadores en Raku](/es/advanced/operator-types): `prefix`, `infix`, `postfix`, y así sucesivamente.

Para declarar un operador, escribe un `sub` con un nombre especial. El nombre es la categoría, dos puntos y el símbolo del operador entre corchetes angulares. Aquí hay un nuevo operador infijo llamado `plus`:

```raku
sub infix:<plus>($a, $b) {
    $a + $b
}

say 3 plus 4; # 7
```

Una vez definido, `plus` va entre sus dos operandos. Es exactamente como cualquier operador infijo incorporado.

Un operador postfijo va después de su operando. El factorial es un ejemplo clásico. Aquí está como el operador postfijo `!`. Está construido con [el metaoperador de reducción](/es/advanced/metaoperators/reduction) que viste antes:

```raku
sub postfix:<!>(Int $n) {
    [*] 1..$n
}

say 5!; # 120
```

No estás limitado a letras y signos de puntuación ASCII. El símbolo de un operador puede ser cualquier carácter. Este operador prefijo usa el signo de sección, `§`, para duplicar un número:

```raku
sub prefix:<§>($x) {
    $x * 2
}

say §5; # 10
```

Definir operadores es una herramienta potente, así que úsala con buen gusto. Un operador bien elegido puede hacer que el código se lea como el lenguaje de su área. Uno poco claro solo confunde a la siguiente persona que lee el código.

{% include nav.html %}
