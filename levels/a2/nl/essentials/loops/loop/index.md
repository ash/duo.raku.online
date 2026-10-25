---
title: Drie-zins `loop`
---

{% include menu.html %}

Raku heeft een `loop`-instructie. Die werkt zoals de lussen in C en vergelijkbare talen. De `loop` heeft drie instructies. De eerste geeft de lusvariabele een startwaarde. De tweede is een test. De derde verandert de lusvariabele. De lus draait zolang de test `True` is.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "De huidige waarde van de teller is $c.";
}
```

Hier is `++` een operator. Je schrijft hem na een variabele. Hij telt 1 op bij de variabele. Het tweede deel van de cursus heeft meer operators.

Het lichaam van de lus draait vijf keer.

```console
$ raku t.raku
De huidige waarde van de teller is 0.
De huidige waarde van de teller is 1.
De huidige waarde van de teller is 2.
De huidige waarde van de teller is 3.
De huidige waarde van de teller is 4.
```

Je kunt sommige van de drie instructies in `loop` weglaten. Je kunt ze zelfs allemaal weglaten. Hier is bijvoorbeeld hetzelfde programma:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "De huidige waarde van de teller is $c.";
    $c++;
}
```

## * * *

In Raku gebruiken mensen `loop` niet zo vaak. Soms zet een tool C-code om in Raku-code. In zulke code zie je `loop`. Raku heeft makkelijkere lussen, zoals `for`. We bekijken `for` heel binnenkort.

{% include nav.html %}
