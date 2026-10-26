---
title: Claves, valores, et paria
---

{% include menu.html %}

Alia adverbia mutant **quid** subscriptum reddat. Plerumque subscriptum solum valorem reddit, sed haec adverbia plus reddunt:

* `:v` — valorem (per defaltam)
* `:k` — clavem (vel indicem)
* `:kv` — et clavem et valorem
* `:p` — `Pair` clavis et valoris

In ordine, "clavis" est index:

```raku
my @a = 10, 20, 30;

say @a[1]:kv; # (1 20)
say @a[1]:p;  # 1 => 20
```

`@a[1]:kv` indicem et valorem simul in lista dat. `@a[1]:p` ea ut par dat.

Idem in tabulis operatur. Praecipue utile est cum segmento plurium clavium simul:

```raku
my %h = a => 1, b => 2, c => 3;

say %h<a c>:kv; # (a 1 c 3)
```

Hic segmentum duarum clavium quamque clavem et post eam valorem eius reddit. `map`, `for` et similia instrumenta saepe his adverbiis nituntur. Tibi permittunt claves et valores pariter tractare, sine quaestionibus separatis.

{% include nav.html %}
