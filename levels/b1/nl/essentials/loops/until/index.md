---
title: Gebruik van `until`
---

{% include menu.html %}

De `until`-constructie is het tegenovergestelde van `while`. Ze voert het codeblok uit totdat de voorwaarde `True` wordt (met andere woorden, zolang de voorwaarde `False` is).

Hier is het [programma van de vorige pagina](../while), aangepast zodat het `until` en een nieuwe voorwaarde gebruikt:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Voer een getal in dat niet groter is dan 10: ';
    say "Je hebt $x ingevoerd.";
}
say "$x is groter dan 10.";
```

Voer het programma uit en controleer de uitvoer:

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

Vergelijk twee programma's die hetzelfde doen met `while` en `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Zoals je ziet, is elke voorwaarde het tegenovergestelde van de andere. Zo hangen `while` en `until` op dezelfde manier samen als `if` en `unless`.

{% include nav.html %}
