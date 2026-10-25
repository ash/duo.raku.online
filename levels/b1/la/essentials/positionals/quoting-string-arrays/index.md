---
title: Quoting catena array
---

{% include menu.html %}

Quaedam series stringarum solum breves stringas sine spatiis habent. Pro talibus seriebus Raku syntaxim pulchram praebet, ut valores earum ponas.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Decernere potes utrum spatia addita circa angulares brackets addas an non. Compilator utramque optionem accipit.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Utraque forma eadem est ac haec forma simplex et directa:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Series vs Index

Nota quod in exemplis supra quotatio `< . . . >` `List` creat, non `Array`. Hoc probare potes methodum `WHAT` vocando:

```raku
say <a b c>.WHAT; # (List)
```

Tamen, si eum seriei assignas, series eadem elementa accipit.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
