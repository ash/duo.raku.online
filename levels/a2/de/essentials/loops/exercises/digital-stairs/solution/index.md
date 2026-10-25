---
title: 'Solution: Digitale Treppen'
---

{% include menu.html %}

Das Programm verwendet zwei Schleifen und zwei Bereiche.

## Code

Hier ist eine mögliche Lösung:

```raku
my $size = prompt 'Geben Sie die Größe ein: ';

for 1..$size -> $n {
    .print for 1..$n;
    print "\n";
}
```

🦋 Finden Sie das Programm in der Datei [digital-stairs.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/digital-stairs.raku).

## Ausgabe

Führen Sie das Programm aus und geben Sie die Größe ein:

```console
$ raku exercises/loops/digital-stairs.raku
Geben Sie die Größe ein: 7
1
12
123
1234
12345
123456
1234567
```

## Kommentar

Sehen Sie sich an, wie das Programm die aktuelle Ziffer ausgibt:

```raku
.print for 1..$n;
```

Wie `say` können Sie auch `print` als Methode aufrufen. Hier ruft der Code die Methode auf der [Themenvariablen](/de/essentials/loops/topic) `$_` auf.

{% include nav.html %}
