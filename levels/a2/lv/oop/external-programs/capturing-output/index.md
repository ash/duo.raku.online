---
title: Izvades pārtveršana
translations_gpt:
---

{% include menu.html %}

Parasti ārēja programma drukā ekrānā. Bet varbūt jūs gribat nolasīt tās izvadi savā programmā. Tad pievienojiet `:out`, kad palaižat programmu. Jūs saņemat atpakaļ `Proc` objektu. Tam ir turis `.out`. No šī tura jūs varat nolasīt izvadi:

```raku
my $proc = run 'echo', 'hello', :out;
my $output = $proc.out.slurp(:close);
say $output.chomp; # hello
```

`:out` sūta programmas standarta izvadi uz `Proc`. Standarta izvade ir plūsma programmas parastajai izvadei. Turis `.out` darbojas kā failu turi no iepriekšējās sadaļas. `.slurp` nolasa no tā visu tekstu uzreiz. Apstākļvārds `:close` ir noderīgs saīsinājums. Tas pēc lasīšanas aizver turi jūsu vietā. Agrāk jūs to darījāt paši ar `.close` uz faila tura. Tāpēc nekas nepaliek atvērts. Visbeidzot `.chomp` noņem jaunās rindas rakstzīmi beigās. `echo` pievieno šo rakstzīmi.

Tas pats darbojas ar `shell`. Tas noder ar cauruļvadu. Cauruļvadā viena komanda sūta savu izvadi nākamajai. Ar `shell` jūs varat noķert gala rezultātu:

```raku
my $proc = shell 'echo hello | tr a-z A-Z', :out;
say $proc.out.slurp(:close).chomp; # HELLO
```

Jūs varat noķert arī kļūdu plūsmu. Šo plūsmu sauc par standarta kļūdām. Tur programma drukā savus kļūdu paziņojumus. Šai plūsmai lietojiet `:err` un turi `.err`. Jūs varat padot gan `:out`, gan `:err`. Tad abas plūsmas paliek atsevišķi. Katrai ir savs turis. Tāpēc jūs varat lasīt katru no tām atsevišķi:

```raku
my $proc = run 'sh', '-c', 'echo out-line; echo err-line >&2', :out, :err;

say 'stdout: ', $proc.out.slurp(:close).chomp; # stdout: out-line
say 'stderr: ', $proc.err.slurp(:close).chomp; # stderr: err-line
```

Šeit čaulas komanda izdrukā divas rindas. Viena rinda iet uz standarta izvadi. Otra rinda iet uz standarta kļūdām. Daļa `>&2` to sūta turp. Mēs prasījām abas plūsmas. Tāpēc `.out` un `.err` tās glabā atsevišķi. Programmas parastā izvade nekad nesajaucas ar tās kļūdu paziņojumiem.

Izvades noķeršana ir ļoti noderīga. Ārēja programma kļūst par vienu jūsu programmas daļu. Jūs to palaižat un nolasāt tās rezultātu. Tad jūsu programma turpina darbu un lieto šos datus.

{% include nav.html %}
