---
title: Quiz — Lista e scalare vs. lista e array
---

{% include menu.html %}

Negli assegnamenti qui sotto ci sono delle liste sul lato destro. Che tipo di oggetti contengono le variabili?

### 1

```raku
my $x = (100, 200, 300);
my @x = (100, 200, 300);

say $x.WHAT;
say @x.WHAT;
```

Scegli le risposte corrette:

{:.quiz-select}
(List) | Il tipo di `$x` è&nbsp; (: (Array), (Int), (List) :)
(Array) | Il tipo di `@x` è&nbsp; (: (Array), (Int), (List) :)

## 2*

Ecco un caso più difficile. Non preoccuparti se non lo capisci ancora. Torneremo su questo argomento nella seconda parte del corso.

```raku
my $x = [100, 200, 300];
my @x = [100, 200, 300];

say $x.WHAT;
say @x.WHAT;
```

Scegli le risposte corrette:

{:.quiz-select}
(Array) | Il tipo di `$x` è&nbsp; (: (Array), (Int), (List) :)
(Array) | Il tipo di `@x` è&nbsp; (: (Array), (Int), (List) :)

{% include quiz.html %}

{% include nav.html %}
