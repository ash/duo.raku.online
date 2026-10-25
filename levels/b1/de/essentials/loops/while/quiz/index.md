---
title: Quiz — die `while`-Schleife
---

{% include menu.html %}

## 1

Was gibt dieses Programm aus?

```raku
my $n = 10;
while $n {
    $n--;
}
say $n;
```

{:.quiz-select}
0 | Antwort: (: 0, 1, −1 :)

## 2

Wie können Sie verhindern, dass dieses Programm endlos läuft? Nehmen Sie die nötigen Änderungen am Code vor.

{:.quiz-code .fill}
. | my $n = 5;
. | my $a = 10;
. | while $n {
n a | &nbsp;&nbsp;&nbsp;&nbsp;say $␣<span>-</span>-;
. | }

{% include quiz.html %}

{% include nav.html %}
