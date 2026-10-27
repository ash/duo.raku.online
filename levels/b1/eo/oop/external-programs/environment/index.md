---
title: La medio
translations_gpt:
---

{% include menu.html %}

Ĉiu programo startas kun aro da _mediaj variabloj_. Ili estas valoroj kun nomoj, kiel `HOME`, `PATH` aŭ `USER`, kiujn la operaciumo donas. En Raku, ili estas en la dinamika hako `%*ENV`:

```raku
say %*ENV<HOME>; # la hejma dosierujo, ekz. /home/anna
```

Por legi median variablon, vi uzas ĝian nomon kiel ŝlosilon en `%*ENV`. Ĉar `%*ENV` estas ordinara hako, vi ankaŭ povas kontroli, ĉu variablo estas starigita. Vi ankaŭ povas ŝanĝi ĝin por la programoj, kiujn vi lanĉas:

```raku
%*ENV<GREETING> = 'Hello';
say %*ENV<GREETING>; # Hello
```

Kiam vi metas ŝlosilon en `%*ENV`, ĝi fariĝas parto de la medio. Ĉiu programo, kiun vi poste lanĉas per `run` aŭ `shell`, ankaŭ ricevas ĉi tiun medion. Tiel vi transdonas agordojn al ida programo:

```raku
%*ENV<GREETING> = 'Hello';

my $proc = run 'sh', '-c', 'echo $GREETING', :out;
say $proc.out.slurp(:close).chomp; # Hello
```

La variablo estas starigita en la medio de via programo *antaŭ* ol la ido startas. Do la ŝelo, kiun `run` lanĉas, jam havas `GREETING` en sia propra medio. Ĝi povas presi la valoron per `echo`. Ĉiu variablo, kiun vi starigas tiel, atingas ĉiun programon, kiun vi lanĉas poste.

La tvigilo `*` montras, ke `%*ENV` estas dinamika variablo. Same estas `$*OUT`, kiun vi vidis en la parto pri enigo kaj eligo. Kelkaj aliaj variabloj kun stelo priskribas la mondon de la ruliĝanta programo. `@*ARGS` tenas la komandliniajn argumentojn, kaj `$*PROGRAM-NAME` estas la nomo de la skripto mem. Kune, ili helpas al programo kompreni la situacion, en kiu oni lanĉis ĝin.

{% include nav.html %}
