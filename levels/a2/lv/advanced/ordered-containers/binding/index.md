---
title: 'Saistīšana ar `:=`'
translations_gpt:
---

{% include menu.html %}

Līdz šim katrs jauns mainīgais radīja jaunu konteineru. Piešķiršana ar `=` ielika vērtību _šajā konteinerā_. Saistīšana ir citāda. Jūs to rakstāt ar `:=`. Saistīšana neveido jaunu konteineru. Tā dod nosaukumu _jau esošam_ konteineram.

Pēc saistīšanas abiem nosaukumiem ir viens konteineris. Mainiet vērtību ar vienu nosaukumu. Otrs nosaukums arī redz izmaiņu:

```raku
my $x = 10;
my $y := $x;

$x = 20;
say $y; # 20
```

Šeit `$y := $x` nekopē vērtību `10`. Tas padara `$y` par otru nosaukumu `$x` konteineram. Tas ir tas pats konteineris. Vēlāk `$x` saņem vērtību `20`. Tad arī `$y` ir `20`.

Salīdziniet to ar parasto piešķiršanu. Tā kopē vērtību citā konteinerā:

```raku
my $x = 10;
my $y = $x; # a plain copy

$x = 20;
say $y; # 10
```

Saistīšana strādā arī ar masīviem. Šeit `@alias` kļūst par otru nosaukumu masīvam `@data`:

```raku
my @data = 1, 2, 3;
my @alias := @data;

@alias[0] = 99;
say @data; # [99 2 3]
```

Vēl viena detaļa. Jūs varat saistīt nosaukumu tieši ar literālu vērtību. Tā ir vērtība, ko jūs rakstāt kodā. Tad aiz nosaukuma nav konteinera. Tāpēc nosaukums ir tikai lasāms. Jūs nevarat tam neko piešķirt:

```raku
my $pi := 3.14;
$pi = 3;
```

```
Cannot assign to an immutable value
  in block <unit> at t.raku line 2
```

{% include nav.html %}
