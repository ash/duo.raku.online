---
title: Heredoc
---

{% include menu.html %}

_Heredoc_ ir citēšanas forma tekstam ar vairākām rindām. Tā neizmanto norobežotājus ap tekstu. Tā vietā jūs norādāt terminatora vārdu ar `:to`. Virkne sākas nākamajā rindā. Tā turpinās līdz rindai, kas satur tikai šo vārdu:

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

Terminators atzīmē, kur teksts beidzas. Šeit tas ir `END`, bet der jebkurš vārds. Ievērojiet `print`. Teksts saglabā jaunrindu pirms terminatora. Tāpēc tas jau beidzas ar rindas pārtraukumu. Ar `say` jūs iegūtu vēl vienu un tukšu rindu beigās. Heredoc sākas ar `q:to`, tāpēc teksts netiek interpolēts. Lai interpolētu mainīgos, izmantojiet `qq:to`:

```raku
my $name = 'Anna';

my $greeting = qq:to/EOF/;
Dear $name,
Welcome!
EOF

print $greeting;
```

Šeit ir noderīga detaļa. **Aizverošā terminatora atkāpe** tiek noņemta no katras teksta rindas. Tāpēc jūs varat atkāpēt heredoc atbilstoši apkārtējam kodam. Šī atkāpe nenonāk virknē:

```raku
sub greeting {
    return q:to/END/;
        Hello,
        World!
        END
}

print greeting;
```

Tas izdrukā tos pašus `Hello,` un `World!` kā pirmajā piemērā. Šeit aizverošais `END` ir atkāpēts par astoņām atstarpēm. Tāpēc no katras rindas tiek noņemtas astoņas atstarpes. Atgrieztā virkne ir vienkārši `Hello,\nWorld!`, bez atstarpēm rindu sākumā.

Aizverošais terminators nosaka, cik atstarpju tiek noņemts. Tāpēc katrai teksta rindai jābūt vismaz tik lielai atkāpei. Ja kādai rindai sākumā ir mazāk atstarpju, Raku nevar noņemt visu daudzumu. Tad tas brīdina: *Asked to remove 8 spaces, but the shortest indent is 4 spaces*. Lai no tā izvairītos, neatkāpiet terminatoru dziļāk par vismazāk atkāpēto rindu. Heredoc ir dabiska izvēle veidnēm, ziņojumiem un jebkuram tekstam ar vairākām rindām.

{% include nav.html %}
