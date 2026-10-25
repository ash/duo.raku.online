---
title: Gebruik van `while`
---

{% include menu.html %}

Een `while`-lus heeft een voorwaarde en een codeblok. De voorwaarde is `True` of `False`. Raku voert het blok steeds opnieuw uit _zolang_ de voorwaarde `True` is.

```raku
my $x = 0;
while $x <= 10 {
    $x = prompt 'Voer een getal in dat niet groter is dan 10: ';
    say "Je hebt $x ingevoerd.";
}
say "$x is groter dan 10.";
```

Het programma vraagt je om een getal. Als het getal 10 of minder is, draait de lus nog een keer. Als het getal groter is dan 10, is de voorwaarde `$x <= 10` `False`. Dan stopt de lus. Het programma gaat naar de volgende regel.

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
