---
title: Bestandshandles
translations_gpt:
---

{% include menu.html %}

Een heel bestand in één keer lezen of schrijven is makkelijk. Maar soms wil je een bestand regel voor regel doorlopen. Of je wilt een bestand open houden en er vaak naar schrijven. Daarvoor gebruik je een _bestandshandle_.

Dit is de eenvoudigste manier om een bestand regel voor regel te lezen. Je hoeft er niet eens een handle voor te maken. De methode `lines` van een padobject geeft je de regels een voor een. Ze zijn klaar voor een `for`-lus:

```raku
spurt 'words.txt', "one\ntwo\nthree\n";

for 'words.txt'.IO.lines -> $line {
    say $line.uc;
}
```

Elke `$line` is één regel, zonder de newline aan het eind. Het programma drukt af:

```
ONE
TWO
THREE
```

Om via een handle te schrijven, open je het bestand met `open` en de vlag `:w` (write). Gebruik daarna de methoden `say` of `print` van de handle. Als je klaar bent, `close` je hem:

```raku
my $fh = open 'out.txt', :w;
$fh.say('first line');
$fh.say('second line');
$fh.close;
```

De handle sluiten zorgt ervoor dat alles wat je geschreven hebt echt op schijf wordt opgeslagen. Sommige bestanden zijn te groot om in één keer in het geheugen te laden. Die lees je meestal regel voor regel, zoals hierboven.

{% include nav.html %}
