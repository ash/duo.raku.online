---
title: 'Izpratne par `for` ciklu'
---

{% include menu.html %}

Cik rindu izdrukā katra no trim zemāk redzamajām programmām?

## 1

```raku
for 1..10 {
    say 'Line';
}
```

{:.quiz-select}
10 | Jūsu atbilde:&nbsp; (: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 :)

## 2

```raku
for 1..10 -> $n {
    say 'Line';
}
```

{:.quiz-select}
10 | Jūsu atbilde:&nbsp; (: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 :)

## 3

```raku
for 1..10 -> $a, $b {
    say 'Line';
}
```

{:.quiz-select}
5 | Jūsu atbilde:&nbsp; (: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 :)

{% include quiz.html %}

{% include nav.html %}
