---
title: Code-Interpolation
---

{% include menu.html %}

Code-Interpolation ist das nächste Level der Interpolation. Damit können Sie Code direkt in einen String in doppelten Anführungszeichen setzen. Der Code kann einfach oder sogar komplex sein!

Der Code, den Sie interpolieren möchten, steht zwischen geschweiften Klammern:

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

Eine Anwendung dieser Methode ist der Fall, wenn nach einer Variablen ein Text folgen muss. Dieser Text könnte falsch als Rest des Variablennamens gelesen werden. Um das zu verhindern, setzen Sie die Variable in geschweifte Klammern:

```raku
my $how-many = 5;
my $what = 'suit';
say "There are $how-many {$what}s."; # There are 5 suits.
```

Ohne geschweifte Klammern würde Raku versuchen, `$whats` zu interpolieren, eine Variable, die es nicht gibt.

{% include nav.html %}
