---
title: '`if` blokoj'
---

{% include menu.html %}

La `if` kondiĉa kontrolo rigardas kondiĉon. Kiam la kondiĉo estas `True`, bloko de kodo ruliĝas.

```raku
if 10 > 4 {
    say 'Matematiko funkcias!';
}
```

Rimarku, ke vi ne bezonas meti la kondiĉon en rondajn krampojn. Sed vi povas, se vi volas.

Kompreneble, vi tute rajtas uzi variablojn en la testoj:

```raku
my $flag = False;
if $flag {
    # . . . fari ion
}
```

Se pluraj kontroloj uzas la saman variablon, vi povas meti la komparojn en ĉenon:

```raku
my $x = 42;
if 40 < $x < 45 {
    say "Ĝusta respondo $x estas donita.";
}
```

Se la kondiĉo ne estas plenumita, ĝia bloko de kodo ne ruliĝas. La programo tiam daŭras kiel kutime.

```raku
say 'Komenco';
if False {
    say 'Ĉi tio neniam estas presita.';
}
say 'Fino';
```

Ĉi tiu programo nur presas `Komenco` kaj `Fino`.

{% include nav.html %}
