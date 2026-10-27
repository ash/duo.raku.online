---
title: Izvades pārtveršana
translations_gpt:
---

{% include menu.html %}

Dažreiz jūsu programmai jānolasa tas, ko ārēja programma izdrukā, nevis jārāda tas ekrānā. Lai to izdarītu, padodiet `:out`, kad palaižat programmu. Atgrieztajam `Proc` tad ir turis `.out`, no kura var lasīt:

```raku
my $proc = run 'echo', 'hello', :out;
my $output = $proc.out.slurp(:close);
say $output.chomp; # hello
```

`:out` sūta programmas standarta izvadi uz `Proc`. Turis `.out` darbojas kā failu turi no iepriekšējās sadaļas. `.slurp` nolasa no tā visu uzreiz. Apstākļvārds `:close` ir noderīgs saīsinājums: pēc nolasīšanas tas aizver turi jūsu vietā. To pašu sakopšanu jūs paši veicāt ar `.close` uz faila tura. Tādā veidā nekas nepaliek atvērts. Visbeidzot `.chomp` noņem jaunās rindas rakstzīmi, ko `echo` pievieno beigās.

Tas pats darbojas ar `shell`. Tas noder, kad gribat noķert cauruļvada rezultātu:

```raku
my $proc = shell 'echo hello | tr a-z A-Z', :out;
say $proc.out.slurp(:close).chomp; # HELLO
```

Jūs varat noķert arī kļūdu plūsmu — ar `:err` un atbilstošo turi `.err`. Ja padodat gan `:out`, gan `:err`, abas plūsmas paliek atsevišķi. Katrai ir savs turis, tāpēc tās var lasīt atsevišķi:

```raku
my $proc = run 'sh', '-c', 'echo out-line; echo err-line >&2', :out, :err;

say 'stdout: ', $proc.out.slurp(:close).chomp; # stdout: out-line
say 'stderr: ', $proc.err.slurp(:close).chomp; # stderr: err-line
```

Šeit čaulas komanda izdrukā vienu rindu standarta izvadē un vienu standarta kļūdu plūsmā. Daļa `>&2` novirza otro rindu turp. Mēs prasījām abas plūsmas, tāpēc `.out` un `.err` tās glabā atsevišķi. Programmas parastā izvade nekad nesajaucas ar tās kļūdu paziņojumiem.

Izvades noķeršana ļauj izmantot ārēju programmu kā būvbloku. Jūs to palaižat, nolasāt tās rezultātu un turpināt darbu ar šiem datiem savā programmā.

{% include nav.html %}
