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

Šeit notiek divas lietas. Pirmkārt, `die` uzreiz aptur pārējo `try` bloka daļu. Tāpēc rinda `say 'inside'` nekad neizpildās, un no bloka iekšienes nekas netiek izdrukāts. Otrkārt, `try` noķer izņēmumu, tāpēc pati programma neapstājas. Tā turpina darbu aiz bloka, un `say 'outside'` izpildās kā parasti. Tātad vienīgā izdrukātā rinda ir `outside`. Ja jūs ieskatītos, jūs redzētu, ka `$r` ir nedefinēts. Paziņojums `Boom!` gaidītu mainīgajā `$!`.

</div>

{% include nav.html %}
