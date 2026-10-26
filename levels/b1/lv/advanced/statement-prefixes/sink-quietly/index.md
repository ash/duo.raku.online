---
title: sink un quietly
translations_gpt:
---

{% include menu.html %}

Vēl divi prefiksi ir par koda izpildi tā efektu dēļ, nevis vērtības dēļ.

Prefikss `sink` izpilda kaut ko _iesūkšanas kontekstā_, tas ir, tikai blakusefektu dēļ. Rezultāts tiek izmests. Tas noder, kad jūs gribat piespiest slinku darbību izpildīties:

```raku
sink (1..3).map({ print "$_ " });
print "\n"; # 1 2 3
```

Šeit `map` izpildās tikai tās drukāšanas dēļ, ko tas veic. `sink` gādā, ka tas tiešām izpildās, un pēc tam izmet iegūto sarakstu. Ja nekas to nepiespiež, slinks `map` var vispār neizpildīties. Tā var notikt, ja tā rezultātu nekad neizmanto.

Prefikss `quietly` izpilda bloku ar **izslēgtiem brīdinājumiem**. Kods, kas parasti izdrukā brīdinājumu kļūdu plūsmā, paliek kluss:

```raku
my $value;
quietly {
    say $value + 1; # 1, with no "uninitialized value" warning
}
```

Ja nedefinētam `$value` pieskaita `1`, parasti rodas brīdinājums par neinicializētu vērtību. `quietly` iekšienē šis brīdinājums ir paslēpts. Izmantojiet to, kad zināt, ka kāds kods brīdina, un jūs negribat troksni. Bet izmantojiet to reti, jo brīdinājumi parasti norāda uz īstu kļūdu.

{% include nav.html %}
