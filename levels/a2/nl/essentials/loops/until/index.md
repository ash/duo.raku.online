---
title: Gebruik van `until`
---

{% include menu.html %}

Een `until`-lus is het omgekeerde van een `while`-lus. Hij voert het codeblok uit tot de voorwaarde `True` is. Hij draait dus zolang de voorwaarde `False` is.

Hier is het [programma van de vorige pagina](../while) nog een keer. Nu heeft het `until` en een nieuwe voorwaarde:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Voer een getal in dat niet groter is dan 10: ';
    say "Je hebt $x ingevoerd.";
}
say "$x is groter dan 10.";
```

Voer het programma uit en kijk wat het afdrukt:

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

Deze twee programma's doen hetzelfde. Het ene heeft `while`, het andere heeft `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Kijk naar de twee voorwaarden. De ene is het omgekeerde van de andere. `while` en `until` zijn een paar, net als `if` en `unless`.

{% include nav.html %}
