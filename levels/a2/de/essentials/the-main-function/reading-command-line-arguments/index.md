---
title: Lesen der Befehlszeilenargumente
---

{% include menu.html %}

Die Funktion `MAIN` ist aus zwei Gründen nützlich. Erstens zeigt sie klar, wo das Programm beginnt. Zweitens hat sie Argumente. Die Argumente bekommen ihre Werte von der Befehlszeile.

Es gibt zwei Wege, Befehlszeilenargumente zu lesen. Ein Weg ist das [`@*ARGS`-Array](/de/essentials/positionals/args-array). Wir haben es schon verwendet. Jetzt sehen wir uns den zweiten Weg an.

Sehen Sie sich dieses Programm an. Es addiert zwei Zahlen.

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

Führen Sie das Programm so aus. Es gibt die Summe seiner zwei Argumente aus:

```console
$ raku t.raku 123 45
168
```

Wie jede andere Funktion kann `MAIN` Standardwerte für ihre Argumente haben. Einige Argumente können sie haben. Sogar alle Argumente können sie haben. Zum Beispiel:

```raku
sub MAIN($a, $b = 100) {
    say $a + $b;
}
```

Manchmal gibt es kein zweites Argument. Dann nimmt das Programm den Standardwert:

```console
$ raku t.raku 15
115
```

{% include nav.html %}
