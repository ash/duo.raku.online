---
title: '`print`'
---

{% include menu.html %}

Das macht die eingebaute Routine `print`:

1. Ruft die Methode `Str` auf ihren Argumenten auf, um sie in einen String umzuwandeln.
1. Sendet den String an den `STDOUT`-Stream.

Bei einfachen Datentypen erzeugt `print` fast dieselbe Ausgabe wie [`say`](../say). Nur das Zeilenumbruchzeichen am Ende fehlt.

```raku
print 42;
print 'Raku';
```

Die zwei Werte werden direkt nacheinander gedruckt. Auch die ganze Ausgabe endet nicht mit einem Zeilenumbruch.

```console
$ raku t.raku
42Raku
```

Bei Daten, die mehrere Werte enthalten, kann das Ergebnis anders sein als bei `say`. Probieren Sie zum Beispiel Arrays und Hashes:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # Um die Teile zu trennen

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

So sieht die Ausgabe aus:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

Sie können die Routine `print` auch als Methode aufrufen:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
