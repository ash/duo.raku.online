---
title: 'Viktorīna — `try`'
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

```raku
my $r = try {
    die 'Boom!';
    say 'inside';
};

say 'outside';
```

{:.quiz}
1 | outside
0 | inside
0 | inside un tad outside
0 | Boom!
0 | kļūda

{% include quiz.html %}

<div class="extended-explanation">

Šeit notiek divas lietas. Pirmkārt, `die` uzreiz aptur pārējo `try` bloku. Tāpēc programma nekad nenonāk līdz rindai `say 'inside'`. Programma neizdrukā neko no bloka iekšienes. Otrkārt, `try` noķer izņēmumu, kļūdu no `die`. Tāpēc pati programma neapstājas. Tā turpina darbu aiz bloka. `say 'outside'` izpildās kā parasti. Tāpēc programma izdrukā tikai vienu rindu: `outside`. Jūs varat arī apskatīt `$r` un `$!`. `$r` ir nedefinēts. Paziņojums `Boom!` gaida mainīgajā `$!`.

</div>

{% include nav.html %}
