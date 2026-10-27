---
title: Viktorīna — Proc objekts
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

```raku
my $proc = run 'sh', '-c', 'exit 2', :out;
$proc.out.slurp(:close);
say $proc.exitcode;
```

{:.quiz}
0 | 0
1 | 2
0 | True
0 | kļūda

{% include quiz.html %}

<div class="extended-explanation">

`.exitcode` ir vesels skaitlis, ko programma atgrieza. Šeit čaulai tika likts izpildīt `exit 2`, tāpēc tas ir `2`. Programma neizmet izņēmumu. Neveiksmīgais `Proc` tiek saglabāts mainīgajā `$proc` un pārbaudīts ar `.exitcode`. Rezultāta apskatīšana skaitās tā apstrāde. Izņēmums rastos tikai tad, ja neveiksmīgu `Proc` izmestu bez pārbaudes.

</div>

{% include nav.html %}
