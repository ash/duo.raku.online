---
title: Labori kun dosieroj
translations_gpt:
---

{% include menu.html %}

En la plej simpla kazo, vi legas aŭ skribas tutan dosieron samtempe.

La rutino `spurt` skribas ĉenon en dosieron. Ĝi kreas la dosieron, aŭ anstataŭigas ĝian enhavon, se la dosiero jam ekzistas:

```raku
spurt 'greeting.txt', "Hello, file!\n";
```

La rutino `slurp` relegas la tutan dosieron en ĉenon:

```raku
my $text = slurp 'greeting.txt';
print $text; # Hello, file!
```

Kune, `spurt` kaj `slurp` konservas datumojn kaj ŝargas ilin denove per nur du mallongaj vokoj. Ni uzas `print` ĉi tie anstataŭ `say`, ĉar la teksto jam finiĝas per linifino.

Ĉi tiuj rutinoj laboras kun la tuta dosiero samtempe. Ili plej taŭgas por dosieroj, kiuj estas sufiĉe malgrandaj por facile eniri en la memoron. Por pli grandaj dosieroj, vi uzas [dosiertenilon](/eo/oop/file-handles). Vi ankaŭ bezonas ĝin por labori kun dosiero linio post linio. Ni traktas dosiertenilojn ĉe la fino de ĉi tiu sekcio. La sekva temo montras, kiel aldoni al dosiero anstataŭ anstataŭigi ĝin.

{% include nav.html %}
