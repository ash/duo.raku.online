---
title: Allomorphe
---

{% include menu.html %}

Sehen Sie sich dieses Programm an. Führen Sie es noch nicht aus. Können Sie sagen, bei welchen Eingabewerten es abbricht? Und in welcher Zeile?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

Das Programm erstellt drei skalare Variablen. Zwei davon, `$i` und `$s`, sind typisierte Variablen. Also kann `$i` nur ganze Zahlen enthalten. Und `$s` kann nur Zeichenketten enthalten.

`prompt` gibt einen Wert zurück. Sein Typ hängt von den Zeichen ab, die wir eingeben. Manchmal kann die Eingabezeichenkette eine ganze Zahl sein. Dann hat das Ergebnis den Typ `IntStr`. Dieser Typ ist _sowohl_ `Int` als auch `Str`. Sie können ihn also einer `Int`-Variable zuweisen. Sie können ihn auch einer `Str`-Variable zuweisen. Zum Beispiel geben Sie `1234` ein. Dann bricht das Programm nicht ab.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

Der Typ `IntStr` ist ein Beispiel für einen _Allomorph_. Ein Allomorph ist ein Datentyp aus zwei anderen Typen. Hier sind einige weitere Beispiele.

Geben Sie jetzt eine Zeichenkette ein, die keine ganze Zahl sein kann. Das Programm bricht ab. Das passiert, wenn wir `$input` der Variable `$i` zuweisen:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Manchmal ist die Eingabezeichenkette eine Zahl, aber keine ganze Zahl. Beachten Sie: Auch dann bekommen Sie einen Fehler. Ein Ganzzahl-Container kann keine Gleitkommazahl enthalten. Er kann auch keine rationale Zahl enthalten. Darum bekommen Sie eine Ausnahme:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

Die zweite Zuweisung, `$s = $input`, scheitert nie. Eine Zeichenkette kann jede Eingabe annehmen.

🦋 Sie können den Quellcode dieses Programms in der Datei [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku) finden.

{% include nav.html %}
