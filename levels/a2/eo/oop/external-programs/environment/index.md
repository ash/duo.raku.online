---
title: La medio
translations_gpt:
---

{% include menu.html %}

Ĉiu programo startas kun aro da _mediaj variabloj_. Ĉiu el ili estas valoro kun nomo. Kelkaj ekzemploj estas `HOME`, `PATH` kaj `USER`. La operaciumo donas ĉi tiujn valorojn al la programo. En Raku, vi trovas ilin en la dinamika hako `%*ENV`:

```raku
say %*ENV<HOME>; # la hejma dosierujo, ekz. /home/anna
```

Vi legas median variablon per ĝia nomo. Uzu la nomon kiel ŝlosilon en `%*ENV`. `%*ENV` estas ordinara hako. Do vi ankaŭ povas kontroli, ĉu variablo havas valoron. Vi eĉ povas ŝanĝi ĝin por la programoj, kiujn vi lanĉas:

```raku
%*ENV<GREETING> = 'Hello';
say %*ENV<GREETING>; # Hello
```

Vi povas meti ŝlosilon en `%*ENV`. Tiam la ŝlosilo fariĝas parto de la medio. Nun vi lanĉas programon per `run` aŭ `shell`. Ĉi tiu programo estas ido de via programo. Ĉiu ida programo ricevas la saman medion. Tiel vi transdonas agordojn al ida programo:

```raku
%*ENV<GREETING> = 'Hello';

my $proc = run 'sh', '-c', 'echo $GREETING', :out;
say $proc.out.slurp(:close).chomp; # Hello
```

Via programo starigas la variablon *antaŭ* ol ĝi lanĉas la idon. Ĉi tie, `run` lanĉas ŝelon kiel la idon. Ŝelo estas programo, kiu legas komandojn kaj rulas ilin. Ĉi tiu ŝelo jam havas `GREETING` en sia propra medio. Do ĝi povas presi la valoron per `echo`. Vi povas starigi ajnan variablon tiel. Tiam ĝi atingas ĉiun programon, kiun vi lanĉas poste.

La tvigilo `*` diras al vi, ke `%*ENV` estas dinamika variablo. Tvigilo estas signo post la sigelo. `$*OUT` ankaŭ estas dinamika variablo. Vi renkontis ĝin en la parto pri enigo kaj eligo. Kelkaj aliaj variabloj kun stelo rakontas al vi pri la ruliĝanta programo. `@*ARGS` tenas la komandliniajn argumentojn. Ili estas la valoroj post la nomo de la programo en la komando. `$*PROGRAM-NAME` estas la nomo de la skripto mem. Kune, ĉi tiuj variabloj diras al programo, kiel oni lanĉis ĝin.

{% include nav.html %}
