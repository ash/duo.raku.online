---
title: 'Solvo: Akronimo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my $phrase = 'hyper text markup language';

my $acronym = '';
for $phrase.words -> $word {
    $acronym ~= $word.substr(0, 1);
}

say $acronym.uc;
```

🦋 Vi povas trovi la fontkodon en la dosiero [acronym.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/acronym.raku).

## Eligo

```
HTML
```

## Komentoj

1. `$phrase.words` redonas la liston de vortoj. Por ĉiu vorto, la buklo prenas la unuan signon per `substr(0, 1)`. Poste ĝi aldonas ĉi tiun signon al la fino de `$acronym`.

1. Kiam ĉiuj unuaj literoj estas kolektitaj, `uc` faras el la rezulto majusklojn: `HTML`.

{% include nav.html %}
