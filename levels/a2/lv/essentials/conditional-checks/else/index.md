---
title: '`else` bloki'
---

{% include menu.html %}

Pēc `if` bloka jūs varat pievienot `else` bloku. Raku izpilda `else` bloku, kad nosacījums ir `False`.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'You are fine.';
}
else {
    say 'Call a doctor, maybe?';
}
```

Jūs nevarat izmantot `else` bloku vienu pašu. Tam ir labāks veids: [`unless`](../unless). Mēs to apskatīsim pavisam drīz.

{% include nav.html %}
