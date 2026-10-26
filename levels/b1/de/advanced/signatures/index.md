---
title: Signaturen
translations_gpt:
---

{% include menu.html %}

Im Abschnitt „Grundlagen“ haben Sie [Subroutinen mit positionalen und benannten Parametern definiert](/de/essentials/functions). Sie haben den Parametern auch Standardwerte gegeben. Die Liste der Parameter heißt _Signatur_. Dieser Abschnitt zeigt zwei weitere Dinge, die eine Signatur kann. Sie kann einen Parameter optional machen, und sie kann beliebig viele zusätzliche Argumente sammeln.

## Optionale Parameter

Ein Parameter mit einem Fragezeichen dahinter ist _optional_. Das heißt, dass der Aufrufer ihn weglassen darf. In diesem Fall ist der Parameter undefiniert. Also können Sie ihm mit dem Defined-or-Operator `//` einen Ersatzwert geben:

```raku
sub greet($name, $greeting?) {
    my $g = $greeting // 'Hello';
    say "$g, $name!";
}

greet('Anna');           # Hello, Anna!
greet('Anna', 'Hi');     # Hi, Anna!
```

Wenn `greet` mit einem Argument aufgerufen wird, ist `$greeting` undefiniert. Also nimmt `//` stattdessen `'Hello'`.

## Slurpy-Parameter

Ein Parameter, der mit `*` markiert ist, ist _slurpy_. Er nimmt alle restlichen Argumente. Ein Slurpy-Array, geschrieben als `*@`, sammelt beliebig viele positionale Argumente in einem Array:

```raku
sub count-them(*@items) {
    say @items.elems;
}

count-them(1, 2, 3, 4); # 4
count-them('a', 'b');   # 2
```

Sie können gewöhnliche Parameter mit einem Slurpy-Parameter mischen. Die festen Parameter bekommen zuerst ihre Werte. Was übrig bleibt, kommt in das Slurpy-Array:

```raku
sub titles($name, *@titles) {
    say "$name has {@titles.elems} title(s)";
}

titles('Anna', 'Dr', 'Prof'); # Anna has 2 title(s)
```

Ein Slurpy-Hash funktioniert genauso. Sie schreiben ihn als `*%`, und er sammelt alle zusätzlichen benannten Argumente in einem Hash:

```raku
sub register($name, *%options) {
    say "$name: {%options.elems} option(s)";
    say "role is %options<role>";
}

register('Anna', role => 'admin', active => True);
```

Die beiden benannten Argumente werden Schlüssel in `%options`, also gibt das Programm aus:

```
Anna: 2 option(s)
role is admin
```

{% include nav.html %}
