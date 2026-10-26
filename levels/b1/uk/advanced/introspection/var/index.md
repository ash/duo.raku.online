---
title: Використання `VAR`
translations_gpt:
---

{% include menu.html %}

`VAR` — це псевдометод, який повертає об'єкт контейнера, що стоїть за змінною. Для скалярної змінної виклик `.VAR` дає контейнер `Scalar`, що стоїть за нею.

## `^name`

Маючи контейнер, ви можете запитати ім'я його класу через `.^name`:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` для змінної дає тип _значення_, `Int` або `Str`. А `.VAR.^name` дає тип _контейнера_, яким в обох випадках є `Scalar`.

## `default`

Метод `default` повертає типове значення контейнера. Це те, що ви отримуєте, коли контейнер не містить власного значення. Ви можете задати його самі трейтом `is default`:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Якщо ви не задаєте типового значення, ним є тип контейнера. Для контейнера без типу це `Any`. Його поточне значення неважливе:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

Для типізованого контейнера це тип з обмеження:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

Метод `name` дає ім'я контейнера разом із його сигілом:

```raku
my $language;
say $language.VAR.name; # $language
```

Будьте уважні й не плутайте `^name` та `name`. Перший дає тип, а другий — власне ім'я змінної.

{% include nav.html %}
