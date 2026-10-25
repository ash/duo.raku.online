---
title: Virkņu masīvu citēšana
---

{% include menu.html %}

Dažos virkņu masīvos ir tikai īsas virknes bez atstarpēm. Šādiem masīviem Raku piedāvā ērtu sintaksi, lai iestatītu to vērtības.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Jūs varat izlemt, vai pievienot papildu atstarpes ap leņķa iekavām vai nē. Kompilators pieņem abas iespējas.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Abas formas ir tas pats, kas šī vienkāršā, tiešā versija:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Masīvs vs Saraksts

Ievērojiet, ka iepriekšējos piemēros citāts `< . . . >` izveido `List`, nevis `Array`. To var pārbaudīt, izsaucot `WHAT` metodi:

```raku
say <a b c>.WHAT; # (List)
```

Tomēr, ja jūs to piešķirat masīvam, masīvs saņem tos pašus elementus.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
