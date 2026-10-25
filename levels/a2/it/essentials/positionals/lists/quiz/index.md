---
title: Quiz — Lista e scalare vs. lista e array
---

{% include menu.html %}

Guarda gli assegnamenti qui sotto. Sul lato destro ci sono delle liste. Che tipo di oggetti contengono le variabili?

### 1

```raku
my $x = (100, 200, 300);
my @x = (100, 200, 300);

say $x.WHAT;
say @x.WHAT;
```

Scegli le risposte giuste:

{:.quiz-select}
(List) | Il tipo di `$x` è&nbsp; (: (Array), (Int), (List) :)
(Array) | Il tipo di `@x` è&nbsp; (: (Array), (Int), (List) :)

## 2*

Questo caso è più difficile. Forse ora non lo capisci. Non preoccuparti. La seconda parte del corso torna su questo argomento.

```raku
my $x = [100, 200, 300];
my @x = [100, 200, 300];

say $x.WHAT;
say @x.WHAT;
```

Scegli le risposte giuste:

{:.quiz-select}
(Array) | Il tipo di `$x` è&nbsp; (: (Array), (Int), (List) :)
(Array) | Il tipo di `@x` è&nbsp; (: (Array), (Int), (List) :)

{% include quiz.html %}

{% include nav.html %}
