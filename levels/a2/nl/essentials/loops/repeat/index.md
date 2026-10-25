---
title: Gebruik van `repeat`
---

{% include menu.html %}

Een `while`- of `until`-lus draait misschien helemaal niet. Dat gebeurt als de conditie aan het begin `False` is. Een `repeat`-blok is anders. Het draait altijd minstens één keer. Raku controleert de conditie na het blok. Je gebruikt dezelfde woorden voor de controle: `while` of `until`.

Bekijk dit programma.

```raku
my $x = 100;
repeat {
    $x = prompt 'Voer een getal in: ';
    say "Je hebt $x ingevoerd.";
} while $x <= 10;
say "$x is groter dan 10.";
```

Aan het begin is de variabele `$x` gelijk aan `100`. De `while`-conditie controleert of `$x` `10` of minder is. Dus is de conditie al `False`. Maar het codeblok draait toch één keer.

```console
$ raku t.raku
Voer een getal in: 10
Je hebt 10 ingevoerd.
Voer een getal in: 20
Je hebt 20 ingevoerd.
20 is groter dan 10.
```

Nu schrijven we het programma met `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Voer een getal in: ';
    say "Je hebt $x ingevoerd.";
} until $x > 10;
say "$x is groter dan 10.";
```

Voer het uit en controleer het resultaat:

```console
$ raku t.raku
Voer een getal in: 5
Je hebt 5 ingevoerd.
Voer een getal in: 15
Je hebt 15 ingevoerd.
15 is groter dan 10.
```

{% include nav.html %}
