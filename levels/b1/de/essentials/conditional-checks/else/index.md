---
title: '`else`-Blöcke'
---

{% include menu.html %}

Nach einem `if`-Block kann ein `else`-Block stehen. Raku führt den `else`-Block aus, wenn die Bedingung nicht erfüllt ist.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'Du bist in Ordnung.';
}
else {
    say 'Ruf vielleicht einen Arzt an?';
}
```

Sie können den `else`-Block nicht allein benutzen. Dafür gibt es eine bessere Möglichkeit namens [`unless`](../unless). Wir sehen sie uns gleich an.

{% include nav.html %}
