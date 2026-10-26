---
title: Splitsen en samenvoegen
translations_gpt:
---

{% include menu.html %}

Je kunt een string op verschillende manieren in stukken splitsen. Je kunt de stukken ook weer samenvoegen.

De methode `words` splitst een string in een lijst van woorden. Witruimte, bijvoorbeeld een spatie, scheidt de woorden:

```raku
say 'Hello big World'.words; # (Hello big World)
```

De methode `split` knipt een string bij een scheidingsteken. Je kiest zelf het scheidingsteken:

```raku
say 'a,b,c'.split(','); # (a b c)
```

Hier is een belangrijk speciaal geval. Je kunt splitsen op de **lege string** `''`. Dan krijg je de losse tekens van de string. Maar je krijgt ook twee extra lege strings. Die staan helemaal vooraan en helemaal achteraan. Daarom heeft het resultaat twee elementen meer dan je verwacht:

```raku
say 'abc'.split('').elems;        # 5 — de drie letters, plus aan elk uiteinde een lege string
say 'abc'.split('', :skip-empty); # (a b c) — het bijwoord :skip-empty laat de lege weg
```

Wil je een string in tekens splitsen? Roep de methode `comb` aan zonder argumenten. Die doet dit direct. Er zijn geen extra lege strings:

```raku
say 'Raku'.comb; # (R a k u)
```

De methode `join` doet het omgekeerde. Hij voegt een lijst van waarden samen tot één string. Hij zet een scheidingsteken tussen de waarden:

```raku
say <a b c>.join('-'); # a-b-c
```

Nog twee methoden werken met delen van een string. De methode `substr` geeft je een stuk van een string. Je geeft hem een beginpositie. Als je wilt, kun je hem ook een lengte geven:

```raku
say 'Hello World'.substr(0, 5); # Hello
say 'Hello World'.substr(6);    # World
```

En `trim` haalt de witruimte aan beide kanten van een string weg:

```raku
say '  hi  '.trim; # hi
```

{% include nav.html %}
