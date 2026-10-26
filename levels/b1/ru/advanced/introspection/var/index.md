---
title: '`VAR`'
translations_gpt:
---

{% include menu.html %}

`VAR` — это псевдо-метод, который возвращает объект контейнера, стоящий за переменной. Для скалярной переменной вызов `.VAR` даёт контейнер `Scalar`, который стоит за ней.

## `^name`

Когда у вас есть контейнер, можно узнать имя его класса с помощью `.^name`:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` у переменной даёт тип _значения_, `Int` или `Str`. А `.VAR.^name` даёт тип _контейнера_, и в обоих случаях это `Scalar`.

## `default`

Метод `default` возвращает значение контейнера по умолчанию. Это то, что вы получаете, когда в контейнере нет своего значения. Вы можете задать его сами с помощью трейта `is default`:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Если вы не задали значение по умолчанию, им будет тип контейнера. Для контейнера без типа это `Any`. Его текущее значение не важно:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

Для типизированного контейнера это тип из ограничения:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

Метод `name` даёт имя контейнера вместе с его сигилом:

```raku
my $language;
say $language.VAR.name; # $language
```

Будьте внимательны и не путайте `^name` и `name`. Первый даёт тип, а второй — собственное имя переменной.

{% include nav.html %}
