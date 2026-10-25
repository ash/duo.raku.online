---
title: Quiz — Lista et scalar contra lista et array
---

{% include menu.html %}

In assignationibus infra, indices in parte dextra sunt. Cuius generis obiecta variabiles servant?

### 1

```raku
my $x = (100, 200, 300);
my @x = (100, 200, 300);

say $x.WHAT;
say @x.WHAT;
```

Elige responsa correcta:

{:.quiz-select}
(List) | Typus `$x` est&nbsp; (: (Array), (Int), (List) :)
(Array) | Typus `@x` est&nbsp; (: (Array), (Int), (List) :)

## 2*

Hic est casus difficilior. Noli curare si eum nondum intellegis. Ad hunc locum in secunda parte cursus redibimus.

```raku
my $x = [100, 200, 300];
my @x = [100, 200, 300];

say $x.WHAT;
say @x.WHAT;
```

Elige responsa correcta:

{:.quiz-select}
(Array) | Typus `$x` est&nbsp; (: (Array), (Int), (List) :)
(Array) | Typus `@x` est&nbsp; (: (Array), (Int), (List) :)

{% include quiz.html %}

{% include nav.html %}
