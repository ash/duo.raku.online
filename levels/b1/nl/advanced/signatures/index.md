---
title: Signaturen
translations_gpt:
---

{% include menu.html %}

In het onderdeel Essentials heb je [subroutines gedefinieerd met positionele en benoemde parameters](/nl/essentials/functions). Je gaf de parameters ook standaardwaarden. De lijst van parameters heet de _signatuur_. Dit onderdeel laat nog twee dingen zien die een signatuur kan doen. Ze kan een parameter optioneel maken, en ze kan elk aantal extra argumenten verzamelen.

## Optionele parameters

Een parameter met een vraagteken erachter is _optioneel_. Dat betekent dat de aanroeper hem mag weglaten. In dat geval is de parameter ongedefinieerd. Je kunt hem dus een terugvalwaarde geven met de defined-or-operator `//`:

```raku
sub greet($name, $greeting?) {
    my $g = $greeting // 'Hello';
    say "$g, $name!";
}

greet('Anna');           # Hello, Anna!
greet('Anna', 'Hi');     # Hi, Anna!
```

Als `greet` met één argument wordt aangeroepen, is `$greeting` ongedefinieerd. Daarom gebruikt `//` in plaats daarvan `'Hello'`.

## Slurpy parameters

Een parameter die gemarkeerd is met een `*`, is _slurpy_. Hij neemt alle overige argumenten. Een slurpy array, geschreven als `*@`, verzamelt elk aantal positionele argumenten in een array:

```raku
sub count-them(*@items) {
    say @items.elems;
}

count-them(1, 2, 3, 4); # 4
count-them('a', 'b');   # 2
```

Je kunt gewone parameters mengen met een slurpy parameter. De vaste parameters krijgen eerst hun waarden. Wat overblijft, gaat naar de slurpy array:

```raku
sub titles($name, *@titles) {
    say "$name has {@titles.elems} title(s)";
}

titles('Anna', 'Dr', 'Prof'); # Anna has 2 title(s)
```

Een slurpy hash werkt op dezelfde manier. Je schrijft hem als `*%`, en hij verzamelt alle extra benoemde argumenten in een hash:

```raku
sub register($name, *%options) {
    say "$name: {%options.elems} option(s)";
    say "role is %options<role>";
}

register('Anna', role => 'admin', active => True);
```

De twee benoemde argumenten worden sleutels in `%options`, dus het programma drukt af:

```
Anna: 2 option(s)
role is admin
```

{% include nav.html %}
