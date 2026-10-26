---
title: Bloku fāzeri
translations_gpt:
---

{% include menu.html %}

Jūs jau zināt fāzerus visai programmai. Raku valodā ir arī fāzeri vienam blokam vai vienam ciklam. Tie ir saistīti ar šī bloka vai cikla dzīvi.

## Ieiet blokā un iziet no tā

Fāzeris `ENTER` izpildās katru reizi, kad programma ieiet blokā. Fāzeris `LEAVE` izpildās katru reizi, kad programma iziet no bloka. To vieta blokā nav svarīga:

```raku
say 'before block';
{
    LEAVE say 'leaving';
    ENTER say 'entering';
    say 'inside';
}
say 'after block';
```

Paskatieties uz izvadi. `ENTER` izpildās pirmais, un `LEAVE` izpildās pēdējais. Bloka ķermenis ir starp tiem:

```
before block
entering
inside
leaving
after block
```

`LEAVE` ir ļoti noderīgs. Tas izpildās pat tad, kad bloks beidzas pirms laika. Tāpēc tur var droši atbrīvot resursu, piemēram, atvērtu failu.

Fāzerim var būt vesels `{ }` bloks, ne tikai viens teikums. Jums var būt arī vairāki fāzeri. Blokam var būt vairāk nekā viens `LEAVE`. Tad tie izpildās apgrieztā secībā. Pēdējais izpildās pirmais. Tas darbojas kā steks. Ko ieliek pēdējo, to izņem pirmo:

```raku
say 'open A';
{
    LEAVE {
        say 'close A';
    }
    say 'open B';
    LEAVE {
        say 'close B';
    }
    say 'work';
}
say 'done';
```

Programma vispirms atver resursu `A`. Tā to aizver pēdējo:

```
open A
open B
work
close B
close A
done
```

Šī secība ir “pēdējais iekšā, pirmais ārā”. Tā ir tieši pareiza tīrīšanai. Ko jūs iestatāt pēdējo, to jūs noņemat pirmo. Fāzeris `END` visai programmai darbojas tāpat. Arī vairāki `END` bloki izpildās apgrieztā secībā.

## Fāzeri cikliem

Cikliem ir vēl trīs fāzeri. Tie iezīmē cikla soļus. `FIRST` izpildās vienreiz, pirms pirmās kārtas. `LAST` izpildās vienreiz, pēc pēdējās kārtas. `NEXT` izpildās katras kārtas beigās:

```raku
for 1..3 {
    FIRST say '-- first';
    LAST  say '-- last';
    NEXT  say "-- next (was $_)";
    say "body $_";
}
```

Cikls izdrukā:

```
-- first
body 1
-- next (was 1)
body 2
-- next (was 2)
body 3
-- next (was 3)
-- last
```

Tas ir tāpat kā ar citiem fāzeriem. `FIRST`, `NEXT` un `LAST` var rakstīt jebkurā cikla vietā. Katrs izpildās savā laikā.

{% include nav.html %}
