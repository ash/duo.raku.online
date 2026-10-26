---
title: Ingebouwde traits
translations_gpt:
---

{% include menu.html %}

Je voegt een _trait_ toe met het sleutelwoord `is`, direct na een declaratie. Een trait draait tijdens het compileren. Hij verandert een vaste eigenschap van het ding met de trait. Raku heeft veel traits. Je hebt er al een paar gebruikt.

Normaal zijn de parameters van een subroutine **alleen-lezen**. Je kunt ze binnen de routine geen nieuwe waarden geven. De trait `is copy` geeft je een eigen kopie van het argument. Die kopie kun je veranderen. De verandering blijft binnen de routine. De variabele van de aanroeper blijft hetzelfde:

```raku
sub greet($name is copy) {
    $name = "dear $name";
    say "Hello, $name!";
}

my $who = 'Anna';
greet($who); # Hello, dear Anna!
say $who;    # Anna — de variabele van de aanroeper blijft ongemoeid
```

De trait `is rw` gaat verder. Hij verbindt de parameter met de variabele van de aanroeper. Je verandert de parameter binnen de routine. Dan zie je de verandering ook buiten de routine:

```raku
sub bump($n is rw) {
    $n++;
}

my $x = 10;
bump($x);
say $x; # 11
```

Zonder een van deze traits geeft `$n++` een fout. Dat komt doordat de parameter alleen-lezen is.

Een andere veelgebruikte trait stelt een standaardwaarde in:

```raku
my $port is default(8080);
say $port; # 8080
```

Hier geeft `is default` de variabele een standaardwaarde. De variabele heeft deze waarde als er niets anders in zit. Er zijn veel ingebouwde traits: `is rw`, `is copy`, `is default` en meer. Elke trait geeft een declaratie één speciaal gedrag. Dat gebeurt tijdens het compileren. Het volgende onderwerp laat zien dat de lijst met traits niet vastligt. [Je kunt je eigen traits maken](/nl/advanced/traits-pragmas/writing-a-trait).

{% include nav.html %}
