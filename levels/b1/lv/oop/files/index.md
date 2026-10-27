---
title: Darbs ar failiem
translations_gpt:
---

{% include menu.html %}

Vienkāršākajā gadījumā jūs nolasāt vai ierakstāt visu failu uzreiz.

Rutīna `spurt` ieraksta virkni failā. Tā izveido failu vai aizstāj tā saturu, ja fails jau eksistē:

```raku
spurt 'greeting.txt', "Hello, file!\n";
```

Rutīna `slurp` nolasa visu failu atpakaļ virknē:

```raku
my $text = slurp 'greeting.txt';
print $text; # Hello, file!
```

Kopā `spurt` un `slurp` saglabā datus un atkal tos ielādē tikai ar diviem īsiem izsaukumiem. Šeit mēs lietojam `print`, nevis `say`, jo teksts jau beidzas ar jaunas rindas rakstzīmi.

Šīs rutīnas strādā ar visu failu uzreiz. Tās vislabāk der failiem, kas ir pietiekami mazi, lai viegli ietilptu atmiņā. Lielākiem failiem jūs lietojat [faila turi](/lv/oop/file-handles). Tas jums vajadzīgs arī, lai strādātu ar failu pa rindai. Failu turus mēs aplūkojam šīs sadaļas beigās. Nākamais temats parāda, kā failam pievienot, nevis to aizstāt.

{% include nav.html %}
