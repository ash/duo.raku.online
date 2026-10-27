---
title: 'Risinājums: Nododiet mainīgo bērnprocesam'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
my $file = 'notes.txt';
spurt $file, "one\ntwo\nthree\n";

%*ENV<NOTES> = $file;

my $proc = shell 'wc -l < "$NOTES"', :out;
say $proc.out.slurp(:close).trim;

unlink $file;
```

🦋 Atrodiet programmu failā [read-env.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/read-env.raku).

## Izvade

```
3
```

## Komentāri

1. `spurt` izveido `notes.txt` ar trim rindām. Tad mēs uzstādām `%*ENV<NOTES>` uz tā nosaukumu. Tas ieliek faila nosaukumu vidē, ko saņem katra bērnprogramma.

1. Komanda `shell` saņem šo vidi un aizstāj `$NOTES` ar `notes.txt`. Tad tā sūta failu uz `wc -l`, kas saskaita tā rindas. Novirzīšanas `< "$NOTES"` dēļ izvadē ir tikai skaitlis `3`. Mēs to noķeram ar `:out` un apgriežam ar `trim`.

1. Visbeidzot sakopšana notiek atpakaļ Raku pusē ar `unlink`, un čaula nav vajadzīga. Faila dzēšana ir vienkārša failu sistēmas darbība. Nav iemesla tās dēļ palaist vēl vienu procesu.

{% include nav.html %}
