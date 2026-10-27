---
title: Met mappen werken
translations_gpt:
---

{% include menu.html %}

Soms moet je met het bestandssysteem zelf werken. Je wilt bijvoorbeeld controleren wat er bestaat, of mappen aanmaken. Daarvoor gebruikt Raku _padobjecten_. Je kunt elke string met de methode `.IO` in een padobject omzetten. Het padobject beantwoordt dan vragen over dat pad.

Meestal vraag je of een pad bestaat en wat voor ding het is:

```raku
spurt 'greeting.txt', 'hi';

say 'greeting.txt'.IO.e; # True  — does it exist?
say 'greeting.txt'.IO.f; # True  — is it a file?
say 'greeting.txt'.IO.d; # False — is it a directory?
```

`.e` controleert of het pad bestaat. `.f` controleert of het een gewoon bestand is, en `.d` of het een map is.

Om een nieuwe map aan te maken gebruik je `mkdir`:

```raku
mkdir 'reports';
say 'reports'.IO.d; # True
```

In het volgende onderwerp zie je hoe je de inhoud van een map opsomt.

{% include nav.html %}
