---
title: Tipizētie mainīgie
---

{% include menu.html %}

Raku valodā skalārs mainīgais (jeb skalāra konteiners) glabā vienu objektu. Šis objekts var būt dažādu tipu. Piemēram, tas pats mainīgais vispirms var saturēt skaitli un pēc tam virkni:

```raku
my $var = 42;
$var = 'Hello';
```

Šeit ir vēl viens piemērs, kas vienā izteiksmē sajauc dažādus datu tipus:

```raku
my $a = '100';
my $b = 200;
say $a + $b; # 300
```

Tā, iespējams, nav labākā programmēšanas prakse. Bet tā ir pilnīgi pareiza Raku programma.

Tomēr Raku ļauj jums izvēlēties, ko mainīgais drīkst glabāt. Vairāk detaļu jūs atradīsiet zemāk esošajās tēmās.

{% include nav.html %}
