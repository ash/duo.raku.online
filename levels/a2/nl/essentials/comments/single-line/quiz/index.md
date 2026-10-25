---
title: 'Quiz: Eenzijnige opmerkingen'
---

{% include menu.html %}

Kies de regels met juiste opmerkingen. Misschien begrijp je de Raku-code nog niet. Maak je daar geen zorgen over.

{:.quiz}
1 | `my $name = 'John'; # Naam instellen`
1 | `my $age = 23; ## Verander het volgend jaar` | Alles na de eerste `#` is een opmerking.
0 | `say $name; Naam afdrukken` | Een opmerking moet beginnen met een `#`.
0 | `my $city = 'TBA'; // Nog niet bekend` | C++-stijl opmerkingen worden niet herkend in Raku.
1 | `# say $age;` | De hele regel is uitgecommentarieerd.
1 | `#say $age;`

{% include quiz.html %}

{% include nav.html %}
