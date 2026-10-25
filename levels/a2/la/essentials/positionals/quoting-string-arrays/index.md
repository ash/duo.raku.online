---
title: Quoting catena array
---

{% include menu.html %}

Interdum elementa seriei sunt breves stringae sine spatiis. Raku modum pulchrum habet, ut tali seriei valores des.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Spatia addita circa angulares brackets ponere potes. Aut ea sine spatiis scribere potes. Tu eligis. Compilator utrumque modum accipit.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Uterque modus eundem eventum dat ac haec forma simplex:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Series aut Index

Nota unam rem de exemplis supra. Quotatio `< . . . >` `List` creat. `Array` non creat. Hoc methodo `WHAT` probare potes:

```raku
say <a b c>.WHAT; # (List)
```

Sed indicem seriei assignare potes. Tum seriem cum elementis indicis accipis.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
