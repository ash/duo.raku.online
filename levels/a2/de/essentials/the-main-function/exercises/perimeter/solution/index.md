---
title: 'Solution: Umfang eines Rechtecks'
---

{% include menu.html %}

Dieses Programm muss mit einem oder zwei Kommandozeilenargumenten funktionieren. Die Lösung zeigt einen neuen Trick. Die zweite Variable hat einen Standardwert. Das ist der Wert der ersten Variablen: `sub MAIN($a, $b = $a)`. Wir erstellen also keine zwei Multi-Funktionen. Stattdessen haben wir eine allgemeine Funktion. Bei einem Quadrat setzt diese Funktion die Größe der zweiten Seite.

## Code

Hier ist die Lösung:

```raku
sub MAIN($a, $b = $a) {
    my $perimeter = 2 * ($a + $b);

    my $shape = $a == $b ?? 'Quadrat' !! 'Rechteck';
    say "Der Umfang eines $shape beträgt $perimeter.";
}
```

🦋 Finde das Programm in der Datei [perimeter.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/perimeter.raku).

## Ausgabe

Versuche verschiedene Eingabewerte. Teste Quadrate und auch Rechtecke.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
Der Umfang eines Quadrats beträgt 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
Der Umfang eines Rechtecks beträgt 6.
```

Es gibt auch einen dritten Fall. Du solltest ihn auch testen. Übergib zwei gleiche Zahlen. Das Programm muss trotzdem erkennen, dass das ein Quadrat ist:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
Der Umfang eines Quadrats beträgt 8.
```

{% include nav.html %}
