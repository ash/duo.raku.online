---
title: Използване на `VAR`
translations_gpt:
---

{% include menu.html %}

`VAR` е псевдо-метод. Той връща обекта-контейнер зад променливата. За скаларна променлива `.VAR` връща нейния контейнер `Scalar`.

## `^name`

Сега имате контейнера. Можете да попитате за името на неговия клас с `.^name`:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` върху променливата връща типа на _стойността_. Той е `Int` или `Str`. `.VAR.^name` връща типа на _контейнера_. И в двата случая той е `Scalar`.

## `default`

Методът `default` връща стойността по подразбиране на контейнера. Празен контейнер ви дава тази стойност. Той няма своя собствена стойност. Можете сами да зададете стойността по подразбиране с характеристиката `is default`:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Може би не задавате стойност по подразбиране. Тогава стойността по подразбиране е типът на контейнера. Контейнер без тип има стойност по подразбиране `Any`. Няма значение каква стойност има в него сега:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

За контейнер с тип стойността по подразбиране е този тип:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

Методът `name` връща името на контейнера, заедно със сигила:

```raku
my $language;
say $language.VAR.name; # $language
```

Не бъркайте `^name` и `name`. `^name` дава типа. `name` дава името на променливата.

{% include nav.html %}
