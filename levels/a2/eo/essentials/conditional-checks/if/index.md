---
title: '`if` blokoj'
---

{% include menu.html %}

`if` estas kondiĉa kontrolo. Ĝi testas kondiĉon. Se la kondiĉo estas `True`, `if` rulas blokon de kodo.

```raku
if 10 > 4 {
    say 'Matematiko funkcias!';
}
```

Vi ne bezonas meti la kondiĉon en rondajn krampojn. Sed vi povas, se vi volas.

Kompreneble, vi povas uzi variablojn en la testoj:

```raku
my $flag = False;
if $flag {
    # . . . fari ion
}
```

Kelkfoje du aŭ pli da kontroloj uzas la saman variablon. Tiam vi povas skribi la komparojn kiel ĉenon:

```raku
my $x = 42;
if 40 < $x < 45 {
    say "Ĝusta respondo $x estas donita.";
}
```

Kelkfoje la kondiĉo estas `False`. Tiam Raku ne rulas la blokon de kodo. La programo simple daŭras.

```raku
say 'Komenco';
if False {
    say 'Ĉi tio neniam estas presita.';
}
say 'Fino';
```

Ĉi tiu programo presas nur `Komenco` kaj `Fino`.

{% include nav.html %}
