---
title: Code-Interpolation
---

{% include menu.html %}

Code-Interpolation ist das nächste Level der Interpolation. Sie können Code direkt in einen String in doppelten Anführungszeichen schreiben. Der Code kann einfach sein. Er kann auch komplex sein!

Schreiben Sie den Code zwischen geschweifte Klammern, `{` und `}`:

```raku
my $a = 10;
my $b = 20;
say "The sum of $a and $b is {$a + $b}.";
```

Das Programm gibt aus:

```console
$ raku t.raku 
The sum of 10 and 20 is 30.
```

## Nochmals Variablen

Hier ist eine Anwendung dieser Methode. Manchmal steht direkt nach einer Variablen ein Text. Raku kann diesen Text aus Versehen als Teil des Namens lesen. Um das zu verhindern, setzen Sie die Variable in geschweifte Klammern:

```raku
my $how-many = 5;
my $what = 'suit';
say "There are $how-many {$what}s."; # There are 5 suits.
```

Ohne geschweifte Klammern versucht Raku, eine Variable `$whats` zu interpolieren. Aber diese Variable gibt es nicht.

{% include nav.html %}
