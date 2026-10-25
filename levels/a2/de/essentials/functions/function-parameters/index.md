---
title: Funktionsparameter
---

{% include menu.html %}

Jetzt übergeben wir einer Funktion einige Daten. Eine Funktion kann Parameter nehmen. Schreibe sie in Klammern direkt nach dem Namen der Funktion.

```raku
sub greet($name) {
    say "Hallo, $name!";
}
```

Jetzt kannst du die Funktion verwenden. Du kannst ihr verschiedene Argumente übergeben:

```raku
greet('Alla');
greet('Karl');
```

Wir rufen dieselbe Funktion zweimal auf. Jetzt sind die Ergebnisse verschieden:

```console
$ raku t.raku
Hallo, Alla!
Hallo, Karl!
```

%%tipblock

## Parameter oder Argument

Man verwendet diese zwei Wörter oft gleich. Beide Wörter meinen „dasselbe“. Aber sie sehen es von verschiedenen Seiten.

* Ein Parameter ist das, was die Funktion bekommen soll.
* Ein Argument ist das, was du der Funktion übergibst.

Im Beispiel oben ist `$name` der Parameter der Funktion. `'Alla'` und `'Karl'` sind ihre Argumente.

%%/tipblock

## Mehrere Parameter

Eine Funktion kann mehr als einen Parameter nehmen. Dann setze Kommas dazwischen:

```raku
sub add($x, $y) {
    say $x + $y;
}

add(10, 20); # 30
```

## Keine Parameter

Eine Funktion kann auch gar keine Parameter haben. Dann kannst du ein leeres Paar Klammern schreiben. Oder du kannst die Klammern weglassen. Das haben wir am [Anfang dieses Abschnitts](../) gemacht.

```raku
sub greet() {
    say 'Hallo, Welt!';
}

greet();
```

## Signatur

Die Liste der Parameter einer Funktion ist ihre _Signatur_.

{% include nav.html %}
