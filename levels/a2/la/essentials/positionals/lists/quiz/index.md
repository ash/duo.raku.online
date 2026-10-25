---
title: Quiz — Lista et scalar contra lista et array
---

{% include menu.html %}

Specta assignationes infra. In parte dextra sunt indices. Cuius generis obiecta variabiles servant?

### 1

```raku
my $x = (100, 200, 300);
my @x = (100, 200, 300);

say $x.WHAT;
say @x.WHAT;
```

Elige responsa recta:

{:.quiz-select}
(List) | Typus `$x` est&nbsp; (: (Array), (Int), (List) :)
(Array) | Typus `@x` est&nbsp; (: (Array), (Int), (List) :)

## 2*

Hic casus difficilior est. Fortasse eum nunc non intellegis. Noli de hoc curare. Secunda pars cursus ad hunc locum redit.

```raku
my $x = [100, 200, 300];
my @x = [100, 200, 300];

say $x.WHAT;
say @x.WHAT;
```

Elige responsa recta:

{:.quiz-select}
(Array) | Typus `$x` est&nbsp; (: (Array), (Int), (List) :)
(Array) | Typus `@x` est&nbsp; (: (Array), (Int), (List) :)

{% include quiz.html %}

{% include nav.html %}
