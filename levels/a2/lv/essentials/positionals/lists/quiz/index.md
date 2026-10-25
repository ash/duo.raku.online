---
title: Viktorīna — Saraksts un skalārs vs. saraksts un masīvs
---

{% include menu.html %}

Apskatiet piešķīrumus zemāk. Labajā pusē ir saraksti. Kāda tipa objektus glabā mainīgie?

### 1

```raku
my $x = (100, 200, 300);
my @x = (100, 200, 300);

say $x.WHAT;
say @x.WHAT;
```

Izvēlieties pareizās atbildes:

{:.quiz-select}
(Saraksts) | Mainīgā `$x` tips ir&nbsp; (: (Masīvs), (Int), (Saraksts) :)
(Masīvs) | Mainīgā `@x` tips ir&nbsp; (: (Masīvs), (Int), (Saraksts) :)

## 2*

Šis gadījums ir grūtāks. Varbūt jūs to tagad nesaprotat. Neuztraucieties par to. Kursa otrā daļa atgriežas pie šīs tēmas.

```raku
my $x = [100, 200, 300];
my @x = [100, 200, 300];

say $x.WHAT;
say @x.WHAT;
```

Izvēlieties pareizās atbildes:

{:.quiz-select}
(Masīvs) | Mainīgā `$x` tips ir&nbsp; (: (Masīvs), (Int), (Saraksts) :)
(Masīvs) | Mainīgā `@x` tips ir&nbsp; (: (Masīvs), (Int), (Saraksts) :)

{% include quiz.html %}

{% include nav.html %}
