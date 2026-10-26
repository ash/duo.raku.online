---
title: Heredoc
---

{% include menu.html %}

_Heredoc_ ir citēšanas forma tekstam ar daudzām rindām. Tai nav norobežotāju ap tekstu. Tā vietā jūs norādāt terminatora vārdu ar `:to`. Terminators atzīmē beigas. Virkne sākas nākamajā rindā. Tā turpinās līdz rindai, kurā ir tikai šis vārds:

```raku
my $text = q:to/END/;
Hello,
World!
END

print $text;
```

Tas izdrukā:

```
Hello,
World!
```

Terminators atzīmē teksta beigas. Šeit tas ir `END`, bet jūs varat izmantot jebkuru vārdu. Apskatiet `print`. Teksts saglabā jaunrindu pirms terminatora. Tāpēc teksts jau beidzas ar rindas pārtraukumu. `say` pievieno vēl vienu. Tad beigās jūs saņemat tukšu rindu. Šis heredoc sākas ar `q:to`. Tāpēc Raku neinterpolē tekstu. Lai interpolētu mainīgos, izmantojiet `qq:to`:

```raku
my $name = 'Anna';

my $greeting = qq:to/EOF/;
Dear $name,
Welcome!
EOF

print $greeting;
```

Šeit ir noderīga detaļa. Apskatiet **aizverošā terminatora atkāpi**. Raku to noņem no katras teksta rindas. Tāpēc jūs varat atkāpēt heredoc tāpat kā kodu apkārt. Atkāpe nenonāk virknē:

```raku
sub greeting {
    return q:to/END/;
        Hello,
        World!
        END
}

print greeting;
```

Tas izdrukā tos pašus `Hello,` un `World!` kā pirmajā piemērā. Šeit aizverošajam `END` priekšā ir astoņas atstarpes. Tāpēc Raku noņem astoņas atstarpes no katras rindas. Funkcija atgriež tikai `Hello,\nWorld!`. Sākumā nav atstarpju.

Aizverošais terminators nosaka, cik atstarpju Raku noņem. Tāpēc katrai teksta rindai vajag vismaz tik daudz atstarpju. Varbūt kādai rindai ir mazāk atstarpju. Tad Raku nevar noņemt tās visas. Tas brīdina: *Asked to remove 8 spaces, but the shortest indent is 4 spaces*. Izvairieties no šī brīdinājuma. Neatkāpiet terminatoru vairāk par jebkuru teksta rindu. Heredoc ir dabiska izvēle veidnēm un ziņojumiem. Patiesībā tie der jebkuram tekstam ar vairākām rindām.

{% include nav.html %}
