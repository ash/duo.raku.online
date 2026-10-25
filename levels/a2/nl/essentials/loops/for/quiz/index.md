---
title: De `for` lus begrijpen
---

{% include menu.html %}

Hier zijn drie programma's. Hoeveel regels drukt elk programma af?

## 1

```raku
for 1..10 {
    say 'Regel';
}
```

{:.quiz-select}
10 | Jouw antwoord:&nbsp; (: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 :)

## 2

```raku
for 1..10 -> $n {
    say 'Regel';
}
```

{:.quiz-select}
10 | Jouw antwoord:&nbsp; (: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 :)

## 3

```raku
for 1..10 -> $a, $b {
    say 'Regel';
}
```

{:.quiz-select}
5 | Jouw antwoord:&nbsp; (: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 :)

{% include quiz.html %}

{% include nav.html %}
