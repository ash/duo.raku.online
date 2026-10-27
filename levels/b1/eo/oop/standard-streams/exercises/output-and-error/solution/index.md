---
title: 'Solvo: Eligo kaj eraroj'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my @data = 3, 5, 7;

my $sum = 0;
for @data -> $n {
    $sum += $n;
    $*ERR.say("running total: $sum");
}

$*OUT.say($sum);
```

🦋 Vi povas trovi la fontkodon en la dosiero [output-and-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/output-and-error.raku).

## Eligo

Ambaŭ fluoj aperas sur la ekrano. Unue venas la kurantaj sumoj, kaj poste la fina rezulto:

```
running total: 3
running total: 8
running total: 15
15
```

Se vi forĵetas norman erarfluon, restas nur la vera eligo:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Komentoj

1. `$*OUT` kaj `$*ERR` estas la teniloj por norma eligo kaj norma erarfluo. Ĉiu el ili havas sian propran metodon `say`.

1. Ĉiu rondo aldonas la sekvan nombron kaj skribas la kurantan sumon al `$*ERR`. Nur la fina sumo iras al `$*OUT`. Sur la ekrano, la progreso kaj la rezulto aspektas similaj. Sed ili iras tra malsamaj fluoj. Do kiam `2>/dev/null` forsendas norman erarfluon, restas nur la fina `15`.

{% include nav.html %}
