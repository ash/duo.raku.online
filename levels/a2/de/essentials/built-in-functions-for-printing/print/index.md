---
title: '`print`'
---

{% include menu.html %}

Die eingebaute Routine `print` macht zwei Dinge:

1. Wandelt ihre Argumente in einen String um. Dazu ruft sie die Methode `Str` auf ihnen auf.
1. Sendet den String an den `STDOUT`-Stream.

Bei einfachen Datentypen funktioniert `print` wie [`say`](../say). Aber `print` fügt am Ende kein Zeilenumbruchzeichen hinzu.

```raku
print 42;
print 'Raku';
```

Das Programm druckt die Werte nacheinander. Auch am Ende der ganzen Ausgabe gibt es keinen Zeilenumbruch.

```console
$ raku t.raku
42Raku
```

Manche Datentypen enthalten viele Werte. Bei ihnen können `print` und `say` verschiedene Ergebnisse zeigen. Probieren Sie zum Beispiel Arrays und Hashes:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # Um die Teile zu trennen

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Hier ist die Ausgabe:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

Sie können `print` auch als Methode aufrufen:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
