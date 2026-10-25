---
title: Gebruik van `repeat`
---

{% include menu.html %}

De `while`- en `until`-blokken draaien misschien nooit als de conditie aan het begin `False` is. Het `repeat`-blok draait daarentegen altijd minstens één keer. De conditie wordt na het codeblok gecontroleerd. Voor de controle gebruik je dezelfde woorden `while` of `until`.

Bekijk dit programma.

```raku
my $x = 100;
repeat {
    $x = prompt 'Voer een getal in: ';
    say "Je hebt $x ingevoerd.";
} while $x <= 10;
say "$x is groter dan 10.";
```

De variabele `$x` begint met de waarde `100`, en de `while`-conditie controleert of `$x` kleiner dan of gelijk aan `10` is. Met deze waarde is de conditie al `False`, maar het codeblok draait toch eerst één keer.

```console
$ raku t.raku
Voer een getal in: 10
Je hebt 10 ingevoerd.
Voer een getal in: 20
Je hebt 20 ingevoerd.
20 is groter dan 10.
```

Laten we het programma aanpassen zodat het `until` gebruikt.

```raku
my $x = 0;
repeat {
    $x = prompt 'Voer een getal in: ';
    say "Je hebt $x ingevoerd.";
} until $x > 10;
say "$x is groter dan 10.";
```

Voer het uit om te controleren of het werkt zoals verwacht:

```console
$ raku t.raku
Voer een getal in: 5
Je hebt 5 ingevoerd.
Voer een getal in: 15
Je hebt 15 ingevoerd.
15 is groter dan 10.
```

{% include nav.html %}
