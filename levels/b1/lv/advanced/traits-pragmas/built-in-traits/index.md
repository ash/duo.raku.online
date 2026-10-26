---
title: Iebūvētās īpašības
---

{% include menu.html %}

_Īpašību_ pievieno ar atslēgvārdu `is` uzreiz pēc deklarācijas. Tā izpildās kompilēšanas laikā. Tā maina kādu nemainīgu iezīmi lietai, kurai tā pieder. Raku ir daudz iebūvētu īpašību, un dažas jūs jau esat lietojuši.

Pēc noklusējuma apakšprogrammas parametri ir **tikai lasāmi**. Apakšprogrammas iekšienē jūs nevarat tiem piešķirt vērtību. Īpašība `is copy` dod jums privātu argumenta kopiju, kuru varat mainīt. Izmaiņa neietekmē izsaucēju:

```raku
sub greet($name is copy) {
    $name = "dear $name";
    say "Hello, $name!";
}

my $who = 'Anna';
greet($who); # Hello, dear Anna!
say $who;    # Anna — the caller's own variable is untouched
```

Īpašība `is rw` iet tālāk. Tā sasaista parametru ar izsaucēja mainīgo. Tāpēc izmaiņa apakšprogrammas iekšienē ir redzama arī ārpusē:

```raku
sub bump($n is rw) {
    $n++;
}

my $x = 10;
bump($x);
say $x; # 11
```

Bez kādas no šīm īpašībām `$n++` izraisītu kļūdu. Parametrs būtu tikai lasāms.

Vēl viena izplatīta īpašība nosaka noklusējuma vērtību:

```raku
my $port is default(8080);
say $port; # 8080
```

Šeit `is default` dod mainīgajam vērtību, ko lietot, kad citas vērtības nav. Ir daudz iebūvētu īpašību, piemēram, `is rw`, `is copy` un `is default`. Katra no tām kompilēšanas laikā pievieno deklarācijai vienu noteiktu uzvedību. Nākamā tēma parāda, ka īpašību kopa nav slēgta. [Jūs varat definēt savas](/lv/advanced/traits-pragmas/writing-a-trait).

{% include nav.html %}
