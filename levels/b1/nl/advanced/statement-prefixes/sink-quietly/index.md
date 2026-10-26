---
title: sink en quietly
translations_gpt:
---

{% include menu.html %}

Nog twee prefixen gaan over code draaien voor de effecten, niet voor de waarde.

Het prefix `sink` draait iets in _sink context_, dus alleen voor de neveneffecten. Het resultaat wordt weggegooid. Dat is handig als je een luie operatie wilt dwingen om te draaien:

```raku
sink (1..3).map({ print "$_ " });
print "\n"; # 1 2 3
```

Hier draait de `map` alleen voor het printen dat hij doet. `sink` zorgt ervoor dat hij echt draait, en gooit daarna de lijst die eruit komt weg. Als niets hem dwingt, draait een luie `map` misschien helemaal niet. Dat kan gebeuren als zijn resultaat nooit wordt gebruikt.

Het prefix `quietly` draait een blok met de **waarschuwingen uitgezet**. Code die meestal een waarschuwing naar de foutuitvoer print, blijft stil:

```raku
my $value;
quietly {
    say $value + 1; # 1, with no "uninitialized value" warning
}
```

Als je `1` optelt bij een ongedefinieerde `$value`, krijg je meestal een waarschuwing over een niet-geïnitialiseerde waarde. Binnen `quietly` is deze waarschuwing verborgen. Gebruik het als je weet dat code een waarschuwing geeft en je het lawaai niet wilt. Maar gebruik het weinig, want waarschuwingen wijzen meestal op een echte fout.

{% include nav.html %}
