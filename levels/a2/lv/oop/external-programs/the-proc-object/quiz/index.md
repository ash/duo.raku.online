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

`.exitcode` ir vesels skaitlis, ko programma atgrieza. Šeit čaula saņēma komandu `exit 2`. Tāpēc skaitlis ir `2`. Programma neizmet izņēmumu. Tātad tā neapstājas ar kļūdu. Programma patur neveiksmīgo `Proc` mainīgajā `$proc`. Tad tā to apskata ar `.exitcode`. Rezultāta apskatīšana skaitās tā apstrāde. Izņēmumu jūs saņemat tikai vienā gadījumā. Tas ir tad, kad jūs izmetat neveiksmīgu `Proc` bez pārbaudes.

</div>

{% include nav.html %}
