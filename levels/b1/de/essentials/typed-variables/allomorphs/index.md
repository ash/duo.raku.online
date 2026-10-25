---
title: Allomorphe
---

{% include menu.html %}

Sehen Sie sich das folgende Programm an. Bevor Sie es ausführen, versuchen Sie zu raten. Bei welchen Eingabewerten würde es abbrechen, und in welcher Zeile?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

Das Programm erstellt hier drei skalare Variablen. Zwei davon, `$i` und `$s`, sind typisierte Variablen. Das bedeutet, dass `$i` nur ganze Zahlen speichern kann und `$s` nur Zeichenketten.

Der Typ, den `prompt` zurückgibt, hängt von den eingegebenen Zeichen ab. Wenn die Eingabezeichenkette eine ganze Zahl sein kann, hat das Ergebnis den Typ `IntStr`. Dieser Typ ist _sowohl_ `Int` als auch `Str`. Sie können ihn also einer `Int`-Variable oder einer `Str`-Variable zuweisen. Wenn Sie zum Beispiel `1234` eingeben, bricht das Programm nicht ab.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

Der Typ `IntStr` ist ein Beispiel für einen sogenannten _Allomorph_. Das ist ein Datentyp, der zwei andere Typen kombiniert. Hier sind einige weitere Beispiele.

Wenn Sie eine Zeichenkette eingeben, die keine ganze Zahl sein kann, bricht das Programm ab. Das passiert, wenn wir `$input` der Variable `$i` zuweisen:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Beachten Sie, dass Sie auch bei einer Zahl, die keine ganze Zahl ist, einen Fehler bekommen. Ein Ganzzahl-Container kann keine Gleitkommazahl und keine rationale Zahl speichern. Darum löst Raku eine Ausnahme aus:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

Die zweite Zuweisung, `$s = $input`, wird nie scheitern, weil eine Zeichenkette jede Eingabe annehmen kann.

🦋 Sie können den Quellcode dieses Programms in der Datei [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku) finden.

{% include nav.html %}
