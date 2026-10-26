---
title: q, qq y Q
---

{% include menu.html %}

Hay tres operadores base de entrecomillado. Cambian más o menos el texto que tienen dentro:

* `q` — como las comillas simples: casi todo el texto queda tal como está
* `qq` — como las comillas dobles: Raku interpola las variables y las secuencias de escape
* `Q` — la forma más literal: Raku no cambia **nada**

Cada uno toma el texto entre dos delimitadores. Los delimitadores son los caracteres alrededor del texto. Ya conoces `'…'`. Es una forma corta de `q`. Y `"…"` es una forma corta de `qq`:

```raku
my $name = 'Anna';

say q{Hello $name};  # Hello $name
say qq{Hello $name}; # Hello Anna
```

`q` no cambia `$name`. `qq` lo interpola. Las secuencias de escape con barra invertida, como `\n`, funcionan igual. Solo `qq` y `"…"` convierten `\n` en un salto de línea real. Tanto `q` como `Q` lo dejan como dos caracteres: `\` y `n`:

```raku
say qq{line\nbreak}; # line<newline>break
say q{line\nbreak};  # line\nbreak
say Q{line\nbreak};  # line\nbreak
```

Entonces, ¿qué diferencia hay entre `q` y `Q`? `q` es como las comillas simples. Todavía procesa un *pequeño* conjunto de secuencias de escape. Una barra invertida doble `\\` se convierte en una sola barra invertida. También puedes escapar el delimitador de cierre con una barra invertida. Pero la forma `Q` simple no cambia **nada** en absoluto:

```raku
say q{a\\b}; # a\b   — q collapses the escaped backslash
say Q{a\\b}; # a\\b  — Q keeps both characters
```

Puedes usar cualquier delimitador: `q{…}`, `q[…]`, `q/…/`, `q!…!`. Esto ayuda cuando el propio texto tiene comillas. Estos tres operadores son la base. El siguiente tema muestra los [_adverbios_](/es/advanced/quoting/adverbs). Con ellos, eliges exactamente qué características están activadas.

{% include nav.html %}
