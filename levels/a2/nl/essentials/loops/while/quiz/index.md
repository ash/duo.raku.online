---
title: Quiz — de `while` lus
---

{% include menu.html %}

## 1

Wat print dit programma?

```raku
my $n = 10;
while $n {
    $n--;
}
say $n;
```

{:.quiz-select}
0 | Antwoord: (: 0, 1, −1 :)

## 2

Hoe kun je voorkomen dat dit programma eindeloos draait? Verander de code.

{:.quiz-code .fill}
. | my $n = 5;
. | my $a = 10;
. | while $n {
n a | &nbsp;&nbsp;&nbsp;&nbsp;say $␣<span>-</span>-;
. | }

{% include quiz.html %}

{% include nav.html %}
