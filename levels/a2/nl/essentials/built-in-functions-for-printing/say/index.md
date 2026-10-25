---
title: '`say`'
---

{% include menu.html %}

De ingebouwde routine `say` doet vier dingen:

1. Roept de `gist` methode aan op zijn argumenten.
1. Voegt een nieuwe regel teken toe.
1. Converteert het resultaat naar UTF-8.
1. Stuurt het naar de `STDOUT` stream.

Voor de gebruiker is het eenvoudig. `say` print de waarde van een variabele in de terminal. Dan voegt hij een nieuwe regel toe.

De eerste stap vraagt wat uitleg. Elk ingebouwd datatype heeft een `gist`-methode. Gehele getallen en strings zijn voorbeelden van zulke types. Voor deze eenvoudige types geeft `gist` het item terug als een makkelijk leesbare waarde.

```raku
say 42; # 42
say 'Raku'; # Raku
```

Sommige gegevens zijn complexer, bijvoorbeeld arrays of hashes. Bij zulke gegevens voegt `gist` wat opmaak toe.

```raku
my @data = 'alpha', 'beta', 'gamma';
say @data; # [alpha beta gamma]

my %data = alpha => 1, beta => 2, gamma => 3;
say %data; # {alpha => 1, beta => 2, gamma => 3}
```

Je kunt `say` als functie aanroepen. Je kunt hem ook als methode aanroepen:

```raku
say 42;
say(42);
42.say;
```

Je kunt meer dan één argument aan `say` doorgeven. Hij voegt de delen van de uitvoer samen. Er staan geen spaties tussen.

```raku
say(100, 500); # 100500
```

{% include nav.html %}
