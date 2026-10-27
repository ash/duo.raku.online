---
title: Ne ĉiu eraro estas tuja
translations_gpt:
---

{% include menu.html %}

Escepto estas speco de eraro. Normale, ĵetita escepto tuj haltigas la programon. Vi kaptas ĝin per `try`. Sed kelkaj eraroj nur aspektas fatalaj. Ili ne haltigas vian programon en la momento, kiam ili okazas. En Raku, kelkaj misfunkcioj restas kvietaj. Kelkaj el ili reagas nur poste, kiam vi uzas la rezulton. Aliaj lasas vin rigardi ilin, kaj via programo daŭras. Vi jam vidis du el ili en ĉi tiu parto. Estas utile vidi ilin kune en unu loko.

**Divido per nulo.** Ĝi ne malsukcesas en sia propra linio. La programo faras la malbonan valoron kaj kviete tenas ĝin. La valoro ĵetas escepton nur, kiam vi *uzas* ĝin. Ekzemple, vi presas ĝin aŭ ŝanĝas ĝin al alia tipo:

```raku
my $x = 1 / 0;    # neniu eraro ĉi tie
say 'still running';
say $x;           # nur nun ĝi ĵetas
```

La paĝo [Molaj misfunkcioj](/eo/oop/failures) klarigas ĉi tiun malfruan reagon. Ĝi ankaŭ klarigas la objektojn `Failure` malantaŭ ĝi.

**Malsukcesanta ekstera programo.** `run` kaj `shell` redonas `Proc`. Foje la programo malsukcesas. Ĝia `Proc` ne ĵetas escepton en tiu momento. Ĝi ĵetas nur en unu kazo. Tio estas, kiam vi *forĵetas* la `Proc` sen trakti ĝin. Do tenu la `Proc` kaj legu `.exitcode`. Aŭ kontrolu, ĉu ĝi estas vera aŭ malvera. Tiam la misfunkcio restas simpla valoro. Vi povas reagi al ĝi. Vi vidis tion en [La objekto Proc](/eo/oop/external-programs/the-proc-object).

Ambaŭ kazoj havas unu komunan aferon. Misfunkcio povas esti *prokrastita*, tio estas, lasita por poste. Tiam ĝi ne tuj kolapsigas la programon. Ĝi fariĝas valoro. Vi rigardas ĉi tiun valoron, kiam vi estas preta. `try` kaj la fazero `CATCH` traktas erarojn, kiujn Raku ĵetas tuj. La du manieroj sur ĉi tiu paĝo traktas la aliajn erarojn.

{% include nav.html %}
