---
title: 'Risinājums: Nododiet mainīgo bērnprocesam'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `spurt` izveido `notes.txt` ar trim rindām. Tad mēs uzstādām `%*ENV<NOTES>` uz faila nosaukumu. Tāpēc faila nosaukums tagad ir vidē. Katra bērnprogramma saņem šo vidi.

1. Komanda `shell` saņem šo vidi. Tā aizstāj `$NOTES` ar `notes.txt`. Tad tā sūta failu uz `wc -l`. `wc -l` saskaita faila rindas. Novirzīšana `< "$NOTES"` ir svarīga. Tās dēļ izvadē ir tikai skaitlis `3`. Mēs noķeram šo skaitli ar `:out` un apgriežam to ar `trim`.

1. Beigās mēs ar `unlink` sakopjam Raku pusē. Tam mums nevajag čaulu. Faila dzēšana ir vienkārša failu sistēmas darbība. Tāpēc nav iemesla tās dēļ palaist vēl vienu procesu. Process ir programma, kas darbojas.

{% include nav.html %}
