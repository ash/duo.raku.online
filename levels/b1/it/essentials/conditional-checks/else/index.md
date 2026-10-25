---
title: Blocchi `else`
---

{% include menu.html %}

Dopo un blocco `if` può esserci un blocco `else`. Raku esegue il blocco `else` quando la condizione non è soddisfatta.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'You are fine.';
}
else {
    say 'Call a doctor, maybe?';
}
```

Non puoi usare il blocco `else` da solo. Per questo c'è un'opzione migliore, che si chiama [`unless`](../unless). Lo vedremo tra un attimo.

{% include nav.html %}
