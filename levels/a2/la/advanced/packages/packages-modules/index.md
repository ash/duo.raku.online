---
title: Fasciculi et moduli
translations_gpt:
---

{% include menu.html %}

Verbum clave `package` spatium nominum creat. Intra id res cum `our` creare potes. Partes spatii nominum fiunt. Ab extra ad eas pervenire potes. Nomine fasciculi et separatore `::` utere:

```raku
package Maths {
    our $pi = 3.14;
    our sub double($x) { $x * 2 }
}

say $Maths::pi;         # 3.14
say Maths::double(5);   # 10
```

Variabilem ut `$Maths::pi` accipis. Primum venit sigillum, deinde nomen fasciculi, deinde nomen variabilis. Subroutinam ut `Maths::double(...)` vocas.

Et `package` et `module` spatium nominum creant. Sed etiam diversa faciunt. `module` est electio usitata pro codice quem iterum adhibes. Simplex `package` est solum spatium nominum, nihil amplius. `class` quoque spatium nominum creat. De classibus in [parte sequente](/la/oop) disces. Classis etiam instrumenta pro obiectis addit.

```raku
module Greet {
    our sub hello { 'hi' }
}

say Greet::hello; # hi
```

Itaque `module` tibi spatium nominum dat. `package` per se tibi idem genus spatii nominum dat. Inter ea elige secundum id quod facere vis. Pro bibliothecis `module` adhibe. Pro solo spatio nominum `package` adhibe. Postea, cum obiectis, `class` pro typis adhibe.

{% include nav.html %}
