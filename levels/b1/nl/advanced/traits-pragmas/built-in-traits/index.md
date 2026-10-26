---
title: Ingebouwde traits
translations_gpt:
---

{% include menu.html %}

Een _trait_ wordt toegevoegd met het sleutelwoord `is`, direct na een declaratie. Hij draait tijdens het compileren. Hij verandert een vaste eigenschap van datgene waar hij bij hoort. Raku heeft veel traits, en je hebt er al een paar gebruikt.

Standaard zijn de parameters van een subroutine **alleen-lezen**. Je kunt er binnen de routine niets aan toekennen. De trait `is copy` geeft je een eigen kopie van het argument, die je wel kunt veranderen. De verandering heeft geen invloed op de aanroeper:

```raku
sub greet($name is copy) {
    $name = "dear $name";
    say "Hello, $name!";
}

my $who = 'Anna';
greet($who); # Hello, dear Anna!
say $who;    # Anna — de variabele van de aanroeper blijft ongemoeid
```

De trait `is rw` gaat verder. Hij bindt de parameter aan de variabele van de aanroeper. Een verandering binnen de routine is dus ook buiten zichtbaar:

```raku
sub bump($n is rw) {
    $n++;
}

my $x = 10;
bump($x);
say $x; # 11
```

Zonder een van deze traits zou `$n++` een fout geven. De parameter zou dan alleen-lezen zijn.

Een andere veelgebruikte trait stelt een standaardwaarde in:

```raku
my $port is default(8080);
say $port; # 8080
```

Hier geeft `is default` de variabele een waarde voor als er geen andere waarde is. Er zijn veel ingebouwde traits, zoals `is rw`, `is copy` en `is default`. Elk daarvan geeft een declaratie tijdens het compileren één specifiek gedrag. Het volgende onderwerp laat zien dat de verzameling traits niet gesloten is. [Je kunt er zelf een definiëren](/nl/advanced/traits-pragmas/writing-a-trait).

{% include nav.html %}
