---
title: '`else` sectiones'
---

{% include menu.html %}

Clausula `if` clausulam `else` post se habere potest. Raku clausulam `else` exsequitur cum condicio non impletur.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'Bene es.';
}
else {
    say 'Medicum voca, fortasse?';
}
```

Clausulam `else` per se adhibere non potes. Ad hoc est melior optio, quae [`unless`](../unless) vocatur. Eam statim videbimus.

{% include nav.html %}
