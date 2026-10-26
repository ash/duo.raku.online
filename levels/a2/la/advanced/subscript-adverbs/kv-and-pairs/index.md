---
title: Claves, valores, et paria
---

{% include menu.html %}

Alia adverbia mutant **quid** subscriptum reddat. Plerumque subscriptum valorem reddit. Haec adverbia plus reddunt:

* `:v` — valorem; hoc est praedefinitum
* `:k` — clavem vel indicem
* `:kv` — clavem et valorem
* `:p` — `Pair` clavis et valoris

In ordine, "clavis" est index:

```raku
my @a = 10, 20, 30;

say @a[1]:kv; # (1 20)
say @a[1]:p;  # 1 => 20
```

`@a[1]:kv` indicem et valorem simul in lista reddit. `@a[1]:p` ea ut par reddit.

Hoc etiam cum tabulis operatur. Cum segmento valde utile est. Segmentum plures claves simul habet:

```raku
my %h = a => 1, b => 2, c => 3;

say %h<a c>:kv; # (a 1 c 3)
```

Hic segmentum duas claves habet. Eventus est clavis, valor eius, clavis sequens, valor eius. `map`, `for` et similia instrumenta saepe haec adverbia adhibent. Cum eis claves et valores simul tractare potes. Quaestionibus separatis non eges.

{% include nav.html %}
