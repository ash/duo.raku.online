---
title: Блокове `else`
---

{% include menu.html %}

След блок `if` можете да добавите блок `else`. Raku изпълнява блока `else`, когато условието е `False`.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'You are fine.';
}
else {
    say 'Call a doctor, maybe?';
}
```

Не можете да използвате блок `else` сам. За това има по-добър начин: [`unless`](../unless). Скоро ще го разгледаме.

{% include nav.html %}
