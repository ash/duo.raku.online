---
title: Subprogramoj kaj metodoj
translations_gpt:
---

{% include menu.html %}

Vi nun havas du manierojn organizi iun konduton: _subrutinon_ kaj _metodon_. Ili aspektas similaj, sed vi uzas ilin malsame.

Subrutino staras memstare. Vi vokas ĝin per ĝia nomo, kaj vi transdonas al ĝi ĉion, kion ĝi bezonas, kiel argumentojn:

```raku
sub area-of($radius) {
    π * $radius * $radius;
}

say area-of(2); # 12.566370614359172
```

Metodo apartenas al klaso. Vi vokas ĝin sur objekto per punkto. Ĝi povas uzi la proprajn datumojn de la objekto tra `self` kaj la atributaj atingiloj. Do vi ne bezonas transdoni tiujn datumojn:

```raku
class Circle {
    has $.radius;

    method area {
        π * $.radius * $.radius;
    }
}

say Circle.new(radius => 2).area; # 12.566370614359172
```

Ambaŭ kalkulas la saman nombron. La diferenco estas, de kie venas la datumoj. La subrutino ricevas la radiuson kiel argumenton. La metodo legas ĝin el la objekto, sur kiu ĝi estis vokita.

Jen simpla regulo. Uzu subrutinon por aparta operacio, kiu nur faras rezulton el siaj argumentoj. Uzu metodon, kiam la konduto apartenas al objekto kaj uzas ĝiajn datumojn. Por ĝeneralaj rutinoj, kiuj apartenas al la klaso kiel tuto, uzu klasmetodojn.

{% include nav.html %}
