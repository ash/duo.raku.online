---
title: '`say`'
---

{% include menu.html %}

Dit is wat de ingebouwde routine `say` doet:

1. Roept de `gist` methode aan op zijn argumenten.
1. Voegt een nieuwe regel teken toe.
1. Converteert het resultaat naar UTF-8.
1. Stuurt het naar de `STDOUT` stream.

Voor de gebruiker lijkt het eenvoudig. `say` print gewoon de inhoud van een variabele naar de terminal en voegt een nieuwe regel toe.

De eerste stap vraagt wat uitleg. Elk ingebouwd datatype, zoals gehele getallen of strings, heeft een `gist`-methode. Voor zulke eenvoudige types geeft die een waarde terug die het item voorstelt. Mensen kunnen deze waarde makkelijk lezen.

```raku
say 42; # 42
say 'Raku'; # Raku
```

Arrays en hashes zijn voorbeelden van complexere gegevens. Daarbij voegt de `gist`-methode wat opmaak toe.

```raku
my @data = 'alpha', 'beta', 'gamma';
say @data; # [alpha beta gamma]

my %data = alpha => 1, beta => 2, gamma => 3;
say %data; # {alpha => 1, beta => 2, gamma => 3}
```

Je kunt `say` aanroepen als functie, maar ook als methode:

```raku
say 42;
say(42);
42.say;
```

Je kunt meerdere argumenten aan `say` doorgeven. Hij voegt de delen van de uitvoer samen, zonder spaties ertussen.

```raku
say(100, 500); # 100500
```

{% include nav.html %}
