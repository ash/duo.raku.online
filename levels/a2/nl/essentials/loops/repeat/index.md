---
title: Gebruik van `repeat`
---

{% include menu.html %}

Soms draait een `while`- of `until`-blok helemaal niet. Dat gebeurt als de conditie aan het begin `False` is. Een `repeat`-blok is anders: het draait altijd minstens één keer. Raku controleert de conditie na het blok. Je gebruikt dezelfde woorden, `while` of `until`, voor de controle.

Bekijk dit programma.

```raku
my $x = 100;
repeat {
    $x = prompt 'Voer een getal in: ';
    say "Je hebt $x ingevoerd.";
} while $x <= 10;
say "$x is groter dan 10.";
```

Aan het begin heeft de variabele `$x` de waarde `100`. De `while`-conditie controleert of `$x` kleiner dan of gelijk aan `10` is. Met deze waarde is de conditie al `False`. Maar het codeblok draait toch eerst.

```console
$ raku t.raku
Voer een getal in: 10
Je hebt 10 ingevoerd.
Voer een getal in: 20
Je hebt 20 ingevoerd.
20 is groter dan 10.
```

Laten we nu het programma veranderen en `until` gebruiken.

```raku
my $x = 0;
repeat {
    $x = prompt 'Voer een getal in: ';
    say "Je hebt $x ingevoerd.";
} until $x > 10;
say "$x is groter dan 10.";
```

Voer het uit en controleer of het werkt:

```console
$ raku t.raku
Voer een getal in: 5
Je hebt 5 ingevoerd.
Voer een getal in: 15
Je hebt 15 ingevoerd.
15 is groter dan 10.
```

{% include nav.html %}
