---
title: Viktorīna — Noklusējuma vērtības
---

{% include menu.html %}

Aplūkojiet šo programmu.

```raku
sub MAIN($a = 'abc', $b = 'def') {
    say $a;
    say $b;
}
```

## 1

Ko programma izdrukā, ja jūs to palaižat šādi?

```console
$ raku t.raku
```

{:.quiz-code .nocode}
abc def | Ievadiet izvades vērtības: ␣␣␣ un ␣␣␣

## 2

Tagad jūs palaižat to pašu programmu šādā veidā:

```console
$ raku t.raku xyz
```

{:.quiz-code .nocode}
xyz def | Ievadiet izvades vērtības: ␣␣␣ un ␣␣␣

## 3

Visbeidzot, šī komanda:

```console
$ raku t.raku xyz 123
```

{:.quiz-code .nocode}
xyz 123 | Ievadiet izvades vērtības: ␣␣␣ un ␣␣␣

{% include quiz.html %}

{% include nav.html %}
