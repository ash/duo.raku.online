---
title: Boolean bewerkingen
---

{% include menu.html %}

Je kunt alle gewone operaties doen met Booleaanse waarden. Dat zijn Booleaanse EN, OF en exclusieve OF. Exclusieve OF heet ook XOR:

```raku
say False && True; # EN
say False || True; # OF
say False ^^ True; # XOR
```

Het programma drukt dit af:

    False
    True
    True

## Negatie

Negatie geeft de omgekeerde Booleaanse waarde. Gebruik voor negatie de prefix-operator `!`. Een prefix-operator staat voor de waarde:

```raku
say !False; # True
```

Een scalaire variabele kan een Booleaanse waarde bewaren:

```raku
my $did = True;
my $didn't = !$did;
```

{% include nav.html %}
