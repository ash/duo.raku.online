---
title: Met mappen werken
translations_gpt:
---

{% include menu.html %}

Soms moet je met het bestandssysteem zelf werken. Het bestandssysteem bevat alle bestanden en mappen op de schijf. Je kijkt bijvoorbeeld wat er bestaat, of je maakt mappen aan. Een map heet ook wel een directory. Ze kan bestanden en andere mappen bevatten. Voor dit werk gebruikt Raku _padobjecten_. Een pad laat zien waar een bestand of een map is. De methode `.IO` maakt van elke string een padobject. Daarna beantwoordt het padobject vragen over dit pad.

Twee vragen komen het meest voor. Bestaat het pad? En wat voor ding is het?

```raku
spurt 'greeting.txt', 'hi';

say 'greeting.txt'.IO.e; # True  — does it exist?
say 'greeting.txt'.IO.f; # True  — is it a file?
say 'greeting.txt'.IO.d; # False — is it a directory?
```

`.e` controleert of het pad bestaat. `.f` controleert of het een gewoon bestand is. `.d` controleert of het een map is.

`mkdir` maakt een nieuwe map aan:

```raku
mkdir 'reports';
say 'reports'.IO.d; # True
```

Het volgende onderwerp laat zien hoe je een lijst maakt van wat er in een map zit.

{% include nav.html %}
