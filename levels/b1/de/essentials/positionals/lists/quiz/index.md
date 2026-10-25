---
title: Quiz — Liste und Skalar vs. Liste und Array
---

{% include menu.html %}

In den Zuweisungen unten stehen auf der rechten Seite Listen. Von welchem Typ sind die Objekte, die die Variablen enthalten?

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

Hier ist ein schwierigerer Fall. Machen Sie sich keine Sorgen, wenn Sie ihn noch nicht verstehen. Wir kommen im zweiten Teil des Kurses auf dieses Thema zurück.

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
