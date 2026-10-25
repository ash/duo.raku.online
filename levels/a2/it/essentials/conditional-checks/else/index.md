---
title: Blocchi `else`
---

{% include menu.html %}

Dopo un blocco `if`, puoi aggiungere un blocco `else`. Raku esegue il blocco `else` quando la condizione è `False`.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'You are fine.';
}
else {
    say 'Call a doctor, maybe?';
}
```

Non puoi usare un blocco `else` da solo. Per questo c'è un modo migliore: [`unless`](../unless). Lo vediamo molto presto.

{% include nav.html %}
