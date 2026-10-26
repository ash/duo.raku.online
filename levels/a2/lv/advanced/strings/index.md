---
title: Virknes
---

{% include menu.html %}

Pamatu daļā jūs iemācījāties, [kā veidot virknes](/lv/essentials/strings). Jūs iemācījāties savienot virknes un interpolēt. Jūs arī iemācījāties atrast virknes garumu. Virknēm ir arī daudz metožu. Šī sadaļa parāda visnoderīgākās no tām. Meklēšana ar [regulārajām izteiksmēm](/lv/regexes) ir atsevišķa, lielāka tēma. Tai ir sava daļa vēlāk kursā.

Trīs metodes maina virknes burtu reģistru. Reģistrs nozīmē lielos vai mazos burtus:

```raku
say 'raku'.uc; # RAKU  — lielie burti
say 'RAKU'.lc; # raku  — mazie burti
say 'raku'.tc; # Raku  — virsraksta reģistrs (pirmais burts lielais)
```

Metode `flip` uzraksta virknes rakstzīmes otrādā secībā:

```raku
say 'Raku'.flip; # ukaR
```

Un operators `x` atkārto virkni vairākas reizes. Jūs norādāt reižu skaitu:

```raku
say 'ab' x 3; # ababab
```

Nākamās tēmas parāda, kā meklēt virknēs. Tās arī parāda, kā sadalīt virknes daļās. Un tās parāda, kā daļas atkal savienot.

{% include nav.html %}
