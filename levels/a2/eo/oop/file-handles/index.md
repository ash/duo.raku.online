---
title: Dosierteniloj
translations_gpt:
---

{% include menu.html %}

Estas facile legi aŭ skribi tutan dosieron samtempe. Sed foje vi volas trairi dosieron linio post linio. Aŭ vi volas skribi al dosiero multajn fojojn. La dosiero devas resti malfermita dum la tuta tempo. Por tio, vi uzas _dosiertenilon_. Dosiertenilo estas objekto por malfermita dosiero. Per ĝi, vi legas el la dosiero aŭ skribas al ĝi.

Jen la plej facila maniero legi dosieron linio post linio. Vi eĉ ne bezonas mem fari tenilon. Voku la metodon `lines` sur vojobjekto. Ĝi donas al vi la liniojn unu post la alia. Ili estas pretaj por buklo `for`:

```raku
spurt 'words.txt', "one\ntwo\nthree\n";

for 'words.txt'.IO.lines -> $line {
    say $line.uc;
}
```

Ĉiu `$line` estas unu linio. Ĉe ĝia fino ne estas linifino. La programo presas:

```
ONE
TWO
THREE
```

Vi ankaŭ povas skribi al dosiero per tenilo. Unue, malfermu la dosieron per `open` kaj la flago `:w`. Ĉi tiu flago signifas skribi. Poste uzu la metodojn `say` aŭ `print` de la tenilo. Fine, fermu ĝin per `close`:

```raku
my $fh = open 'out.txt', :w;
$fh.say('first line');
$fh.say('second line');
$fh.close;
```

Fermu la tenilon ĉe la fino. Tiam ĉiuj viaj datumoj vere iras al la disko. Kelkaj dosieroj estas tro grandaj por la memoro. Vi ne povas legi ilin tutajn samtempe. Por tiaj dosieroj, vi kutime legas linio post linio, kiel supre.

{% include nav.html %}
