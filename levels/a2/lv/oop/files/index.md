---
title: Darbs ar failiem
translations_gpt:
---

{% include menu.html %}

Šeit ir vieglākais veids, kā strādāt ar failu. Jūs nolasāt vai ierakstāt visu failu uzreiz.

Rutīna `spurt` ieraksta virkni failā. Tā izveido failu. Vai arī, ja fails jau ir, tā aizstāj veco saturu:

```raku
spurt 'greeting.txt', "Hello, file!\n";
```

Rutīna `slurp` nolasa visu failu. Tā dod jums saturu kā virkni:

```raku
my $text = slurp 'greeting.txt';
print $text; # Hello, file!
```

Ar `spurt` un `slurp` jūs saglabājat datus un atkal tos ielādējat. Jums vajag tikai divus īsus izsaukumus. Šeit mēs lietojam `print`, nevis `say`. Tas ir tāpēc, ka teksts jau beidzas ar jaunas rindas rakstzīmi.

Šīs rutīnas strādā ar visu failu uzreiz. Tās ir labas maziem failiem. Mazs fails viegli ietilpst atmiņā. Lielam failam jūs lietojat [faila turi](/lv/oop/file-handles). To jūs lietojat arī, lai strādātu ar failu pa rindai. Par to jūs uzzināsiet šīs sadaļas beigās. Nākamais temats parāda, kā failam kaut ko pievienot. Vecais faila saturs paliek savā vietā.

{% include nav.html %}
