---
title: 'Solution: Опишете променлива'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. `.^name` дава типа на стойността в контейнера, който е `Str`.

1. `.VAR` дава контейнера зад променливата. След това `.^name` върху него връща `Scalar`, което е типът на самия контейнер.

1. `.VAR.name` връща името на променливата, `$lang`, заедно с нейния сигил. Забележете, че това е методът `name`. Това не е мета-методът `^name`, който използвахме на първите два реда.

{% include nav.html %}
