---
title: Quiz — Lijst en scalar vs. lijst en array
---

{% include menu.html %}

Kijk naar de toewijzingen hieronder. Aan de rechterkant staan lijsten. Welk type objecten bevatten de variabelen?

### 1

```raku
my $x = (100, 200, 300);
my @x = (100, 200, 300);

say $x.WHAT;
say @x.WHAT;
```

Kies de goede antwoorden:

{:.quiz-select}
(Lijst) | Het type van `$x` is&nbsp; (: (Array), (Int), (Lijst) :)
(Array) | Het type van `@x` is&nbsp; (: (Array), (Int), (Lijst) :)

## 2*

Dit geval is moeilijker. Misschien begrijp je het nu nog niet. Maak je daar geen zorgen over. Het tweede deel van de cursus komt terug op dit onderwerp.

```raku
my $x = [100, 200, 300];
my @x = [100, 200, 300];

say $x.WHAT;
say @x.WHAT;
```

Kies de goede antwoorden:

{:.quiz-select}
(Array) | Het type van `$x` is&nbsp; (: (Array), (Int), (Lijst) :)
(Array) | Het type van `@x` is&nbsp; (: (Array), (Int), (Lijst) :)

{% include quiz.html %}

{% include nav.html %}
