---
title: Iebūvētās īpašības
---

{% include menu.html %}

Jūs pievienojat _īpašību_ ar atslēgvārdu `is` uzreiz pēc deklarācijas. Īpašība izpildās kompilēšanas laikā. Tā maina kādu nemainīgu iezīmi lietai, kurai ir šī īpašība. Raku ir daudz īpašību. Dažas no tām jūs jau lietojāt.

Parasti apakšprogrammas parametri ir **tikai lasāmi**. Apakšprogrammas iekšienē jūs nevarat tiem piešķirt jaunas vērtības. Īpašība `is copy` dod jums savu argumenta kopiju. Šo kopiju jūs varat mainīt. Izmaiņa paliek apakšprogrammas iekšienē. Izsaucēja mainīgais paliek tāds pats:

```raku
sub greet($name is copy) {
    $name = "dear $name";
    say "Hello, $name!";
}

my $who = 'Anna';
greet($who); # Hello, dear Anna!
say $who;    # Anna — the caller's own variable is untouched
```

Īpašība `is rw` iet vēl tālāk. Tā savieno parametru ar izsaucēja mainīgo. Jūs maināt parametru apakšprogrammas iekšienē. Tad izmaiņa ir redzama arī ārpusē:

```raku
sub bump($n is rw) {
    $n++;
}

my $x = 10;
bump($x);
say $x; # 11
```

Bez kādas no šīm īpašībām `$n++` dod kļūdu. Tas ir tāpēc, ka parametrs ir tikai lasāms.

Vēl viena izplatīta īpašība nosaka noklusējuma vērtību:

```raku
my $port is default(8080);
say $port; # 8080
```

Šeit `is default` dod mainīgajam noklusējuma vērtību. Mainīgajam ir šī vērtība, kad tajā nav nekā cita. Ir daudz iebūvētu īpašību: `is rw`, `is copy`, `is default` un citas. Katra no tām pievieno deklarācijai vienu īpašu uzvedību. Tas notiek kompilēšanas laikā. Nākamā tēma parāda, ka īpašību saraksts nav slēgts. [Jūs varat izveidot savas īpašības](/lv/advanced/traits-pragmas/writing-a-trait).

{% include nav.html %}
