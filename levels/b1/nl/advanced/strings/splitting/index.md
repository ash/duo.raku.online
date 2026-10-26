---
title: Splitsen en samenvoegen
translations_gpt:
---

{% include menu.html %}

Er zijn verschillende manieren om een string in stukken te splitsen en weer samen te voegen.

De methode `words` splitst een string bij witruimte in een lijst van woorden:

```raku
say 'Hello big World'.words; # (Hello big World)
```

De methode `split` splitst een string bij een scheidingsteken dat je zelf kiest:

```raku
say 'a,b,c'.split(','); # (a b c)
```

Een belangrijk speciaal geval is splitsen op de **lege string** `''`. Dat splitst een string in zijn losse tekens. Maar het voegt ook een lege string toe, helemaal vooraan en helemaal achteraan. Daarom heeft het resultaat twee elementen meer dan je misschien verwacht:

```raku
say 'abc'.split('').elems;        # 5 — de drie letters, plus aan elk uiteinde een lege string
say 'abc'.split('', :skip-empty); # (a b c) — het bijwoord :skip-empty laat de lege weg
```

Om een string in tekens te splitsen, kun je de methode `comb` zonder argumenten aanroepen. Die doet dit direct, en er zijn geen extra lege strings om op te ruimen:

```raku
say 'Raku'.comb; # (R a k u)
```

Voor de andere kant op gebruik je de methode `join`. Die plakt een lijst van waarden aan elkaar tot één string en zet er een scheidingsteken tussen:

```raku
say <a b c>.join('-'); # a-b-c
```

Nog twee methoden werken met delen van een string. De methode `substr` geeft een stuk van een string terug. Je geeft hem een beginpositie en, als je wilt, een lengte:

```raku
say 'Hello World'.substr(0, 5); # Hello
say 'Hello World'.substr(6);    # World
```

En `trim` verwijdert de witruimte aan het begin en aan het einde van een string:

```raku
say '  hi  '.trim; # hi
```

{% include nav.html %}
