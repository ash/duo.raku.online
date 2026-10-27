---
title: Apakšprogrammas un metodes
translations_gpt:
---

{% include menu.html %}

Tagad jums ir divi veidi, kā sakārtot kādu uzvedību: _apakšprogramma_ un _metode_. Tās izskatās līdzīgi, bet jūs tās lietojat dažādi.

Apakšprogramma stāv pati par sevi. Jūs to izsaucat pēc nosaukuma un padodat tai visu, kas tai vajadzīgs, kā argumentus:

```raku
sub area-of($radius) {
    π * $radius * $radius;
}

say area-of(2); # 12.566370614359172
```

Metode pieder klasei. Jūs to izsaucat uz objekta ar punktu. Tā var izmantot paša objekta datus caur `self` un atribūtu piekļuves metodēm. Tāpēc šie dati jums nav jāpadod:

```raku
class Circle {
    has $.radius;

    method area {
        π * $.radius * $.radius;
    }
}

say Circle.new(radius => 2).area; # 12.566370614359172
```

Abas aprēķina to pašu skaitli. Atšķirība ir tajā, no kurienes nāk dati. Apakšprogramma saņem rādiusu kā argumentu. Metode to nolasa no objekta, uz kura to izsauca.

Šeit ir vienkāršs likums. Lietojiet apakšprogrammu atsevišķai darbībai, kas tikai pārvērš savus argumentus par rezultātu. Lietojiet metodi, kad uzvedība pieder objektam un izmanto tā datus. Vispārīgām rutīnām, kas pieder visai klasei kopumā, lietojiet klases metodes.

{% include nav.html %}
