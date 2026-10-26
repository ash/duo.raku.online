---
title: '`VAR`'
translations_gpt:
---

{% include menu.html %}

`VAR` — это псевдо-метод. Он возвращает объект контейнера за переменной. Для скалярной переменной `.VAR` возвращает её контейнер `Scalar`.

## `^name`

Теперь у вас есть контейнер. Имя его класса можно узнать с помощью `.^name`:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` у переменной возвращает тип _значения_. Это `Int` или `Str`. `.VAR.^name` возвращает тип _контейнера_. В обоих случаях это `Scalar`.

## `default`

Метод `default` возвращает значение контейнера по умолчанию. Пустой контейнер даёт вам это значение. У него нет своего значения. Вы можете сами задать значение по умолчанию с помощью трейта `is default`:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Может быть, вы не задаёте значение по умолчанию. Тогда значение по умолчанию — это тип контейнера. У контейнера без типа значение по умолчанию — `Any`. Неважно, какое значение в нём сейчас:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

Для контейнера с типом значение по умолчанию — этот тип:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

Метод `name` возвращает имя контейнера вместе с сигилом:

```raku
my $language;
say $language.VAR.name; # $language
```

Не путайте `^name` и `name`. `^name` даёт тип. `name` даёт имя переменной.

{% include nav.html %}
