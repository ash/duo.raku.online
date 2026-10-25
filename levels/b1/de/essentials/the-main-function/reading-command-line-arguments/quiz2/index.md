---
title: Quiz — Standardwerte
---

{% include menu.html %}

Schauen Sie sich einmal dieses Programm an.

```raku
sub MAIN($a = 'abc', $b = 'def') {
    say $a;
    say $b;
}
```

## 1

Was gibt das Programm aus, wenn Sie es so ausführen?

```console
$ raku t.raku
```

{:.quiz-code .nocode}
abc def | Geben Sie die Ausgabewerte ein: ␣␣␣ und ␣␣␣

## 2

Nun führen Sie dasselbe Programm auf diese Weise aus:

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
