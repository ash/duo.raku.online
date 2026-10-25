---
title: Gebruik van `repeat`
---

{% include menu.html %}

Een `while`- of `until`-blok draait misschien nooit als de conditie vanaf het begin `False` is. Een `repeat`-blok draait juist altijd minstens één keer. De conditie wordt na het blok gecontroleerd. Voor de controle gebruik je dezelfde woorden, `while` of `until`.

Kijk eens naar dit programma.

```raku
my $x = 100;
repeat {
    $x = prompt 'Voer een getal in: ';
    say "Je hebt $x ingevoerd.";
} while $x <= 10;
say "$x is groter dan 10.";
```

De variabele `$x` begint bij `100`. De `while`-conditie controleert of `$x` kleiner dan of gelijk aan `10` is. Met deze waarde is de conditie al `False`, maar het blok draait toch eerst één keer.

```console
$ raku t.raku
Voer een getal in: 10
Je hebt 10 ingevoerd.
Voer een getal in: 20
Je hebt 20 ingevoerd.
20 is groter dan 10.
```

Laten we het programma nu aanpassen zodat het `until` gebruikt.

```raku
my $x = 0;
repeat {
    $x = prompt 'Voer een getal in: ';
    say "Je hebt $x ingevoerd.";
} until $x > 10;
say "$x is groter dan 10.";
```

Voer het uit om te controleren of het werkt zoals je verwacht:

```console
$ raku t.raku
Voer een getal in: 5
Je hebt 5 ingevoerd.
Voer een getal in: 15
Je hebt 15 ingevoerd.
15 is groter dan 10.
```

{% include nav.html %}
