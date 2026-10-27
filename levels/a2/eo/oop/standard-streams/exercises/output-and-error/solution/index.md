---
title: 'Solvo: Eligo kaj eraroj'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

Vi vidas ambaŭ fluojn sur la ekrano. Unue venas la kurantaj sumoj, poste la fina rezulto:

```
running total: 3
running total: 8
running total: 15
15
```

Ĉi tie, ni forĵetas norman erarfluon. Restas nur la vera eligo:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Komentoj

1. `$*OUT` estas la tenilo por norma eligo. `$*ERR` estas la tenilo por norma erarfluo. Ĉiu el ili havas sian propran metodon `say`.

1. Ĉiu rondo de la buklo aldonas la sekvan nombron. Poste ĝi skribas la kurantan sumon al `$*ERR`. Nur la fina sumo iras al `$*OUT`. Sur la ekrano, la progreso kaj la rezulto aspektas same. Sed ili iras tra malsamaj fluoj. `2>/dev/null` forsendas norman erarfluon. Do restas nur la fina `15`.

{% include nav.html %}
