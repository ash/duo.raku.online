---
title: Drie-zins `loop`
---

{% include menu.html %}

De `loop`-instructie in Raku lijkt op de klassieke lussen in de taal C en vergelijkbare talen. Hij neemt drie instructies. De eerste geeft de startwaarde. De tweede is de test. De derde verandert de lusvariabele. Het lichaam van de lus draait steeds opnieuw zolang de test `True` is.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "De huidige waarde van de teller is $c.";
}
```

Hier is `++` een operator achter een variabele. Hij telt 1 op bij de variabele. In het tweede deel van de cursus leer je meer operators.

Het programma voert het lichaam van de lus vijf keer uit.

```console
$ raku t.raku
De huidige waarde van de teller is 0.
De huidige waarde van de teller is 1.
De huidige waarde van de teller is 2.
De huidige waarde van de teller is 3.
De huidige waarde van de teller is 4.
```

Je kunt sommige of zelfs alle instructies in de kop van `loop` weglaten. Hier is bijvoorbeeld hetzelfde programma:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "De huidige waarde van de teller is $c.";
    $c++;
}
```

## * * *

In Raku gebruiken mensen `loop` niet zo vaak. Je ziet het bijvoorbeeld in programma's die een tool van C naar Raku heeft vertaald. Raku heeft makkelijkere lussen, zoals `for`. We bekijken `for` heel binnenkort.

{% include nav.html %}
