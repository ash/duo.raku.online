---
title: 'Solution: Опишете променлива'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my Str $lang = 'Raku';

say $lang.^name;
say $lang.VAR.^name;
say $lang.VAR.name;
```

🦋 Намерете програмата във файла [describe-a-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/describe-a-variable.raku).

## Резултат

```
Str
Scalar
$lang
```

## Коментари

1. `.^name` връща типа на стойността в контейнера. Този тип е `Str`.

1. `.VAR` връща контейнера зад променливата. `.^name` върху контейнера връща `Scalar`. Това е типът на самия контейнер.

1. `.VAR.name` връща името на променливата заедно със сигила: `$lang`. Забележете, че това е методът `name`. Това не е мета-методът `^name` от първите два реда.

{% include nav.html %}
