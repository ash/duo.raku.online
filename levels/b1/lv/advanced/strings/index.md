---
title: Virknes
---

{% include menu.html %}

Pamatu daļā jūs iemācījāties, [kā veidot virknes](/lv/essentials/strings). Jūs redzējāt savienošanu, interpolēšanu un virknes garumu. Virknēm ir arī liels metožu klāsts. Šajā sadaļā ir apkopotas visnoderīgākās no tām. Meklēšana ar [regulārajām izteiksmēm](/lv/regexes) ir atsevišķa, lielāka tēma. Tā ir aplūkota savā daļā vēlāk.

Trīs metodes maina burtu reģistru virknē:

```raku
say 'raku'.uc; # RAKU  — lielie burti
say 'RAKU'.lc; # raku  — mazie burti
say 'raku'.tc; # Raku  — virsraksta reģistrs (pirmais burts lielais)
```

Metode `flip` apgriež otrādi rakstzīmju secību virknē:

```raku
say 'Raku'.flip; # ukaR
```

Un operators `x` atkārto virkni tik reižu, cik jūs prasāt:

```raku
say 'ab' x 3; # ababab
```

Nākamās tēmas parāda, kā meklēt virkņu iekšienē. Tās arī parāda, kā sadalīt virknes daļās un salikt tās atpakaļ kopā.

{% include nav.html %}
