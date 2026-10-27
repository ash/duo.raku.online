---
title: Ne ĉiu eraro estas tuja
translations_gpt:
---

{% include menu.html %}

Defaŭlte, ĵetita escepto tuj haltigas la programon. Vi kaptas ĝin per `try`. Sed ne ĉiu eraro, kiu aspektas fatala, vere haltigas vian programon tuj. Raku havas misfunkciojn, kiuj restas kvietaj. Kelkaj el ili reagas nur, kiam vi uzas la rezulton. Aliaj lasas vin kontroli ilin kaj daŭrigi. Vi jam vidis du el ili en ĉi tiu parto. Indas kolekti ilin en unu loko.

**Divido per nulo.** Dividi per nulo ne malsukcesas tie, kie ĝi estas skribita. La malbona valoro estas farata kaj kviete tenata. Ĝi ĵetas nur, kiam vi *uzas* ĝin. Ekzemple, tio okazas, kiam vi presas ĝin aŭ konvertas ĝin al alia tipo:

```raku
my $x = 1 / 0;    # neniu eraro ĉi tie
say 'still running';
say $x;           # nur nun ĝi ĵetas
```

Ĉi tiu prokrastita konduto kaj la objektoj `Failure` malantaŭ ĝi estas la temo de [Molaj misfunkcioj](/eo/oop/failures).

**Malsukcesanta ekstera programo.** Supozu, ke `run` aŭ `shell` redonas `Proc` por malsukcesinta programo. Ĉi tiu `Proc` ne ĵetas, kiam ĝi estas kreata. Ĝi ĵetas nur, se vi *forĵetas ĝin* sen trakti ĝin. Konservu ĝin kaj legu `.exitcode`, aŭ testu ĝin kiel Boolean valoron. Tiam la misfunkcio restas simpla valoro, al kiu vi povas reagi. Vi vidis tion en [La objekto Proc](/eo/oop/external-programs/the-proc-object).

Ambaŭ kazoj havas unu komunan aferon. Misfunkcio povas esti *prokrastita*, tio estas, lasita por poste. Ĝi fariĝas valoro, kiun vi kontrolas, kiam vi estas preta. Ĝi ne tuj kolapsigas la programon. `try` kaj la fazero `CATCH` traktas erarojn, kiuj estas ĵetataj tuj. La manieroj sur ĉi tiu paĝo traktas erarojn, kiuj ne estas ĵetataj tuj.

{% include nav.html %}
