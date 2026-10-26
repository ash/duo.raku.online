---
title: Toegang tot de Pod
translations_gpt:
---

{% include menu.html %}

Je kunt Pod tonen als opgemaakte tekst. Maar een programma kan zijn eigen Pod ook van **binnenuit** lezen. Dat doet het terwijl het draait. De speciale variabele `$=pod` bewaart de Pod van het huidige bestand. Het is een lijst van blokobjecten. Zo kan een programma naar zijn eigen documentatie kijken:

```raku
=begin pod
=head1 Hello
A paragraph.
=end pod

say $=pod.elems;      # 1
say $=pod[0].name;    # pod
```

Hier heeft `$=pod` één element: het `pod`-blok. Je kunt in dit blok naar binnen gaan. Daar kun je koppen, alinea's en items als gegevens lezen. Sommige tools maken documentatie. Andere tools testen of de documentatie er is. Al deze tools hebben dit nodig. Je kunt de documentatie tonen met `--doc`. Of je kunt ze lezen via `$=pod`. In beide gevallen is de documentatie een echt deel van het programma. Ze is geen commentaar, en Raku gooit ze niet weg.

{% include nav.html %}
