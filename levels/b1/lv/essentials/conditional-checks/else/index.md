---
title: '`else` bloki'
---

{% include menu.html %}

`if` blokam var sekot `else` bloks. Raku izpilda `else` bloku, kad nosacījums nav izpildīts.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'You are fine.';
}
else {
    say 'Call a doctor, maybe?';
}
```

Jūs nevarat izmantot `else` bloku atsevišķi. Tam ir labāka iespēja, ko sauc par [`unless`](../unless). Mēs to apskatīsim pēc mirkļa.

{% include nav.html %}
