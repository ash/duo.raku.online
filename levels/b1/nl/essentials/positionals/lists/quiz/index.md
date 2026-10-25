---
title: Quiz — Lijst en scalar vs. lijst en array
---

{% include menu.html %}

In de toewijzingen hieronder staan lijsten aan de rechterkant. Welk type objecten bevatten de variabelen?

### 1

```raku
my $x = (100, 200, 300);
my @x = (100, 200, 300);

say $x.WHAT;
say @x.WHAT;
```

Kies de juiste antwoorden:

{:.quiz-select}
(Lijst) | Het type van `$x` is&nbsp; (: (Array), (Int), (Lijst) :)
(Array) | Het type van `@x` is&nbsp; (: (Array), (Int), (Lijst) :)

## 2*

Hier is een moeilijker geval. Maak je geen zorgen als je het nog niet begrijpt. We komen op dit onderwerp terug in het tweede deel van de cursus.

```raku
my $x = [100, 200, 300];
my @x = [100, 200, 300];

say $x.WHAT;
say @x.WHAT;
```

Kies de juiste antwoorden:

{:.quiz-select}
(Array) | Het type van `$x` is&nbsp; (: (Array), (Int), (Lijst) :)
(Array) | Het type van `@x` is&nbsp; (: (Array), (Int), (Lijst) :)

{% include quiz.html %}

{% include nav.html %}
