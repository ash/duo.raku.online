---
title: Signaturen
translations_gpt:
---

{% include menu.html %}

In het onderdeel Essentials heb je [subroutines geschreven](/nl/essentials/functions). Ze hadden positionele en benoemde parameters. De parameters hadden standaardwaarden. De lijst van parameters is de _signatuur_. Dit onderdeel laat nog twee dingen zien die een signatuur kan doen. Ze kan een parameter optioneel maken. En ze kan elk aantal extra argumenten verzamelen.

## Optionele parameters

Een parameter met een vraagteken erachter is _optioneel_. De aanroeper kan hem weglaten. Dan is de parameter ongedefinieerd. Je kunt dus een andere waarde geven. Gebruik daarvoor de defined-or-operator `//`:

```raku
sub greet($name, $greeting?) {
    my $g = $greeting // 'Hello';
    say "$g, $name!";
}

greet('Anna');           # Hello, Anna!
greet('Anna', 'Hi');     # Hi, Anna!
```

Hier roepen we `greet` aan met één argument. Dan is `$greeting` ongedefinieerd. Daarom geeft `//` dan `'Hello'`.

## Slurpy parameters

Een parameter met een `*` is _slurpy_. Hij neemt alle argumenten die over zijn. Je schrijft een slurpy array met `*@`. Die verzamelt elk aantal positionele argumenten in een array:

```raku
sub count-them(*@items) {
    say @items.elems;
}

count-them(1, 2, 3, 4); # 4
count-them('a', 'b');   # 2
```

Je kunt gewone parameters samen met een slurpy parameter gebruiken. Eerst krijgen de vaste parameters hun waarden. De rest gaat naar de slurpy array:

```raku
sub titles($name, *@titles) {
    say "$name has {@titles.elems} title(s)";
}

titles('Anna', 'Dr', 'Prof'); # Anna has 2 title(s)
```

Een slurpy hash werkt op dezelfde manier. Je schrijft hem met `*%`. Hij verzamelt alle extra benoemde argumenten in een hash:

```raku
sub register($name, *%options) {
    say "$name: {%options.elems} option(s)";
    say "role is %options<role>";
}

register('Anna', role => 'admin', active => True);
```

De twee benoemde argumenten worden sleutels van `%options`. Daarom drukt het programma af:

```
Anna: 2 option(s)
role is admin
```

{% include nav.html %}
