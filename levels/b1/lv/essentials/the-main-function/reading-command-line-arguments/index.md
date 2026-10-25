---
title: Komandrindas argumentu lasīšana
---

{% include menu.html %}

Funkcija `MAIN` skaidri iezīmē programmas sākumu, un tas ir noderīgi. Bet tā ir noderīga arī tāpēc, ka tās argumenti saņem vērtības no komandrindas.

Jūs varat nolasīt komandrindas argumentus divos veidos. Pirmais ir [`@*ARGS` masīvs](/lv/essentials/positionals/args-array), kuru mēs jau esam izmantojuši. Tagad apskatīsim otro veidu.

Šeit ir programma, kas saskaita divus skaitļus.

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

Lūk, kā jūs varat palaist programmu. Tā izdrukā savu divu argumentu summu:

```console
$ raku t.raku 123 45
168
```

Tāpat kā jebkurai citai funkcijai, `MAIN` funkcijai var būt noklusējuma vērtības tās argumentiem. Tas ir iespējams dažiem no tiem vai pat visiem. Piemēram:

```raku
sub MAIN($a, $b = 100) {
    say $a + $b;
}
```

Ja jūs nenorādāt otro argumentu, programma izmanto noklusējuma vērtību:

```console
$ raku t.raku 15
115
```

{% include nav.html %}
