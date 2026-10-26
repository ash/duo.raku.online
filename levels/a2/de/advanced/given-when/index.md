---
title: '`given` und `when`'
---

{% include menu.html %}

Manchmal muss ein Programm zwischen mehreren Möglichkeiten wählen. Eine Kette von `if`- und `elsif`-Prüfungen kann lang werden. Sie wiederholt auch immer dasselbe. Dann ist `given`/`when` oft klarer. Es ist wie die `switch`-Anweisung in anderen Sprachen.

Der `given`-Block nimmt einen Wert. Er macht diesen Wert zum _Thema_. Das Thema ist die spezielle Variable `$_`. Dann vergleicht Raku jeden `when`-Block mit dem Thema. Das erste passende `when` läuft:

```raku
my $n = 2;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    when 3 { say 'three' }
}
```

Dieses Programm gibt aus:

```
two
```

Manche anderen Sprachen haben eine `switch`-Anweisung. Nach einem Treffer kann sie zum nächsten Fall weitergehen. Raku macht das nicht. Wenn ein `when` passt, läuft sein Block. Dann endet der `given`-Block. Raku prüft die anderen `when`-Blöcke nicht.

## Der `default`-Block

Ein `default`-Block läuft, wenn kein `when`-Block passt. Er funktioniert wie der `else`-Teil einer `if`-Anweisung:

```raku
my $n = 5;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    default { say 'many' }
}
```

`$n` ist nicht `1` und nicht `2`. Also gibt das Programm aus:

```
many
```

{% include nav.html %}
