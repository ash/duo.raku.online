---
title: '`MAIN` funkcija'
---

{% include menu.html %}

Raku programmai nav vajadzīgs nekāds standarta kods, kas jums vienmēr jāraksta. Tāpēc jūs varat uzreiz sākt rakstīt noderīgas instrukcijas. Šī programmas daļa atrodas ārpus visiem [koda blokiem](/lv/essentials/code-blocks), piemēram, arī ārpus [funkcijām](/lv/essentials/functions). To sauc par _galveno līniju_.

Ja programmā ir funkcija ar īpašu nosaukumu `MAIN`, Raku to izpilda pašās beigās. Tas notiek pēc tam, kad Raku visu nokompilē un izpilda galvenās līnijas kodu.

```raku
say '1. Galvenās līnijas kods';

sub MAIN {
    say '3. MAIN izsaukts';
}

say '2. Arī galvenā līnija';
```

Šī programma vispirms izpilda augstākā līmeņa `say` komandas un pēc tam izsauc `MAIN`:

```console
$ raku t.raku
1. Galvenās līnijas kods
2. Arī galvenā līnija
3. MAIN izsaukts
```

Protams, programmā var būt arī `MAIN` funkcija bez cita galvenās līnijas koda.

{% include nav.html %}
