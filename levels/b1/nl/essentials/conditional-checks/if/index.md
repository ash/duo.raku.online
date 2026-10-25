---
title: '`if` blokken'
---

{% include menu.html %}

De voorwaardelijke controle `if` kijkt naar een conditie. Als de conditie `True` is, draait er een blok code.

```raku
if 10 > 4 {
    say 'Wiskunde werkt!';
}
```

Merk op dat je de conditie niet tussen haakjes hoeft te zetten. Maar het kan als je dat wilt.

Natuurlijk mag je in de tests gerust variabelen gebruiken:

```raku
my $flag = False;
if $flag {
    # . . . doe iets
}
```

Als meerdere controles dezelfde variabele gebruiken, kun je de vergelijkingen in een keten zetten:

```raku
my $x = 42;
if 40 < $x < 45 {
    say "Correct antwoord $x is gegeven.";
}
```

Als de conditie niet klopt, draait het bijbehorende codeblok niet. Het programma gaat dan gewoon verder.

```raku
say 'Begin';
if False {
    say 'Dit wordt nooit afgedrukt.';
}
say 'Einde';
```

Dit programma print alleen `Begin` en `Einde`.

{% include nav.html %}
