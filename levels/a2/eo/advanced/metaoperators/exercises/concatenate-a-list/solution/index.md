---
title: 'Solvo: Konstrui URL-on'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La tabelo uzas la citformon kun angulaj krampoj, `<...>`. Ĝi estas la sama kiel `'http', '://', 'example', '.com'`.

1. `[~]` estas redukta meta-operatoro. Ĝi metas la operatoron `~` inter ĉiujn elementojn. La operatoro `~` kunigas ĉenojn. Do `[~] @parts` kunigas la kvar pecojn en unu ĉenon, `http://example.com`.

1. La rezulto estas en la variablo `$url`. Do ni povas uzi ĝin denove. `$url.chars` donas la longon de la tuta URL. Ĝi havas `18` signojn.

{% include nav.html %}
