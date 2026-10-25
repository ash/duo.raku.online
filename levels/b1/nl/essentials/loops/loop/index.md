---
title: Drie-zins `loop`
---

{% include menu.html %}

De `loop`-instructie in Raku heeft veel gemeen met de traditionele lussen van de programmeertaal C en zijn verwanten. Hij neemt drie instructies: de initialisator, de test en de instructie die de lusvariabele verandert. Het lichaam van de lus wordt steeds opnieuw uitgevoerd zolang de test `True` blijft.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "De huidige waarde van de teller is $c.";
}
```

Hier is `++` een postfix-operator die zijn argument met 1 verhoogt. In het tweede deel van de cursus bekijken we meer operators.

Het programma voert het lichaam van de lus vijf keer uit.

```console
$ raku t.raku
De huidige waarde van de teller is 0.
De huidige waarde van de teller is 1.
De huidige waarde van de teller is 2.
De huidige waarde van de teller is 3.
De huidige waarde van de teller is 4.
```

Sommige, of zelfs alle, instructies in de kop van `loop` kunnen worden weggelaten. Hier is bijvoorbeeld hetzelfde programma:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "De huidige waarde van de teller is $c.";
    $c++;
}
```

## * * *

De `loop`-lussen zijn waarschijnlijk de minst gebruikte lussen in Raku. Je vindt ze bijvoorbeeld in code die een tool automatisch van C naar Raku heeft vertaald. Maar Raku heeft handigere lussen, zoals `for`, die we heel binnenkort zullen bekijken.

{% include nav.html %}
