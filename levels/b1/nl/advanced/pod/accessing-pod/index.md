---
title: Toegang tot de Pod
translations_gpt:
---

{% include menu.html %}

Pod kan getoond worden als opgemaakte tekst. Maar een programma kan zijn eigen Pod ook van **binnenuit** lezen, terwijl het draait. De speciale variabele `$=pod` bevat de Pod van het huidige bestand. Het is een lijst van blokobjecten. Zo kan een programma naar zijn eigen documentatie kijken:

```raku
=begin pod
=head1 Hello
A paragraph.
=end pod

say $=pod.elems;      # 1
say $=pod[0].name;    # pod
```

Hier heeft `$=pod` één element, het `pod`-blok. Je kunt erin navigeren en koppen, alinea's en items als gegevens lezen. Tools die documentatie maken, of die testen of ze er is, hebben dit nodig. De documentatie kan getoond worden met `--doc` of gelezen worden via `$=pod`. In beide gevallen is ze een echt onderdeel van het programma. Ze is geen commentaar dat weggegooid wordt.

{% include nav.html %}
