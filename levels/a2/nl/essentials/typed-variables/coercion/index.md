---
title: Type conversie voor getypte variabelen
---

{% include menu.html %}

Typebeperkingen zijn regels voor de typen van variabelen. Deze regels zijn vrij streng. Neem bijvoorbeeld een variabele met het type `Int`. Je kunt er geen `Num`-waarde aan toewijzen. Dat geldt ook als de waarde een geheel getal is:

```raku
my Int $x = 42;
# $x = 42e1; # Fout
```

Om de waarde om te zetten, gebruik je [een van de methoden](/nl/essentials/coercion/#topics-in-this-section).

```raku
my Int $x = 42;
$x = 42e1.Int;
$x = Int(42e1);
```

{% include nav.html %}
