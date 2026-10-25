---
title: Gebruik van `until`
---

{% include menu.html %}

De `until`-lus doet het omgekeerde van `while`. Hij voert het codeblok uit totdat de voorwaarde `True` wordt. Met andere woorden: hij draait zolang de voorwaarde `False` is.

Dit is het [programma van de vorige pagina](../while), maar nu met `until` en een nieuwe voorwaarde:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Voer een getal in dat niet groter is dan 10: ';
    say "Je hebt $x ingevoerd.";
}
say "$x is groter dan 10.";
```

Voer het programma uit en bekijk de uitvoer:

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

## `until` vs. `while`

Vergelijk twee programma's die hetzelfde doen, het ene met `while` en het andere met `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Zoals je ziet, is elke voorwaarde het omgekeerde van de andere. Zo vormen `while` en `until` een paar, op dezelfde manier als `if` en `unless`.

{% include nav.html %}
