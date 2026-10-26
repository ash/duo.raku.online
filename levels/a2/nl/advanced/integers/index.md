---
title: Gehele getallen
---

{% include menu.html %}

Je gebruikt gehele getallen al vanaf het begin van de cursus. Gehele getallen zijn getallen zonder komma. Dit gedeelte laat een paar van hun eigenschappen zien. Die eigenschappen zie je misschien niet meteen.

De belangrijkste eigenschap is _willekeurige precisie_. Een geheel getal in Raku heeft geen vast aantal bytes. Daarom loopt het nooit over. Bij een overflow wordt een getal te groot. Dan wordt het stilletjes fout. Met genoeg geheugen kan een geheel getal zo groot zijn als je nodig hebt:

```raku
say 2 ** 100;
# 1267650600228229401496703205376
```

Deze waarde is exact. Ze is niet afgerond. Dat geldt ook als je grote getallen vermenigvuldigt. Raku vindt bijvoorbeeld de exacte faculteit van 50:

```raku
my $factorial = 1;
$factorial = $factorial * $_ for 1..50;
say $factorial;
# 30414093201713378043612608166064768844377641568960512000000000000
```

Lange getallen in de code zijn moeilijk te lezen. Daarom kun je de cijfers in groepen zetten met underscores. De compiler slaat de underscores over:

```raku
say 1_000_000; # 1000000
```

De volgende onderwerpen laten zien hoe je gehele getallen in andere talstelsels schrijft. Grondtal 10 is niet het enige. Ze laten ook een paar handige methoden voor gehele getallen zien.

{% include nav.html %}
