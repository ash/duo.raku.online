---
title: Veseli skaitļi
translations_gpt:
---

{% include menu.html %}

Jūs esat lietojuši veselos skaitļus kopš paša kursa sākuma. Šī sadaļa aplūko dažas to īpašības, kuras ir viegli nepamanīt.

Vissvarīgākā ir tā, ka veselajiem skaitļiem Raku valodā ir _patvaļīga precizitāte_. Tiem nav fiksēta baitu skaita. Tie nekad klusi nepārplūst un nedod nepareizu rezultātu. Ja pietiek atmiņas, vesels skaitlis var izaugt tik liels, cik jums vajag:

```raku
say 2 ** 100;
# 1267650600228229401496703205376
```

Šī ir precīza vērtība, nevis noapaļota. Tas pats ir spēkā, kad jūs reizināt lielus skaitļus. Piemēram, Raku precīzi aprēķina 50 faktoriālu:

```raku
my $factorial = 1;
$factorial = $factorial * $_ for 1..50;
say $factorial;
# 30414093201713378043612608166064768844377641568960512000000000000
```

Jūs varat grupēt garu skaitļu ciparus ar pasvītrām. Tad tos ir vieglāk lasīt jūsu kodā. Kompilators pasvītras ignorē:

```raku
say 1_000_000; # 1000000
```

Nākamās tēmas parāda, kā rakstīt veselos skaitļus citās skaitīšanas sistēmās. Tās arī iepazīstina ar dažām noderīgām veselo skaitļu metodēm.

{% include nav.html %}
