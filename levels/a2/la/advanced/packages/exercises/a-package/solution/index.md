---
title: 'Solutio: Fasciculus'
translations_gpt:
---

{% include menu.html %}

Hoc modo opus solvere potes.

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

1. Variabilis et subroutina ambae `our` habent. Itaque ambae partes spatii nominum `Temperature` sunt. Codex extra fasciculum ad eas pervenire potest.

1. Variabilem per `$Temperature::freezing` accipis. Primum venit sigillum, deinde nomen fasciculi, deinde nomen variabilis. Subroutinam ut `Temperature::fahrenheit(100)` vocas. Pro `100` computat `100 * 9/5 + 32`. Eventus est `212`.

1. Simplex `package` solum spatium nominum dat. Pro bibliotheca `module` adhiberemus. Bibliothecam iterum atque iterum adhibere potes. Postea, cum obiectis, `class` adhiberemus. Sed spatium nominum in omnibus his casibus eodem modo operatur.

{% include nav.html %}
