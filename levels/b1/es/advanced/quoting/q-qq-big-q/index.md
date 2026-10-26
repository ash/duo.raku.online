---
title: q, qq y Q
---

{% include menu.html %}

Hay tres operadores base de entrecomillado. La diferencia está en cuánto procesan el texto que tienen dentro:

* `q` — como las comillas simples: casi todo queda tal como está
* `qq` — como las comillas dobles: las variables y las secuencias de escape se interpolan
* `Q` — la forma más literal de todas: no se procesa **nada**

Cada uno toma el texto entre un par de delimitadores. Las conocidas `'…'` son solo una forma corta de escribir `q`. Del mismo modo, `"…"` es una forma corta de `qq`:

```raku
my $name = 'Anna';

say q{Hello $name};  # Hello $name
say qq{Hello $name}; # Hello Anna
```

`q` deja `$name` tal como está, pero `qq` lo interpola. Las secuencias de escape con barra invertida como `\n` funcionan de la misma manera. Solo `qq` (y `"…"`) convierte `\n` en un salto de línea real. Tanto `q` como `Q` lo dejan como dos caracteres, `\` y `n`:

```raku
say qq{line\nbreak}; # line<newline>break
say q{line\nbreak};  # line\nbreak
say Q{line\nbreak};  # line\nbreak
```

Entonces, ¿en qué se diferencian `q` y `Q`? Como las comillas simples, `q` todavía procesa un *pequeño* conjunto de secuencias de escape. Una barra invertida doble `\\` se convierte en una, y puedes escapar el delimitador de cierre. En cambio, la forma `Q` simple no procesa **nada** en absoluto:

```raku
say q{a\\b}; # a\b   — q collapses the escaped backslash
say Q{a\\b}; # a\\b  — Q keeps both characters
```

Puedes usar cualquier delimitador, como `q{…}`, `q[…]`, `q/…/` o `q!…!`. Esto es útil cuando el propio texto contiene comillas. Los tres operadores son la base. El siguiente tema muestra cómo los [_adverbios_](/es/advanced/quoting/adverbs) te dejan elegir exactamente qué características están activadas.

{% include nav.html %}
