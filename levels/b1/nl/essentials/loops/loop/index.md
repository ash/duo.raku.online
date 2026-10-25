---
title: Drie-zins `loop`
---

{% include menu.html %}

De `loop`-instructie in Raku lijkt erg op de traditionele lussen in C en talen die erop lijken. Hij neemt drie instructies. De eerste geeft een startwaarde, en de tweede is de test. De derde verandert de lusvariabele. Het lichaam van de lus draait steeds opnieuw zolang de test `True` is.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "De huidige waarde van de teller is $c.";
}
```

Hier is `++` een postfix-operator, wat betekent dat hij na zijn argument komt. Hij telt 1 op bij het argument. Er zijn meer operators in het tweede deel van de cursus.

Het programma voert het lichaam van de lus vijf keer uit.

```console
$ raku t.raku
De huidige waarde van de teller is 0.
De huidige waarde van de teller is 1.
De huidige waarde van de teller is 2.
De huidige waarde van de teller is 3.
De huidige waarde van de teller is 4.
```

Sommige instructies in de kop van `loop`, of zelfs alle, zijn niet verplicht. Hier is bijvoorbeeld hetzelfde programma:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "De huidige waarde van de teller is $c.";
    $c++;
}
```

## * * *

Raku-programmeurs gebruiken `loop` waarschijnlijk minder dan alle andere lussen. Je vindt hem bijvoorbeeld in code die een tool van C naar Raku heeft omgezet. Maar Raku heeft handigere lussen, zoals `for`. Die bekijken we heel binnenkort.

{% include nav.html %}
