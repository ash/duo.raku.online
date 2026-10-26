---
title: Signaturen
translations_gpt:
---

{% include menu.html %}

Im Abschnitt „Grundlagen“ haben Sie [Subroutinen geschrieben](/de/essentials/functions). Sie hatten positionale und benannte Parameter. Die Parameter hatten Standardwerte. Die Liste der Parameter ist die _Signatur_. Dieser Abschnitt zeigt zwei weitere Dinge, die eine Signatur kann. Sie kann einen Parameter optional machen. Und sie kann beliebig viele zusätzliche Argumente sammeln.

## Optionale Parameter

Ein Parameter mit einem Fragezeichen dahinter ist _optional_. Der Aufrufer kann ihn weglassen. Dann ist der Parameter undefiniert. Also können Sie einen Ersatzwert angeben. Nutzen Sie dafür den Defined-or-Operator `//`:

```raku
sub greet($name, $greeting?) {
    my $g = $greeting // 'Hello';
    say "$g, $name!";
}

greet('Anna');           # Hello, Anna!
greet('Anna', 'Hi');     # Hi, Anna!
```

Hier rufen wir `greet` mit einem Argument auf. Dann ist `$greeting` undefiniert. Also liefert `//` stattdessen `'Hello'`.

## Slurpy-Parameter

Ein Parameter mit einem `*` ist _slurpy_. Er nimmt alle Argumente, die übrig sind. Ein Slurpy-Array schreiben Sie mit `*@`. Es sammelt beliebig viele positionale Argumente in einem Array:

```raku
sub count-them(*@items) {
    say @items.elems;
}

count-them(1, 2, 3, 4); # 4
count-them('a', 'b');   # 2
```

Sie können normale Parameter zusammen mit einem Slurpy-Parameter nutzen. Zuerst bekommen die festen Parameter ihre Werte. Alles andere kommt in das Slurpy-Array:

```raku
sub titles($name, *@titles) {
    say "$name has {@titles.elems} title(s)";
}

titles('Anna', 'Dr', 'Prof'); # Anna has 2 title(s)
```

Ein Slurpy-Hash funktioniert genauso. Sie schreiben ihn mit `*%`. Er sammelt alle zusätzlichen benannten Argumente in einem Hash:

```raku
sub register($name, *%options) {
    say "$name: {%options.elems} option(s)";
    say "role is %options<role>";
}

register('Anna', role => 'admin', active => True);
```

Die zwei benannten Argumente werden Schlüssel von `%options`. Also gibt das Programm aus:

```
Anna: 2 option(s)
role is admin
```

{% include nav.html %}
