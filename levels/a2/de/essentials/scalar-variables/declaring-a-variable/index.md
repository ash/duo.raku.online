---
title: Deklarieren einer Variablen
---

{% include menu.html %}

Sie müssen eine Variable ankündigen, bevor Sie sie verwenden. Raku hat dafür besondere Wörter. Diese Wörter heißen _Deklaratoren_. Um eine Variable zu deklarieren, verwenden Sie `my`, so wie hier:

```raku
my $name;
```

Jetzt haben Sie eine neue Variable. Die Variable hat noch keinen Wert. Aber der Compiler kennt schon ihren Namen. Später verwendet das Programm denselben Namen wieder. Dann weiß der Compiler, welche Variable das ist.

## Mehr als eine Variable

Ein `my` kann zwei oder mehr Variablen deklarieren:

```raku
my ($x, $y);
```

{% include nav.html %}
