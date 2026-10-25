---
title: Quiz — Standaardwaarden
---

{% include menu.html %}

Kijk naar dit programma.

```raku
sub MAIN($a = 'abc', $b = 'def') {
    say $a;
    say $b;
}
```

## 1

Je voert het programma zo uit. Wat print het?

```console
$ raku t.raku
```

{:.quiz-code .nocode}
abc def | Voer de uitvoerwaarden in: ␣␣␣ en ␣␣␣

## 2

Nu voer je hetzelfde programma zo uit:

```console
$ raku t.raku xyz
```

{:.quiz-code .nocode}
xyz def | Voer de uitvoerwaarden in: ␣␣␣ en ␣␣␣

## 3

Tenslotte, dit commando:

```console
$ raku t.raku xyz 123
```

{:.quiz-code .nocode}
xyz 123 | Voer de uitvoerwaarden in: ␣␣␣ en ␣␣␣

{% include quiz.html %}

{% include nav.html %}
