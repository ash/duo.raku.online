---
title: sink en quietly
translations_gpt:
---

{% include menu.html %}

Er zijn nog twee prefixen. Ze draaien code voor wat die doet. De waarde van de code is niet belangrijk.

Het prefix `sink` draait code in _sink context_. De code draait alleen voor zijn neveneffecten. Raku gooit het resultaat weg. Dat is handig bij een luie operatie. Met `sink` laat je die draaien:

```raku
sink (1..3).map({ print "$_ " });
print "\n"; # 1 2 3
```

Hier draaien we de `map` alleen om wat hij print. `sink` zorgt ervoor dat hij echt draait. Dan gooit `sink` de lijst van de `map` weg. Als niets hem dwingt, draait een luie `map` misschien helemaal niet. Dat kan gebeuren als niemand zijn resultaat gebruikt.

Het prefix `quietly` draait een blok en **verbergt zijn waarschuwingen**. Sommige code print meestal een waarschuwing naar de foutuitvoer. Binnen `quietly` is deze code stil:

```raku
my $value;
quietly {
    say $value + 1; # 1, with no "uninitialized value" warning
}
```

Meestal geeft Raku een waarschuwing als je `1` optelt bij een ongedefinieerde `$value`. De waarschuwing gaat over een "uninitialized value". Binnen `quietly` blijft deze waarschuwing verborgen. Soms weet je dat je code een waarschuwing geeft. Je wilt dit lawaai niet. Gebruik dan `quietly`. Maar gebruik het niet vaak. Een waarschuwing wijst meestal op een echte fout.

{% include nav.html %}
