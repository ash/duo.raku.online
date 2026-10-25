---
title: Pievērsiet uzmanību atstarpēm
---

{% include menu.html %}

Raku valodā funkcijas pārsvarā ir viegli lietot. Parasti tās nerada problēmas. Bet esiet uzmanīgi ar vienu lietu.

## Īsumā

Nerakstiet atstarpi starp funkcijas nosaukumu un iekavām. Iekavās ir argumenti. Bet pēc `for` un `if` gan lieciet atstarpi.

## Garā versija

Lūk, vienkārša funkcija:

```raku
sub f($x, $y) {
    return $x + $y;
}
```

Vispirms apskatiet funkcijas nosaukumu. Atverošā iekava ir uzreiz pēc tā, bez atstarpes. Parametri ir šajās iekavās. Dažos citu valodu koda stilos tur vajag atstarpi. Raku to arī pieņem. Bet tas nav labs veids, kā rakstīt kodu:

```raku
sub f ($x, $y) {
    return $x + $y;
}
```

Funkcijas izsaukumā atstarpes trūkums ir svarīgs. Dažreiz jūs izsaucat funkciju bez iekavām. Tad pēc funkcijas nosaukuma jums jāliek atstarpe:

```raku
f 5, 6;
```

Bet ar iekavām pirms tām nedrīkst būt atstarpes. Šis izsaukums ir pareizs:

```raku
f(5, 6);
```

Un šis izsaukums ir nepareizs:

```raku
f (5, 6);
```

Šis kods izraisa izņēmumu:

    Too few positionals passed; expected 2 arguments but got 1
      sub f at t.raku line 1
      in block <unit> at t.raku line 5

Apskatiet izsaukumu ar atstarpi: `f (5, 6)`. Raku domā, ka jūs nododat funkcijai vienu argumentu. Šis arguments ir `(5, 6)`. Jūs varat viegli pārbaudīt šī argumenta tipu. Mainiet funkciju. Tai jāpieņem tikai viens arguments:

```raku
sub f($param) {
    say $param.WHAT;
}

f (5, 6); # (List)
```

Tātad izsaukums `f (5, 6)` nodod funkcijai [sarakstu](/lv/essentials/positionals/lists). Viss saraksts ir viens arguments.

## Kad jums vajag atstarpi

Dažreiz jums vajag atstarpi. Tā notiek, kad jūs liekat iekavas pēc atslēgvārda. Piemēram, atslēgvārds var būt `if`, `for` vai `loop`. Šis kods ir nepareizs:

```raku
if(True != False) {
    say 'OK';
}
```

Kļūdas ziņojums jums pasaka, kas ir nepareizi:

    ===SORRY!===
    The word 'if' is interpreted as a 'if()' function call.  Please use
    whitespace instead of parentheses.
    at /Users/ash/raku-course/t.raku:1
    ------> if⏏(True != False) {
    Unexpected block in infix position (two terms in a row)
    at /Users/ash/raku-course/t.raku:1
    ------> if(True != False)⏏ {

Ar `if` jums iekavas nemaz nav vajadzīgas. Bez tām šī problēma nevar rasties. Bet dažreiz jums vajag iekavas, piemēram, ar `loop`. Tad jums jāliek atstarpe:

```raku
loop(my $c = 0; $c != 10; $c++) { say $c }
```

Tas pats notiek šajā kodā. Kompilators domā, ka `loop(...)` ir funkcijas izsaukums. Pievienojiet atstarpi, lai salabotu problēmu. Vai, vēl labāk, uzrakstiet šo kodu ar `for`.

## Secinājums

Tātad, lūk, galvenais. Nelieciet atstarpi starp funkcijas nosaukumu un tās iekavām. Tad jūs izvairāties no šādām problēmām. Arī citās vietās mēģiniet nelietot iekavas, kad varat. Piemēram, ar `if` un `for` tās nav vajadzīgas.

{% include nav.html %}
