---
title: 'Saluton, Mondo!'
---

{% include menu.html %}

Bonege, ni lernis la bazojn. Nun ni povas paroli al Raku kaj vidi ĝian respondon. Do ni iru rekte al la unua vera programo, ‘Saluton, Mondo!’.

```raku
say 'Saluton, Mondo!';
```

Baldaŭ ni lernos la bazojn de funkcioj. Sed unue ni rigardu kelkajn malsamajn opciojn por ĉi tiu programo.

Antaŭ ĉio, vi povas meti la argumenton de la funkcio en krampojn:

```raku
say('Saluton, Mondo!');
```

Due, vi povas uzi du aliajn funkciojn, `put` kaj `print`. Denove, vi povas skribi ilin kun aŭ sen krampoj:

```raku
put 'Saluton, Mondo!';

print("Saluton, Mondo!\n");
```

Rimarku, ke kun `print` vi devas mem aldoni la novlinian karakteron. Ĝi venas ĉe la fino de la mesaĝo. Sed ne zorgu, ni rigardos ĉiujn ĉi tiujn detalojn poste.

Antaŭ ol ni daŭrigas, jen unu plia ekscita opcio. Vi povas voki funkcion kiel metodon, rekte sur la ĉeno:

```raku
'Saluton, Mondo!'.say;
```

{% include nav.html %}
