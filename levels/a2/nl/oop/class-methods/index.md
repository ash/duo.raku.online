---
title: Klassemethoden
translations_gpt:
---

{% include menu.html %}

De meeste methoden roep je aan op een object. Een object is een instantie van een klasse. Maar je kunt een methode ook op de klasse zelf aanroepen. Dat betekent: je roept haar aan op het typeobject. Zo'n methode heet vaak een _klassemethode_. Ze is handig voor waarden en acties van de hele klasse. Die horen niet bij één enkel object.

Je schrijft een klassemethode net als elke andere methode:

```raku
class Road {
    method speed-limit { 120 }
}
```

Maar je roept haar aan op de naam van de klasse. Je roept haar niet aan op een instantie:

```raku
say Road.speed-limit; # 120
```

Je kent al één klassemethode. Maar je noemde haar nog niet zo. Het is `new`. Je roept `new` aan op de klasse, en die maakt een nieuw object.

Een klassemethode kan de attributen van een instantie niet gebruiken. Er zit geen object achter. Dus kan ze alleen met algemene informatie werken. Deze informatie is voor elk object van de klasse gelijk. Soms heeft het werk de gegevens van één object nodig. Gebruik dan een gewone methode, en roep die aan op een instantie. Soms heeft het werk zulke gegevens niet nodig. Dan is een klassemethode een goede keuze.

Klassemethoden hebben geen instantie nodig. Maar soms heb je een object. Dan kun je zijn gegevens er toch in gebruiken:

```raku
class Road {
    has $.name;
    method speed-limit { 120 }

    method info {
        "The maximum speed on $.name is " ~ self.speed-limit
    }
}

my $R404 = Road.new(name => 'Road 404');
say $R404.info;
```

Dit programma drukt het resultaat af dat je verwacht:

```
The maximum speed on Road 404 is 120
```

Hier heb je een instantie van de klasse nodig. Zonder die instantie geeft een aanroep als `say Road.info` een fout.

{% include nav.html %}
