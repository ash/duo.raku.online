---
title: 'Risinājums: Pārtveriet izvadi'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $proc = run 'echo', 'hello world raku', :out;
my $output = $proc.out.slurp(:close).trim;
say $output.words.elems;
```

🦋 Atrodiet programmu failā [capture-output.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/capture-output.raku).

## Izvade

```
3
```

## Komentāri

1. `:out` sūta izvadi uz `Proc`. Tā neiet uz ekrānu. `.out.slurp(:close)` nolasa to visu atpakaļ. `.trim` noņem jaunās rindas rakstzīmi beigās. `echo` pievieno šo rakstzīmi.

1. Tagad izvade ir parasta virkne mūsu programmā. Mēs ar to strādājam kā ar jebkuriem citiem datiem. `.words.elems` sadala virkni pa atstarpēm. Tad tas saskaita gabalus. Rezultāts ir `3`. Tāpēc mēs noķeram izvadi. Ārējā programma kļūst par vienu mūsu darba daļu. Tās rezultātu mēs lietojam nākamajos soļos.

{% include nav.html %}
