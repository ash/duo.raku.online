---
title: De `.raku`-methode
---

{% include menu.html %}

De derde representatiemethode is `.raku`. Die geeft een string terug met een **codeachtige** representatie van de waarde. In het ideale geval kun je deze string in een programma plakken en dezelfde waarde terugkrijgen. Elke waarde in Raku heeft deze methode.

```raku
say 42.raku;        # 42
say 'Raku'.raku;    # "Raku"
say (1, 2, 3).raku; # (1, 2, 3)
```

Merk op dat de string `'Raku'` terugkomt met aanhalingstekens eromheen. Zo zie je snel het verschil tussen een getal en een string. Dit is precies het soort detail dat je nodig hebt als je debugt.

De methode werkt ook voor samengestelde gegevens, zelfs voor geneste structuren:

```raku
my @data = 1, [2, 3], 4;
say @data.raku; # [1, [2, 3], 4]
```

Omdat `.raku` een gewone string teruggeeft, kun je hem overal gebruiken waar een string verwacht wordt. Je kunt hem bijvoorbeeld in een string tussen dubbele aanhalingstekens zetten:

```raku
my @data = 10, 20, 30;
say "The data is { @data.raku }";
# The data is [10, 20, 30]
```

Gebruik `.raku` als je de codeachtige representatie als string nodig hebt. Dan kun je die combineren met je eigen berichten. Heel binnenkort introduceren we `dd`. Dit Rakudo-hulpmiddel drukt dezelfde soort representatie in één stap voor je af.

{% include nav.html %}
