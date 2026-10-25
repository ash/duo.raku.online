---
title: 'Kvizo — Multi-`MAIN`'
---

{% include menu.html %}

Ĉi tiu programo havas tri versiojn de la funkcio `MAIN`:

```raku
multi sub MAIN() { say 'Default mode' }
multi sub MAIN('help') { say 'Help mode' }
multi sub MAIN(Str $mode) { say "Mode '$mode'" }
```

Vi rulas la programon per ĉiu komando sube. Kion ĝi presas?

## 1

```console
$ raku t.raku new
```

{:.quiz-select}
Presas “Mode &apos;new&apos;” | (: Presas “Default mode”, Presas “Help mode”, Presas “Mode &apos;new&apos;”, Finiĝas kun escepto :)

## 2

```console
$ raku t.raku 1001
```

{:.quiz-select}
Presas “Mode &apos;1001&apos;” | (: Presas “Default mode”, Presas “Help mode”, Presas “Mode &apos;1001&apos;”, Finiĝas kun escepto :)

## 3

```console
$ raku t.raku
```

{:.quiz-select}
Presas “Default mode” | (: Presas “Default mode”, Presas “Help mode”, Presas “Mode &apos;&apos;”, Finiĝas kun escepto :)

## 4

```console
$ raku t.raku Help
```

{:.quiz-select}
Presas “Mode &apos;Help&apos;” | (: Presas “Default mode”, Presas “Help mode”, Presas “Mode &apos;Help&apos;”, Finiĝas kun escepto :) | Parametroj estas sentemaj al majuskloj kaj minuskloj en ĉi tiu kazo.

{% include quiz.html %}

{% include nav.html %}
