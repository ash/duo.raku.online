---
title: Labori kun dosieroj
translations_gpt:
---

{% include menu.html %}

Jen la plej facila maniero labori kun dosiero. Vi legas aŭ skribas la tutan dosieron samtempe.

La rutino `spurt` skribas ĉenon en dosieron. Ĝi kreas la dosieron. Aŭ, se la dosiero jam estas tie, ĝi anstataŭigas la malnovan enhavon:

```raku
spurt 'greeting.txt', "Hello, file!\n";
```

La rutino `slurp` legas la tutan dosieron. Ĝi donas al vi la enhavon kiel ĉenon:

```raku
my $text = slurp 'greeting.txt';
print $text; # Hello, file!
```

Per `spurt` kaj `slurp`, vi konservas datumojn kaj ŝargas ilin denove. Vi bezonas nur du mallongajn vokojn. Ĉi tie, ni uzas `print` kaj ne `say`. La kialo estas, ke la teksto jam finiĝas per linifino.

Ĉi tiuj rutinoj laboras kun la tuta dosiero samtempe. Ili estas bonaj por malgrandaj dosieroj. Malgranda dosiero facile eniras en la memoron. Por granda dosiero, vi uzas [dosiertenilon](/eo/oop/file-handles). Vi ankaŭ uzas ĝin por labori kun dosiero linio post linio. Vi lernas pri ĝi ĉe la fino de ĉi tiu sekcio. La sekva temo montras, kiel aldoni al dosiero. La malnova enhavo de la dosiero restas tie.

{% include nav.html %}
