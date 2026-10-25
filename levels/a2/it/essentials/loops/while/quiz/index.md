---
title: Quiz — il ciclo `while`
---

{% include menu.html %}

## 1

What does this program print?

```raku
my $n = 10;
while $n {
    $n--;
}
say $n;
```

{:.quiz-select}
0 | Risposta: (: 0, 1, −1 :)

## 2

Come puoi impedire a questo programma di girare all'infinito? Cambia il codice.

{:.quiz-code .fill}
. | my $n = 5;
. | my $a = 10;
. | while $n {
n a | &nbsp;&nbsp;&nbsp;&nbsp;say $␣<span>-</span>-;
. | }

{% include quiz.html %}

{% include nav.html %}
