---
title: 'Solution: Umfang eines Rechtecks'
---

{% include menu.html %}

Dieses Programm muss ein oder zwei Kommandozeilenargumente annehmen können. Die Lösung zeigt einen neuen Trick. Der Standardwert der zweiten Variablen ist der Wert der ersten: `sub MAIN($a, $b = $a)`. Statt zwei Multi-Funktionen haben wir also eine allgemeine Funktion. Wenn die Form ein Quadrat ist, setzt diese Funktion die Größe der zweiten Seite.

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

Versuche verschiedene Eingabewerte, um sowohl Quadrate als auch Rechtecke zu testen.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
Der Umfang eines Quadrats beträgt 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
Der Umfang eines Rechtecks beträgt 6.
```

Beachte, dass es einen dritten Fall gibt, den du auch testen solltest. Bei zwei gleichen Zahlen soll das Programm trotzdem verstehen, dass es ein Quadrat ist:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
Der Umfang eines Quadrats beträgt 8.
```

{% include nav.html %}
