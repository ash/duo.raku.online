---
title: 'Solution: Преглед на резултата от `prompt` — Стрингове'
---

{% include menu.html %}

## Код

Ето цялата програма. Тя върши работата. Тя отпечатва низа, който въвеждате, и неговия тип.

```raku
my $name = prompt 'Как се казваш? ';
say $name;
say $name.WHAT;
```

🦋 Можете да намерите изходния код във файла [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Тестови изпълнения

Стартирайте програмата два или три пъти. Въведете различни имена. Програмата отпечатва отново това, което сте въвели. Тя също ви казва, че променливата съдържа низ. С други думи, това е обект от тип `Str`.

```console
$ raku exercises/data-types/prompt-strings.raku
Как се казваш? Андрей
Андрей
(Str)
```

Сега стартирайте програмата отново. Въведете няколко интервала вместо име. След това натиснете Enter.

```console
$ raku exercises/data-types/prompt-strings.raku
Как се казваш?    

(Str)
```

Не виждаме изхода. Но виждаме типа на променливата. Той все още е `Str`.

{% include nav.html %}
