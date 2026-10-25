---
title: Gebruik van `while`
---

{% include menu.html %}

De `while`-lus heeft een Booleaanse voorwaarde (`True` of `False`) en een codeblok. Raku herhaalt het blok _zolang_ de voorwaarde `True` is.

```raku
my $x = 0;
while $x <= 10 {
    $x = prompt 'Voer een getal in dat niet groter is dan 10: ';
    say "Je hebt $x ingevoerd.";
}
say "$x is groter dan 10.";
```

Het programma vraagt je om een getal in te voeren. Als het getal niet groter is dan 10, draait het lichaam van de lus opnieuw. Als een getal niet aan de voorwaarde `$x <= 10` voldoet, eindigt de lus. Dan gaat het programma verder met de volgende regel.

```console
$ raku t.raku
Voer een getal in dat niet groter is dan 10: 10
Je hebt 10 ingevoerd.
Voer een getal in dat niet groter is dan 10: 4
Je hebt 4 ingevoerd.
Voer een getal in dat niet groter is dan 10: 1
Je hebt 1 ingevoerd.
Voer een getal in dat niet groter is dan 10: 20
Je hebt 20 ingevoerd.
20 is groter dan 10.
```

{% include nav.html %}
