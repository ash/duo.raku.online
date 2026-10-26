---
title: Fasciculi et moduli
translations_gpt:
---

{% include menu.html %}

Verbum clave `package` spatium nominum creat. Quidquid intra id cum `our` declaratur, pars illius spatii nominum fit. Ab extra haec nomina per nomen fasciculi et separatorem `::` attingere potes:

```raku
package Maths {
    our $pi = 3.14;
    our sub double($x) { $x * 2 }
}

say $Maths::pi;         # 3.14
say Maths::double(5);   # 10
```

Variabilem ut `$Maths::pi` attingis. Habet sigillum, deinde nomen fasciculi, deinde nomen variabilis. Subroutina vocatur ut `Maths::double(...)`.

Et `package` et `module` spatium nominum creant, sed differunt in eo quod praeterea faciunt. `module` est electio usitata pro codice quem iterum adhibere vis. Simplex `package` tantum spatium nominum est, sine additamentis. `class`, quam in [parte sequente](/la/oop) invenies, quoque spatium nominum creat. Praeterea omnia addit quae ad programmationem obiectorum requiris.

```raku
module Greet {
    our sub hello { 'hi' }
}

say Greet::hello; # hi
```

Itaque `module` tibi idem spatium nominum dat quod simplex `package` dat. Utrum eligas maxime ex eo pendet quod facere vis. Adhibe `module` pro bibliothecis et `package` pro simplici spatio nominum. Postea, cum ad obiecta perveneris, `class` pro typis adhibe.

{% include nav.html %}
