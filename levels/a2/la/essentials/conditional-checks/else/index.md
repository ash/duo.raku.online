---
title: '`else` sectiones'
---

{% include menu.html %}

Post clausulam `if`, clausulam `else` addere potes. Raku clausulam `else` exsequitur cum condicio `False` est.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'Bene es.';
}
else {
    say 'Medicum voca, fortasse?';
}
```

Clausulam `else` solam adhibere non potes. Ad hoc melior via est: [`unless`](../unless). Mox eam videmus.

{% include nav.html %}
