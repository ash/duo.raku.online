---
title: Використання `VAR`
translations_gpt:
---

{% include menu.html %}

`VAR` — це псевдометод. Він повертає об'єкт контейнера за змінною. Для скалярної змінної `.VAR` повертає її контейнер `Scalar`.

## `^name`

Тепер у вас є контейнер. Ви можете запитати ім'я його класу через `.^name`:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` для змінної повертає тип _значення_. Це `Int` або `Str`. `.VAR.^name` повертає тип _контейнера_. В обох випадках це `Scalar`.

## `default`

Метод `default` повертає типове значення контейнера. Порожній контейнер дає вам це значення. У нього немає власного значення. Ви можете самі задати типове значення трейтом `is default`:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Можливо, ви не задаєте типового значення. Тоді типове значення — це тип контейнера. Контейнер без типу має типове значення `Any`. Неважливо, яке значення в ньому зараз:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

Для контейнера з типом типове значення — це цей тип:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

Метод `name` повертає ім'я контейнера із сигілом:

```raku
my $language;
say $language.VAR.name; # $language
```

Не плутайте `^name` і `name`. `^name` дає тип. `name` дає ім'я змінної.

{% include nav.html %}
