---
title: De `.Str`-methode
---

{% include menu.html %}

De `.Str`-methode geeft de **gewone string**-vorm van een waarde terug. Raku roept hem aan wanneer het een waarde in *stringcontext* gebruikt. Dat gebeurt in `print` en `put`, en bij de `~` operator, die strings aan elkaar plakt. Het gebeurt ook als je een waarde in een string tussen dubbele aanhalingstekens zet.

```raku
say 42.Str;    # 42
my @a = 'alpha', 'beta', 'gamma';
say @a.Str;    # alpha beta gamma
```

Merk op dat de array **zonder de vierkante haken** terugkwam. De elementen zijn gewoon met spaties verbonden. Dit is het zichtbare verschil met [`.gist`](../gist), dat de haken wel houdt. Vergelijk ze naast elkaar:

```raku
my @data = 1, 2, 3;
say @data.gist; # [1 2 3]
say @data.Str;  # 1 2 3
```

Als je een array in een string zet, gebruikt Raku `.Str`. Dus wordt de array op de gewone manier getoond:

```raku
my @data = 10, 20, 30;
say "data: @data[]"; # data: 10 20 30
```

{% include nav.html %}
