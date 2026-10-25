---
title: 'Solution: Преглед на резултата от `prompt` — Стрингове'
---

{% include menu.html %}

## Код

Ето пълната програма. Тя върши работата и отпечатва както въведения низ, така и неговия тип.

```raku
my $name = prompt 'Как се казваш? ';
say $name;
say $name.WHAT;
```

🦋 Можете да намерите изходния код във файла [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Тестови изпълнения

Стартирайте програмата няколко пъти с различни имена. Програмата повтаря въведеното. Тя също съобщава, че променливата съдържа низ. С други думи, това е обект от тип `Str`.

```console
$ raku exercises/data-types/prompt-strings.raku
Как се казваш? Андрей
Андрей
(Str)
```

Сега стартирайте програмата отново. Въведете няколко интервала вместо име и натиснете Enter.

```console
$ raku exercises/data-types/prompt-strings.raku
Как се казваш?    

(Str)
```

Не виждаме изхода. Но можем да видим, че променливата все още има тип `Str`.

{% include nav.html %}
