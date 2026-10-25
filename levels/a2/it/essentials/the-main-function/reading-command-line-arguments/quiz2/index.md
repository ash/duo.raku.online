---
title: Quiz — Valori predefiniti
---

{% include menu.html %}

Guarda questo programma.

```raku
sub MAIN($a = 'abc', $b = 'def') {
    say $a;
    say $b;
}
```

## 1

Esegui il programma così. Cosa stampa?

```console
$ raku t.raku
```

{:.quiz-code .nocode}
abc def | Inserisci i valori di output: ␣␣␣ e ␣␣␣

## 2

Ora esegui lo stesso programma così:

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
