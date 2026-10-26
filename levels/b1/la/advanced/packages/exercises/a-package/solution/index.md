---
title: 'Solutio: Fasciculus'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
package Temperature {
    our $freezing = 0;
    our sub fahrenheit($c) { $c * 9/5 + 32 }
}

say $Temperature::freezing;
say Temperature::fahrenheit(100);
```

🦋 Codicem fontem in archivo [a-package.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/a-package.raku) invenire potes.

## Exitus

```
0
212
```

## Commentarii

1. Tam variabilis quam subroutina cum `our` declaratae sunt. Itaque ambae partes spatii nominum `Temperature` fiunt, et eas ab extra attingere potes.

1. Variabilis attingitur ut `$Temperature::freezing`: sigillum, nomen fasciculi, deinde nomen variabilis. Subroutina vocatur ut `Temperature::fahrenheit(100)`. Conversio `100` dat `100 * 9/5 + 32`, quod est `212`.

1. Simplex `package` tibi tantum spatium nominum dat. Pro bibliotheca quam iterum adhibere vis, `module` adhiberemus. Ubi cum obiectis laboramus, `class` adhiberemus. Sed spatium nominum in unoquoque casu eodem modo operatur.

{% include nav.html %}
