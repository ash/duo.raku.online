---
title: Bloku fāzeri
translations_gpt:
---

{% include menu.html %}

Raku valodā ir fāzeri visai programmai, bet ir arī citi. Šie fāzeri ir saistīti ar viena bloka vai cikla dzīvi.

## Ieiešana blokā un iziešana no tā

Fāzeris `ENTER` izpildās katru reizi, kad programma ieiet blokā. Fāzeris `LEAVE` izpildās katru reizi, kad tā atstāj bloku. Nav svarīgi, kurā rindā jūs tos uzrakstāt:

```raku
say 'before block';
{
    LEAVE say 'leaving';
    ENTER say 'entering';
    say 'inside';
}
say 'after block';
```

Izvade rāda, ka `ENTER` izpildās pirmais un `LEAVE` — pēdējais. Bloka ķermenis izpildās starp tiem:

```
before block
entering
inside
leaving
after block
```

`LEAVE` ir īpaši noderīgs, jo tas izpildās pat tad, ja bloks beidzas pirms laika. Tāpēc tā ir uzticama vieta, kur atbrīvot resursu.

Fāzeris viena teikuma vietā var ņemt pilnu `{ }` bloku. Jums var būt arī vairāki tādi fāzeri. Kad blokam ir vairāk nekā viens `LEAVE`, tie izpildās apgrieztā secībā. Tas, kuru iestatīja pēdējo, izpildās pirmais. Tāpēc bloks darbojas kā steks, no augšas uz leju:

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

Programma resursu `A` atver pirmo un aizver pēdējo:

```
open A
open B
work
close B
close A
done
```

Šī secība “pēdējais iekšā, pirmais ārā” ir tieši tas, kas vajadzīgs tīrīšanai. To, ko iestatījāt pēdējo, noņem pirmo. Visas programmas fāzeris `END` darbojas tāpat. Arī vairāki `END` bloki izpildās apgrieztā secībā, nekā tie ir uzrakstīti.

## Cikla fāzeri

Ciklos ir vēl trīs fāzeri cikla posmiem. `FIRST` izpildās vienreiz pirms pirmā piegājiena, un `LAST` izpildās vienreiz pēc pēdējā. `NEXT` izpildās katra piegājiena beigās:

```raku
for 1..3 {
    FIRST say '-- first';
    LAST  say '-- last';
    NEXT  say "-- next (was $_)";
    say "body $_";
}
```

Šī ir cikla izvade:

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

Tāpat kā citi fāzeri, `FIRST`, `NEXT` un `LAST` var atrasties jebkurā koda vietā. Katrs no tiem izpildās savā brīdī.

{% include nav.html %}
