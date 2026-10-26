---
title: Entjeroj
translations_gpt:
---

{% include menu.html %}

Vi uzas entjerojn jam de la komenco mem de la kurso. Ĉi tiu sekcio rigardas kelkajn iliajn trajtojn, kiujn oni facile ne rimarkas.

La plej grava estas, ke entjeroj en Raku havas _arbitran precizecon_. Ili ne havas fiksan nombron da bajtoj. Ili neniam silente superfluas kaj donas malĝustan rezulton. Se estas sufiĉe da memoro, entjero povas kreski tiom, kiom vi bezonas:

```raku
say 2 ** 100;
# 1267650600228229401496703205376
```

Ĉi tio estas la ekzakta valoro, ne rondigita. La samo validas, kiam vi multiplikas grandajn nombrojn. Ekzemple, Raku kalkulas la faktorialon de 50 ekzakte:

```raku
my $factorial = 1;
$factorial = $factorial * $_ for 1..50;
say $factorial;
# 30414093201713378043612608166064768844377641568960512000000000000
```

Vi povas grupigi la ciferojn de longaj nombroj per substrekoj. Tio faras ilin pli facile legeblaj en via kodo. La kompililo ignoras la substrekojn:

```raku
say 1_000_000; # 1000000
```

La sekvaj temoj montras, kiel skribi entjerojn en aliaj nombrobazoj. Ili ankaŭ prezentas kelkajn utilajn metodojn de entjeroj.

{% include nav.html %}
