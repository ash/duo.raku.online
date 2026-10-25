---
title: Lesen der Befehlszeilenargumente
---

{% include menu.html %}

Die Funktion `MAIN` markiert klar den Anfang des Programms, was nützlich ist. Aber sie ist auch nützlich, weil ihre Argumente die Werte von der Befehlszeile bekommen.

Sie können Befehlszeilenargumente auf zwei Arten lesen. Die erste ist das [`@*ARGS`-Array](/de/essentials/positionals/args-array), das wir schon verwendet haben. Sehen wir uns jetzt die zweite Art an.

Hier ist ein Programm, das zwei Zahlen addiert.

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

So können Sie das Programm ausführen. Es gibt die Summe seiner beiden Argumente aus:

```console
$ raku t.raku 123 45
168
```

Wie jede andere Funktion kann `MAIN` Standardwerte für ihre Argumente haben. Das geht für einige von ihnen oder sogar für alle. Zum Beispiel:

```raku
sub MAIN($a, $b = 100) {
    say $a + $b;
}
```

Wenn Sie das zweite Argument nicht angeben, verwendet das Programm den Standardwert:

```console
$ raku t.raku 15
115
```

{% include nav.html %}
