---
title: Deklarieren einer Variablen
---

{% include menu.html %}

Bevor Sie eine Variable verwenden, müssen Sie sie ankündigen. Raku hat dafür besondere Wörter, die _Deklaratoren_ heißen. Um eine Variable zu deklarieren, schreiben Sie `my` wie hier:

```raku
my $name;
```

Mit dieser Zeile haben Sie eine neue Variable erstellt, die noch keinen Wert hat. Aber der Compiler kennt sie schon. Wenn derselbe Name später im Programm vorkommt, erkennt der Compiler die Variable.

## Mehr als eine Variable

Sie können zwei oder mehr Variablen mit einem `my` Deklarator deklarieren:

```raku
my ($x, $y);
```

{% include nav.html %}
