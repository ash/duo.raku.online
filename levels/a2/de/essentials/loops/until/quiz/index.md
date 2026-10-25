---
title: Quiz — die `until`-Schleife
---

{% include menu.html %}

## 1

Was gibt dieses Programm aus?

```raku
my $n = 0;
until $n > 5 {
    $n++;
}
say $n;
```

{:.quiz-select}
6 | Antwort: (: 4, 5, 6 :)

## 2

Was müssen Sie ändern? Die Schleife muss genau fünfmal laufen.

{:.quiz-code .fill}
. | my $n = 1;
6 5 | until $n == ␣ {
. | &nbsp;&nbsp;&nbsp;&nbsp;say $n;
. | &nbsp;&nbsp;&nbsp;&nbsp;$n++;
. | }

{% include quiz.html %}

{% include nav.html %}
