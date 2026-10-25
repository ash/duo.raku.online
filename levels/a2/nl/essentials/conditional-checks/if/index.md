---
title: '`if` blokken'
---

{% include menu.html %}

`if` is een voorwaardelijke controle. Die test een conditie. Als de conditie `True` is, voert `if` een blok code uit.

```raku
if 10 > 4 {
    say 'Wiskunde werkt!';
}
```

Je hoeft de conditie niet tussen ronde haakjes te zetten. Maar het mag als je wilt.

Natuurlijk kun je variabelen in de tests gebruiken:

```raku
my $flag = False;
if $flag {
    # . . . doe iets
}
```

Soms gebruiken twee of meer controles dezelfde variabele. Dan kun je de vergelijkingen als een keten schrijven:

```raku
my $x = 42;
if 40 < $x < 45 {
    say "Correct antwoord $x is gegeven.";
}
```

Soms is de conditie `False`. Dan voert Raku het codeblok niet uit. Het programma gaat gewoon verder.

```raku
say 'Begin';
if False {
    say 'Dit wordt nooit afgedrukt.';
}
say 'Einde';
```

Dit programma print alleen `Begin` en `Einde`.

{% include nav.html %}
