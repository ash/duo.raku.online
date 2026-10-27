---
title: Dosierteniloj
translations_gpt:
---

{% include menu.html %}

Legi aŭ skribi tutan dosieron samtempe estas facile. Sed foje vi volas trairi dosieron linio post linio. Aŭ vi eble volas teni dosieron malfermita kaj skribi al ĝi multajn fojojn. Por tio, vi uzas _dosiertenilon_.

Jen la plej simpla maniero legi dosieron linio post linio. Vi eĉ ne bezonas krei tenilon por tio. La metodo `lines` de vojobjekto donas al vi la liniojn unu post la alia. Ili estas pretaj por buklo `for`:

```raku
spurt 'words.txt', "one\ntwo\nthree\n";

for 'words.txt'.IO.lines -> $line {
    say $line.uc;
}
```

Ĉiu `$line` estas unu linio sen la linifino ĉe sia fino. La programo presas:

```
ONE
TWO
THREE
```

Por skribi per tenilo, malfermu la dosieron per `open` kaj la flago `:w` (skribi). Poste uzu la metodojn `say` aŭ `print` de la tenilo. Kiam vi finis, fermu ĝin per `close`:

```raku
my $fh = open 'out.txt', :w;
$fh.say('first line');
$fh.say('second line');
$fh.close;
```

Fermi la tenilon certigas, ke ĉio, kion vi skribis, vere estas konservita sur disko. Kelkaj dosieroj estas tro grandaj por ŝargi en memoron samtempe. Por ili, vi kutime legas linio post linio, kiel supre.

{% include nav.html %}
