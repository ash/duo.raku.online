---
title: Paša veidoti izņēmumi
translations_gpt:
---

{% include menu.html %}

Raku valodā ir iebūvēti izņēmumi. To nosaukumi sākas ar `X::`. Jūs varat izveidot arī savus izņēmumus. Tos sauc par paša definētiem izņēmumiem. Paša definēts izņēmums ir klase. Tā manto no iebūvētās klases `Exception`. Tātad tā ir viens no `Exception` veidiem. Tai ir arī metode `message`:

```raku
class TooBig is Exception {
    has $.value;

    method message {
        "Value $.value is too big";
    }
}
```

`TooBig` ir parasta klase. Tai var būt atribūti, piemēram, `value`. Bet tā `is Exception`. Tāpēc to var izmest, tāpat kā kļūdu no `die`. Lai to izmestu, izveidojiet šīs klases objektu. Tad izsauciet uz šī objekta `.throw`:

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

Fāzerī `CATCH` atbilst zars `when TooBig`. Tas ir tāpēc, ka izmestajam objektam ir tips `TooBig`. Paša definēts izņēmums glabā jebkurus datus, ko jūs tam dodat. Šeit šie dati ir `value`. Kods, kas apstrādā izņēmumu, ir apstrādātājs. Apstrādātājs var izmantot šos datus. Tas var uzbūvēt precīzu paziņojumu. Vai arī tas var reaģēt īpašā veidā. Tas ir daudz noderīgāk nekā vienkārša virkne ar `die`.

Šeit kopā sanāk viss no šīs kursa daļas. Paša definēts izņēmums ir _klase_. Tai ir atribūti un metode. Tā strādā arī ar Raku izņēmumu rīkiem. Jūs varat to izmest un noķert. Tāpēc tā var precīzi pateikt, kas nogāja greizi.

{% include nav.html %}
