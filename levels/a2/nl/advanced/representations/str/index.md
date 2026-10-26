---
title: De `.Str`-methode
---

{% include menu.html %}

De `.Str`-methode geeft de **gewone string**-vorm van een waarde terug. Raku roept hem aan als het een waarde als string nodig heeft. Dat heet *stringcontext*. `print` en `put` roepen hem aan. De `~` operator roept hem ook aan. Deze operator plakt strings aan elkaar. Het werkt ook voor waarden in strings tussen dubbele aanhalingstekens.

```raku
say 42.Str;    # 42
my @a = 'alpha', 'beta', 'gamma';
say @a.Str;    # alpha beta gamma
```

Let op: de array komt terug **zonder de vierkante haken**. De elementen staan gewoon achter elkaar, met spaties ertussen. Hier zie je het verschil met [`.gist`](../gist). De `.gist`-methode houdt de haken wel. Vergelijk de twee methodes naast elkaar:

```raku
my @data = 1, 2, 3;
say @data.gist; # [1 2 3]
say @data.Str;  # 1 2 3
```

Een waarde in een string tussen dubbele aanhalingstekens gebruikt `.Str`. Daarom verschijnt een array in een string op de gewone manier:

```raku
my @data = 10, 20, 30;
say "data: @data[]"; # data: 10 20 30
```

{% include nav.html %}
