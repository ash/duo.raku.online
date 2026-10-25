---
title: Kvizo — Defaŭltaj valoroj
---

{% include menu.html %}

Ĵetu rigardon al ĉi tiu programo.

```raku
sub MAIN($a = 'abc', $b = 'def') {
    say $a;
    say $b;
}
```

## 1

Kion la programo presas, se vi rulas ĝin tiel?

```console
$ raku t.raku
```

{:.quiz-code .nocode}
abc def | Enigu la elirajn valorojn: ␣␣␣ kaj ␣␣␣

## 2

Nun vi rulas la saman programon laŭ ĉi tiu maniero:

```console
$ raku t.raku xyz
```

{:.quiz-code .nocode}
xyz def | Enigu la elirajn valorojn: ␣␣␣ kaj ␣␣␣

## 3

Fine, ĉi tiu komando:

```console
$ raku t.raku xyz 123
```

{:.quiz-code .nocode}
xyz 123 | Enigu la elirajn valorojn: ␣␣␣ kaj ␣␣␣

{% include quiz.html %}

{% include nav.html %}
