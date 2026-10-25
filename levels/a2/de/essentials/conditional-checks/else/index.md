---
title: '`else`-Blöcke'
---

{% include menu.html %}

Nach einem `if`-Block können Sie einen `else`-Block hinzufügen. Raku führt den `else`-Block aus, wenn die Bedingung `False` ist.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'Du bist in Ordnung.';
}
else {
    say 'Ruf vielleicht einen Arzt an?';
}
```

Sie können einen `else`-Block nicht allein benutzen. Dafür gibt es einen besseren Weg: [`unless`](../unless). Wir sehen ihn uns sehr bald an.

{% include nav.html %}
