---
title: Heredokoj
translations_gpt:
---

{% include menu.html %}

_Heredoc_ estas cita formo por teksto kun pluraj linioj. Ĝi ne uzas limigilojn ĉirkaŭ la teksto. Anstataŭe, vi donas finan vorton per `:to`. La ĉeno komenciĝas en la sekva linio. Ĝi daŭras ĝis linio, kiu enhavas nur tiun vorton:

```raku
my $text = q:to/END/;
Hello,
World!
END

print $text;
```

Tio presas:

```
Hello,
World!
```

La finilo markas, kie la teksto finiĝas. Ĉi tie ĝi estas `END`, sed ajna vorto taŭgas. Rimarku la `print`. La teksto tenas la novlinion antaŭ la finilo. Do ĝi jam finiĝas per liniorompo. Kun `say`, vi ricevus duan kaj malplenan linion ĉe la fino. La heredoc komenciĝas per `q:to`, do la teksto ne estas interpolita. Por interpoli variablojn, uzu `qq:to`:

```raku
my $name = 'Anna';

my $greeting = qq:to/EOF/;
Dear $name,
Welcome!
EOF

print $greeting;
```

Jen utila detalo. La **krommarĝeno de la ferma finilo** estas forigita el ĉiu linio de la teksto. Do vi povas krommarĝenigi heredoc-on, por ke ĝi kongruu kun la kodo ĉirkaŭ ĝi. Tiu krommarĝeno ne aperas en la ĉeno:

```raku
sub greeting {
    return q:to/END/;
        Hello,
        World!
        END
}

print greeting;
```

Tio presas la samajn `Hello,` kaj `World!` kiel en la unua ekzemplo. Ĉi tie, la ferma `END` estas krommarĝenigita per ok spacetoj. Do ok spacetoj estas forigitaj el ĉiu linio. La redonita ĉeno estas nur `Hello,\nWorld!`, sen spacetoj komence de la linioj.

La ferma finilo difinas, kiom da spacetoj estas forigitaj. Do ĉiu linio de la teksto devas havi almenaŭ tiom da krommarĝeno. Se linio havas malpli da spacetoj komence, Raku ne povas forigi la plenan kvanton. Tiam ĝi avertas: *Asked to remove 8 spaces, but the shortest indent is 4 spaces*. Por eviti tion, ne krommarĝenigu la finilon pli profunde ol la malplej krommarĝenigita linio. Heredoc-oj estas la natura elekto por ŝablonoj, mesaĝoj kaj ajna teksto kun pluraj linioj.

{% include nav.html %}
