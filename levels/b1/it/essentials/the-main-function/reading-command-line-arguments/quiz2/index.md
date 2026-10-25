---
title: Quiz — Valori predefiniti
---

{% include menu.html %}

Dai un'occhiata a questo programma.

```raku
sub MAIN($a = 'abc', $b = 'def') {
    say $a;
    say $b;
}
```

## 1

Cosa stampa il programma se lo esegui così?

```console
$ raku t.raku
```

{:.quiz-code .nocode}
abc def | Inserisci i valori di output: ␣␣␣ e ␣␣␣

## 2

Ora esegui lo stesso programma in questo modo:

```console
$ raku t.raku xyz
```

{:.quiz-code .nocode}
xyz def | Inserisci i valori di output: ␣␣␣ e ␣␣␣

## 3

Infine, questo comando:

```console
$ raku t.raku xyz 123
```

{:.quiz-code .nocode}
xyz 123 | Inserisci i valori di output: ␣␣␣ e ␣␣␣

{% include quiz.html %}

{% include nav.html %}
