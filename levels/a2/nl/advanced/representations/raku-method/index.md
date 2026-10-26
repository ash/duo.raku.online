---
title: De `.raku`-methode
---

{% include menu.html %}

De derde methode is `.raku`. Die geeft een string terug met een **codeachtige** vorm van de waarde. In het beste geval kun je deze string in een programma plakken. Dan krijg je dezelfde waarde weer. Elke waarde in Raku heeft deze methode.

```raku
say 42.raku;        # 42
say 'Raku'.raku;    # "Raku"
say (1, 2, 3).raku; # (1, 2, 3)
```

Kijk naar de string `'Raku'`. Die komt terug met aanhalingstekens eromheen. Zo zien een getal en een string er anders uit. Zulke details heb je nodig als je een programma debugt.

De methode werkt ook voor gegevens met veel delen. Dat geldt ook voor geneste gegevens, met de ene structuur in de andere:

```raku
my @data = 1, [2, 3], 4;
say @data.raku; # [1, [2, 3], 4]
```

`.raku` geeft een gewone string terug. Dus kun je hem gebruiken op elke plek die een string nodig heeft. Je kunt hem bijvoorbeeld in een string tussen dubbele aanhalingstekens zetten:

```raku
my @data = 10, 20, 30;
say "The data is { @data.raku }";
# The data is [10, 20, 30]
```

Gebruik `.raku` als je deze vorm als string nodig hebt. Dan kun je hem aan je eigen berichten toevoegen. Heel binnenkort leer je `dd` kennen. Dat is een hulpmiddel in Rakudo. Het drukt dezelfde soort vorm voor je af, in één stap.

{% include nav.html %}
