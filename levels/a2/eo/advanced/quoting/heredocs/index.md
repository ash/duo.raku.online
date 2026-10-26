---
title: Heredokoj
translations_gpt:
---

{% include menu.html %}

_Heredoc_ estas cita formo por teksto kun multaj linioj. Ĝi ne havas limigilojn ĉirkaŭ la teksto. Anstataŭe, vi donas finan vorton per `:to`. La finilo markas la finon. La ĉeno komenciĝas en la sekva linio. Ĝi daŭras ĝis linio kun nur tiu vorto:

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

La finilo markas la finon de la teksto. Ĉi tie ĝi estas `END`, sed vi povas uzi ajnan vorton. Rigardu la `print`. La teksto tenas la novlinion antaŭ la finilo. Do la teksto jam finiĝas per liniorompo. `say` aldonas duan. Tiam vi ricevas malplenan linion ĉe la fino. Ĉi tiu heredoc komenciĝas per `q:to`. Do Raku ne interpolas la tekston. Por interpoli variablojn, uzu `qq:to`:

```raku
my $name = 'Anna';

my $greeting = qq:to/EOF/;
Dear $name,
Welcome!
EOF

print $greeting;
```

Jen utila detalo. Rigardu la **krommarĝenon de la ferma finilo**. Raku forigas ĝin el ĉiu linio de la teksto. Do vi povas krommarĝenigi heredoc-on kiel la kodon ĉirkaŭ ĝi. La krommarĝeno ne eniras la ĉenon:

```raku
sub greeting {
    return q:to/END/;
        Hello,
        World!
        END
}

print greeting;
```

Tio presas la samajn `Hello,` kaj `World!` kiel la unua ekzemplo. Ĉi tie, la ferma `END` havas ok spacetojn antaŭ si. Do Raku forigas ok spacetojn el ĉiu linio. La funkcio redonas nur `Hello,\nWorld!`. Ne estas spacetoj komence.

La ferma finilo decidas, kiom da spacetoj Raku forigas. Do ĉiu linio de la teksto bezonas almenaŭ tiom da spacetoj. Eble iu linio havas malpli da spacetoj. Tiam Raku ne povas forigi ĉiujn. Ĝi avertas: *Asked to remove 8 spaces, but the shortest indent is 4 spaces*. Evitu ĉi tiun averton. Ne krommarĝenigu la finilon pli ol iu ajn linio de la teksto. Heredoc-oj estas la natura elekto por ŝablonoj kaj mesaĝoj. Fakte, ili taŭgas por ajna teksto kun pluraj linioj.

{% include nav.html %}
