---
title: Блокове `else`
---

{% include menu.html %}

Блокът `if` може да има блок `else` след себе си. Raku изпълнява блока `else`, когато условието не е изпълнено.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'You are fine.';
}
else {
    say 'Call a doctor, maybe?';
}
```

Не можете да използвате блока `else` самостоятелно. За това има по-добър вариант, който се казва [`unless`](../unless). Ще го разгледаме след малко.

{% include nav.html %}
