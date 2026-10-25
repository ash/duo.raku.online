---
title: Type conversie voor getypte variabelen
---

{% include menu.html %}

Typebeperkingen zijn vrij streng. Je kunt bijvoorbeeld geen `Num`-waarde toewijzen aan een variabele die als `Int` is gedeclareerd. Dat geldt zelfs als de waarde een geheel getal is:

```raku
my Int $x = 42;
# $x = 42e1; # Fout
```

Gebruik [een van de methoden](/nl/essentials/coercion/#topics-in-this-section) om de waarde naar het juiste type om te zetten.

```raku
my Int $x = 42;
$x = 42e1.Int;
$x = Int(42e1);
```

{% include nav.html %}
