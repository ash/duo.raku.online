---
title: 'Risinājums: Pārtveriet izvadi'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. `:out` sūta programmas izvadi uz `Proc`, nevis uz ekrānu. `.out.slurp(:close)` nolasa to visu atpakaļ. `.trim` noņem jaunās rindas rakstzīmi, ko `echo` pievieno beigās.

1. Tagad izvade ir parasta virkne mūsu programmā. Mēs ar to rīkojamies kā ar jebkuriem citiem datiem. `.words.elems` sadala to pa atstarpēm un saskaita gabalus, kas dod `3`. Tāda ir izvades noķeršanas jēga. Ārējā programma kļūst par būvbloku, un mēs tās rezultātu apstrādājam tālāk.

{% include nav.html %}
