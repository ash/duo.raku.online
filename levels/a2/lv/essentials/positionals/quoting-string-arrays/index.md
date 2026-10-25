---
title: Virkņu masīvu citēšana
---

{% include menu.html %}

Dažreiz masīva elementi ir īsas virknes bez atstarpēm. Raku valodā ir ērts veids, kā dot šādam masīvam vērtības.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Jūs varat likt papildu atstarpes ap leņķa iekavām. Vai arī varat rakstīt tās bez atstarpēm. Jūs izlemjat paši. Kompilators pieņem abus veidus.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Abi veidi dod tādu pašu rezultātu kā šī vienkāršā versija:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Masīvs vai saraksts

Ievērojiet vienu lietu par iepriekšējiem piemēriem. Citāts `< . . . >` izveido `List`. Tas neizveido `Array`. Jūs to varat pārbaudīt ar `WHAT` metodi:

```raku
say <a b c>.WHAT; # (List)
```

Bet jūs varat to piešķirt masīvam. Tad jūs iegūstat masīvu ar saraksta elementiem.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
