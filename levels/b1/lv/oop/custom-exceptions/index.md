---
title: Paša veidoti izņēmumi
translations_gpt:
---

{% include menu.html %}

Raku valodā ir iebūvēti `X::` izņēmumi, bet jūs varat izveidot arī savus. Paša definēts izņēmums ir klase, kas manto no iebūvētās klases `Exception`. Tai ir arī metode `message`:

```raku
class TooBig is Exception {
    has $.value;

    method message {
        "Value $.value is too big";
    }
}
```

`TooBig` ir parasta klase, tāpēc tai var būt atribūti, piemēram, `value`. Bet, tā kā tā `is Exception`, to var izmest. Lai to izmestu, jūs izveidojat objektu un izsaucat uz tā `.throw`:

```raku
my $value = 20 * 30;

TooBig.new(value => $value).throw if $value > 50;

CATCH {
    when TooBig {
        say .message;
    }
}
```

Programma izdrukā:

```
Value 600 is too big
```

Fāzerī `CATCH` zars `when TooBig` atbilst, jo izmestajam objektam ir šis tips. Paša definēts izņēmums nes līdzi jebkurus datus, ko jūs tam dodat, šeit tas ir `value`. Tāpēc apstrādātājs var uzbūvēt precīzu paziņojumu vai reaģēt īpašā veidā. Tas ir daudz noderīgāk nekā vienkārša virkne, kas padota `die`.

Šī lapa savieno kopā visu no šīs daļas. Paša definēts izņēmums ir _klase_ ar atribūtiem un metodi. Tā piedalās arī Raku izņēmumu sistēmā. Tāpēc tā ir gatava precīzi paziņot, kas nogāja greizi.

{% include nav.html %}
