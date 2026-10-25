---
title: Pievērsiet uzmanību atstarpēm
---

{% include menu.html %}

Raku valodā funkciju lietošana pārsvarā ir vienkārša un nerada problēmas. Bet mums jūs jābrīdina par vienu lietu.

## Īsumā

Nelieciet atstarpi starp funkcijas nosaukumu un iekavām ar tās argumentiem. Bet pēc `for` un `if` gan izmantojiet atstarpi.

## Garā versija

Apskatīsim vienkāršu funkciju:

```raku
sub f($x, $y) {
    return $x + $y;
}
```

Vispirms ievērojiet, ka pēc funkcijas nosaukuma nav atstarpes. Atverošā iekava ar parametriem ir uzreiz pēc nosaukuma. Daži koda stili citās valodās var prasīt tur atstarpi. Raku to pieņem, bet tā nav laba prakse, ko ievērot:

```raku
sub f ($x, $y) {
    return $x + $y;
}
```

Kad jūs izsaucat funkciju, atstarpes trūkums ir svarīgs. Ja jūs izsaucat funkciju bez iekavām, pēc tās nosaukuma jābūt atstarpei:

```raku
f 5, 6;
```

Bet, ja jūs izmantojat iekavas, pirms tām nevar būt atstarpes. Šis izsaukums ir pareizs:

```raku
f(5, 6);
```

Un šis izsaukums ir nepareizs:

```raku
f (5, 6);
```

Šāds kods izraisa izņēmumu:

    Too few positionals passed; expected 2 arguments but got 1
      sub f at t.raku line 1
      in block <unit> at t.raku line 5

Raku izsaukumu ar atstarpi, `f (5, 6)`, redz citādi. Tas domā, ka jūs gribat nodot funkcijai vienu argumentu, `(5, 6)`. Šī argumenta tipu ir viegli pārbaudīt. Vienkārši mainiet funkciju, lai tā pieņemtu tikai vienu argumentu:

```raku
sub f($param) {
    say $param.WHAT;
}

f (5, 6); # (List)
```

Tātad, kad jūs izsaucat `f (5, 6)`, jūs nododat funkcijai [sarakstu](/lv/essentials/positionals/lists). Saraksts tiek nodots kā viens vienums.

## Kad atstarpe ir nepieciešama

Dažos gadījumos atstarpe gan ir vajadzīga. Tā notiek, kad jūs izmantojat iekavas ar atslēgvārdu, piemēram, `if`, `for` vai `loop`. Šāds kods ir nepareizs:

```raku
if(True != False) {
    say 'OK';
}
```

Kļūdas ziņojums izskaidro problēmu:

    ===SORRY!===
    The word 'if' is interpreted as a 'if()' function call.  Please use
    whitespace instead of parentheses.
    at /Users/ash/raku-course/t.raku:1
    ------> if⏏(True != False) {
    Unexpected block in infix position (two terms in a row)
    at /Users/ash/raku-course/t.raku:1
    ------> if(True != False)⏏ {

Ar `if` jums iekavas nemaz nav vajadzīgas. Tāpēc, ja jūs tās neizmantojat, problēma nevar rasties. Bet dažos gadījumos tās ir vajadzīgas, piemēram, ar `loop`. Tad atstarpe ir obligāta:

```raku
loop(my $c = 0; $c != 10; $c++) { say $c }
```

Šajā kodā notiek tas pats: kompilators uztver `loop(...)` kā funkcijas izsaukumu. Pievienojiet atstarpi, lai novērstu problēmu. Vai, vēl labāk, pārrakstiet šo koda daļu ar `for`.

## Secinājums

Īsumā, lai izvairītos no šādām problēmām, ievērojiet divus noteikumus. Nelieciet atstarpi starp funkcijas nosaukumu un iekavām ar tās argumentiem. Tāpat mēģiniet izvairīties no iekavām citās valodas daļās, piemēram, vadības plūsmā.

{% include nav.html %}
