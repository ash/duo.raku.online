---
title: 'Saistīšana ar `:=`'
translations_gpt:
---

{% include menu.html %}

Līdz šim katrs mainīgais, ko jūs izveidojāt, saņēma jaunu konteineru. Piešķiršana ar `=` ielika vērtību _tajā konteinerā_. Saistīšana, ko raksta kā `:=`, ir citāda. Tā liek nosaukumam norādīt uz _jau esošu_ konteineru, nevis veido jaunu.

Pēc saistīšanas abi nosaukumi dala vienu un to pašu konteineru. Tāpēc izmaiņa caur vienu nosaukumu ir redzama caur otru:

```raku
my $x = 10;
my $y := $x;

$x = 20;
say $y; # 20
```

Šeit `$y := $x` nekopē vērtību `10`. Tā vietā `$y` kļūst par vēl vienu nosaukumu tieši tam pašam konteineram, kas ir `$x`. Vēlāk, kad `$x` saņem vērtību `20`, arī `$y` dod `20`.

Tagad salīdziniet to ar parasto piešķiršanu. Tā kopē vērtību atsevišķā konteinerā:

```raku
my $x = 10;
my $y = $x; # a plain copy

$x = 20;
say $y; # 10
```

Saistīšana darbojas arī ar masīviem. Šis kods padara `@alias` par vēl vienu nosaukumu masīvam `@data`:

```raku
my @data = 1, 2, 3;
my @alias := @data;

@alias[0] = 99;
say @data; # [99 2 3]
```

Vēl viena detaļa. Ja jūs saistāt nosaukumu tieši ar literālu vērtību, aiz tā nav konteinera. Tāpēc nosaukums kļūst tikai lasāms:

```raku
my $pi := 3.14;
$pi = 3;
```

```
Cannot assign to an immutable value
  in block <unit> at t.raku line 2
```

{% include nav.html %}
