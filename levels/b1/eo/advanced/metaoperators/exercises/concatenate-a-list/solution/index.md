---
title: 'Solvo: Konstrui URL-on'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my @parts = <http :// example .com>;

my $url = [~] @parts;
say $url;
say $url.chars;
```

🦋 Vi povas trovi la fontkodon en la dosiero [concatenate-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/concatenate-a-list.raku).

## Eligo

```
http://example.com
18
```

## Komentoj

1. La tabelo estas skribita per la angulkrampa citformo `<...>`. Ĝi signifas la samon kiel `'http', '://', 'example', '.com'`.

1. La redukta meta-operatoro `[~]` metas la operatoron `~` inter ĉiujn elementojn. Ĉi tiu operatoro kunigas ĉenojn. Do `[~] @parts` kunigas la kvar pecojn en la solan ĉenon `http://example.com`.

1. Ni konservas la rezulton en `$url`, por ke ni povu uzi ĝin denove. Poste `$url.chars` montras, ke la kompleta URL havas `18` signojn.

{% include nav.html %}
