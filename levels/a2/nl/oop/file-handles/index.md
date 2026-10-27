---
title: Bestandshandles
translations_gpt:
---

{% include menu.html %}

Het is makkelijk om een heel bestand in één keer te lezen of te schrijven. Maar soms wil je een bestand regel voor regel doorlopen. Of je wilt vaak naar een bestand schrijven. Het bestand moet dan de hele tijd open blijven. Daarvoor gebruik je een _bestandshandle_. Een bestandshandle is een object voor een open bestand. Daarmee lees je uit het bestand of schrijf je ernaar.

Dit is de makkelijkste manier om een bestand regel voor regel te lezen. Je hoeft niet eens zelf een handle te maken. Roep de methode `lines` aan op een padobject. Die geeft je de regels een voor een. Ze zijn klaar voor een `for`-lus:

```raku
spurt 'words.txt', "one\ntwo\nthree\n";

for 'words.txt'.IO.lines -> $line {
    say $line.uc;
}
```

Elke `$line` is één regel. Aan het eind staat geen newline. Het programma drukt af:

```
ONE
TWO
THREE
```

Je kunt ook via een handle naar een bestand schrijven. Open eerst het bestand met `open` en de vlag `:w`. Deze vlag betekent schrijven (write). Gebruik daarna de methoden `say` of `print` van de handle. Aan het eind `close` je hem:

```raku
my $fh = open 'out.txt', :w;
$fh.say('first line');
$fh.say('second line');
$fh.close;
```

Sluit de handle aan het eind. Dan gaan al je gegevens echt naar de schijf. Sommige bestanden zijn te groot voor het geheugen. Je kunt ze niet in één keer lezen. Zulke bestanden lees je meestal regel voor regel, zoals hierboven.

{% include nav.html %}
