---
title: Apakšprogrammas un metodes
translations_gpt:
---

{% include menu.html %}

Tagad jūs zināt divus veidus, kā salikt kopā dažas darbības. Viens ir _apakšprogramma_. Otrs ir _metode_. Tās izskatās līdzīgi. Bet jūs tās lietojat dažādi.

Apakšprogramma stāv viena pati. Tā nepieder nekam. Jūs to izsaucat pēc nosaukuma. Jūs padodat tai visu vajadzīgo kā argumentus:

```raku
sub area-of($radius) {
    π * $radius * $radius;
}

say area-of(2); # 12.566370614359172
```

Metode pieder klasei. Tā ir kā funkcija klases iekšā. Jūs izsaucat metodi uz objekta ar punktu. Objekts ir klases vērtība. Metode var lietot sava objekta datus. Tam tai ir `self` un atribūtu piekļuves metodes. Tāpēc jūs šos datus tai nepadodat:

```raku
class Circle {
    has $.radius;

    method area {
        π * $.radius * $.radius;
    }
}

say Circle.new(radius => 2).area; # 12.566370614359172
```

Abas dod to pašu skaitli. Atšķirība ir tajā, no kurienes nāk dati. Apakšprogramma saņem rādiusu kā argumentu. Metode nolasa rādiusu no sava objekta. Tas ir objekts, uz kura jūs to izsaucat.

Šeit ir vienkāršs likums. Vai kods stāv viens pats un strādā tikai ar saviem argumentiem? Tad lietojiet apakšprogrammu. Vai kods pieder objektam un strādā ar tā datiem? Tad lietojiet metodi. Vai kods pieder klasei, bet ne vienam objektam? Tad lietojiet klases metodes.

{% include nav.html %}
