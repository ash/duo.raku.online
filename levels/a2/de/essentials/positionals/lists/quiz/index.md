---
title: Quiz — Liste und Skalar vs. Liste und Array
---

{% include menu.html %}

Sehen Sie sich die Zuweisungen unten an. Auf der rechten Seite stehen Listen. Welchen Typ haben die Objekte in den Variablen?

### 1

```raku
my $x = (100, 200, 300);
my @x = (100, 200, 300);

say $x.WHAT;
say @x.WHAT;
```

Wählen Sie die richtigen Antworten:

{:.quiz-select}
(Liste) | Der Typ von `$x` ist&nbsp; (: (Array), (Int), (Liste) :)
(Array) | Der Typ von `@x` ist&nbsp; (: (Array), (Int), (Liste) :)

## 2*

Dieser Fall ist schwieriger. Vielleicht verstehen Sie ihn jetzt nicht. Machen Sie sich keine Sorgen. Der zweite Teil des Kurses kommt auf dieses Thema zurück.

```raku
my $x = [100, 200, 300];
my @x = [100, 200, 300];

say $x.WHAT;
say @x.WHAT;
```

Wählen Sie die richtigen Antworten:

{:.quiz-select}
(Array) | Der Typ von `$x` ist&nbsp; (: (Array), (Int), (Liste) :)
(Array) | Der Typ von `@x` ist&nbsp; (: (Array), (Int), (Liste) :)

{% include quiz.html %}

{% include nav.html %}
