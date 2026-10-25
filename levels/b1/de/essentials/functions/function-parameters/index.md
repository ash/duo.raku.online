---
title: Funktionsparameter
---

{% include menu.html %}

Jetzt ist es Zeit, einer Funktion einige Daten zu übergeben. Eine Funktion kann Parameter nehmen, die du in Klammern direkt nach ihrem Namen aufschreibst.

```raku
sub greet($name) {
    say "Hallo, $name!";
}
```

Jetzt kannst du die Funktion verwenden und ihr verschiedene Argumente übergeben:

```raku
greet('Alla');
greet('Karl');
```

Jetzt liefern die zwei Aufrufe derselben Funktion verschiedene Ergebnisse:

```console
$ raku t.raku
Hallo, Alla!
Hallo, Karl!
```

%%tipblock

## Parameter oder Argument

Man verwendet diese zwei Begriffe oft so, als ob sie dasselbe bedeuten. Beide beziehen sich auf „dasselbe“, aber aus verschiedenen Blickwinkeln.

* Ein Parameter ist das, was die Funktion erwartet.
* Ein Argument ist das, was du ihr übergibst.

Im Beispiel oben ist `$name` der Parameter der Funktion. Ihre Argumente sind `'Alla'` und `'Karl'`.

%%/tipblock

## Mehrere Parameter

Eine Funktion kann mehr als einen Parameter nehmen. In diesem Fall liste sie alle auf, mit Kommas dazwischen:

```raku
sub add($x, $y) {
    say $x + $y;
}

add(10, 20); # 30
```

## Keine Parameter

Eine Funktion darf auch gar keine Parameter nehmen. Dann kannst du entweder ein leeres Paar Klammern hinzufügen oder sie ganz weglassen. Am [Anfang dieses Abschnitts](../) haben wir sie weggelassen.

```raku
sub greet() {
    say 'Hallo, Welt!';
}

greet();
```

## Signatur

Die Liste der Parameter einer Funktion wird als _Signatur_ bezeichnet.

{% include nav.html %}
