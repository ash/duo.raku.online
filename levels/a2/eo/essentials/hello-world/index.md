---
title: 'Saluton, Mondo!'
---

{% include menu.html %}

Bonege! Nun ni scias la bazajn aferojn. Ni povas paroli al Raku kaj vidi ĝian respondon. Do ni iru al la unua vera programo: ‘Saluton, Mondo!’.

```raku
say 'Saluton, Mondo!';
```

Baldaŭ ni lernas la bazojn de funkcioj. Sed unue, jen kelkaj aliaj manieroj skribi ĉi tiun programon.

Unue, vi povas meti la argumenton de la funkcio en krampojn:

```raku
say('Saluton, Mondo!');
```

Due, vi povas uzi aliajn funkciojn: `put` kaj `print`. Denove, vi povas skribi ilin kun aŭ sen krampoj:

```raku
put 'Saluton, Mondo!';

print("Saluton, Mondo!\n");
```

Kun `print`, vi devas mem aldoni la novlinian karakteron. Ĉi tiu karaktero komencas novan linion. Metu ĝin ĉe la fino de la mesaĝo. Sed ne zorgu. Ni rigardas ĉiujn ĉi tiujn detalojn poste.

Antaŭ ol ni daŭrigas, jen unu plia ekscita maniero. Vi povas voki la funkcion kiel metodon. Voku ĝin rekte sur la ĉeno:

```raku
'Saluton, Mondo!'.say;
```

{% include nav.html %}
