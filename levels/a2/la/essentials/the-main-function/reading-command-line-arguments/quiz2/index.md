---
title: Quiz — Defaulte valores
---

{% include menu.html %}

Specta hoc programma.

```raku
sub MAIN($a = 'abc', $b = 'def') {
    say $a;
    say $b;
}
```

## 1

Programma sic curris. Quid imprimit?

```console
$ raku t.raku
```

{:.quiz-code .nocode}
abc def | Enter the output values: ␣␣␣ and ␣␣␣

## 2

Nunc idem programma sic curris:

```console
$ raku t.raku xyz
```

{:.quiz-code .nocode}
xyz def | Enter the output values: ␣␣␣ and ␣␣␣

## 3

Finally, this command:

```console
$ raku t.raku xyz 123
```

{:.quiz-code .nocode}
xyz 123 | Enter the output values: ␣␣␣ and ␣␣␣

{% include quiz.html %}

{% include nav.html %}
