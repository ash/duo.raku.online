---
title: Klassemethoden
translations_gpt:
---

{% include menu.html %}

De meeste methoden worden aangeroepen op een object, dat een instantie van een klasse is. Maar je kunt een methode ook op de klasse zelf aanroepen. Met andere woorden: je roept haar aan op het typeobject. Zo'n methode heet vaak een _klassemethode_. Ze is nuttig voor waarden en bewerkingen die bij de hele klasse horen. Ze horen niet bij één bepaald object.

Je definieert een klassemethode op precies dezelfde manier als elke andere methode:

```raku
class Road {
    method speed-limit { 120 }
}
```

Maar je roept haar aan op de naam van de klasse in plaats van op een instantie:

```raku
say Road.speed-limit; # 120
```

Je hebt eigenlijk al een klassemethode gebruikt, zonder haar zo te noemen. `new` is een methode die je op de klasse aanroept om een nieuw object te maken.

Een klassemethode kan geen attributen van een instantie gebruiken, omdat er geen bepaald object achter zit. Dus werkt ze alleen met informatie die elk object van de klasse deelt. Als het werk afhangt van de gegevens van één object, gebruik dan een gewone methode. Roep die aan op een instantie. Als dat niet zo is, is een klassemethode de logische keuze.

Klassemethoden hebben geen instantie nodig. Maar als je wel een object hebt, kun je zijn gegevens er toch in gebruiken:

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

Dit programma drukt het resultaat af dat je zou verwachten:

```
The maximum speed on Road 404 is 120
```

Zonder een object van de klasse zou een aanroep als `say Road.info` een fout geven.

{% include nav.html %}
