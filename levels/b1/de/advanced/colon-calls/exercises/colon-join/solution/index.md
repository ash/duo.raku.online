---
title: 'Solution: Verbinden mit Doppelpunkt'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
say <a b c>.reverse.join: '-';
```

🦋 Den Quellcode findest du in der Datei [colon-join.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-join.raku).

## Ausgabe

```
c-b-a
```

## Kommentare

1. `.reverse` steht in der Mitte der Kette, also behält es seine übliche Form. `join` kommt zuletzt, also kann es den Doppelpunkt benutzen. Es übergibt `'-'` genau so wie `join('-')`.

1. Die umgekehrte Liste, `c, b, a`, wird dann mit Bindestrichen verbunden, was `c-b-a` ergibt. Die Doppelpunkt-Form funktioniert mit normalen Werten, nicht nur mit Blöcken.

{% include nav.html %}
