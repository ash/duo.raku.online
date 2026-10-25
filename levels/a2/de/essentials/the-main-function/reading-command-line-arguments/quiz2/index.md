---
title: Quiz — Standardwerte
---

{% include menu.html %}

Sehen Sie sich dieses Programm an.

```raku
sub MAIN($a = 'abc', $b = 'def') {
    say $a;
    say $b;
}
```

## 1

Sie führen das Programm so aus. Was gibt es aus?

```console
$ raku t.raku
```

{:.quiz-code .nocode}
abc def | Geben Sie die Ausgabewerte ein: ␣␣␣ und ␣␣␣

## 2

Jetzt führen Sie dasselbe Programm so aus:

```console
$ raku t.raku xyz
```

{:.quiz-code .nocode}
xyz def | Geben Sie die Ausgabewerte ein: ␣␣␣ und ␣␣␣

## 3

Schließlich dieser Befehl:

```console
$ raku t.raku xyz 123
```

{:.quiz-code .nocode}
xyz 123 | Geben Sie die Ausgabewerte ein: ␣␣␣ und ␣␣␣

{% include quiz.html %}

{% include nav.html %}
