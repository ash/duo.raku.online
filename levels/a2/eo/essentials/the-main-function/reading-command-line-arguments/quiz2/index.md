---
title: Kvizo — Defaŭltaj valoroj
---

{% include menu.html %}

Rigardu ĉi tiun programon.

```raku
sub MAIN($a = 'abc', $b = 'def') {
    say $a;
    say $b;
}
```

## 1

Vi rulas la programon tiel. Kion ĝi presas?

```console
$ raku t.raku
```

{:.quiz-code .nocode}
abc def | Enigu la elirajn valorojn: ␣␣␣ kaj ␣␣␣

## 2

Nun vi rulas la saman programon tiel:

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
