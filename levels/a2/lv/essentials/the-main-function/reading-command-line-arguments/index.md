---
title: Komandrindas argumentu lasīšana
---

{% include menu.html %}

Funkcija `MAIN` ir noderīga divu iemeslu dēļ. Pirmkārt, tā skaidri parāda, kur sākas programma. Otrkārt, tai ir argumenti. Tie saņem savas vērtības no komandrindas.

Ir divi veidi, kā lasīt komandrindas argumentus. Viens veids ir [`@*ARGS` masīvs](/lv/essentials/positionals/args-array). Mēs to jau izmantojām. Tagad apskatīsim otro veidu.

Apskatiet šo programmu. Tā saskaita divus skaitļus.

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

Palaidiet programmu šādi. Tā izdrukā savu divu argumentu summu:

```console
$ raku t.raku 123 45
168
```

Tāpat kā jebkurai citai funkcijai, `MAIN` funkcijai var būt noklusējuma vērtības argumentiem. Tās var būt dažiem argumentiem. Tās var būt pat visiem argumentiem. Piemēram:

```raku
sub MAIN($a, $b = 100) {
    say $a + $b;
}
```

Dažreiz otrā argumenta nav. Tad programma izmanto noklusējuma vērtību:

```console
$ raku t.raku 15
115
```

{% include nav.html %}
