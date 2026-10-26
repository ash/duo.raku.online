---
title: Piekļuve Pod datiem
translations_gpt:
---

{% include menu.html %}

Pod var parādīt kā formatētu tekstu. Bet programma var arī nolasīt savu Pod **no iekšpuses**, kamēr tā darbojas. Speciālais mainīgais `$=pod` satur pašreizējā faila Pod. Tas ir bloku objektu saraksts. Tāpēc programma var apskatīt pati savu dokumentāciju:

```raku
=begin pod
=head1 Hello
A paragraph.
=end pod

say $=pod.elems;      # 1
say $=pod[0].name;    # pod
```

Šeit `$=pod` satur vienu elementu, bloku `pod`. Jūs varat tajā ieiet un nolasīt virsrakstus, rindkopas un punktus kā datus. Uz to paļaujas rīki, kas veido dokumentāciju vai pārbauda, vai tā ir klāt. Dokumentāciju var parādīt ar `--doc` vai nolasīt caur `$=pod`. Jebkurā gadījumā tā ir pilnvērtīga programmas daļa. Tā nav komentārs, kas jāizmet.

{% include nav.html %}
