---
title: Fluxus normales
translations_gpt:
---

{% include menu.html %}

Omne programma tria _fluenta vulgaria_ habet quae id cum ambitu suo coniungunt. Sunt exitus vulgaris, error vulgaris et introitus vulgaris. Raku ea per tres variabiles speciales praebet: `$*OUT`, `$*ERR` et `$*IN`.

Re vera iam ab ipso initio in exitum vulgarem scripsisti. Et `say` et `print` textum suum ad `$*OUT` mittunt.

```raku
say 'Hello'; # ad exitum vulgarem it
```

Nuntii errorum et alii nuntii de difficultatibus ad fluentum separatum eunt, errorem vulgarem. Sic cum vero exitu programmatis non miscentur. Procedura `note` illuc scribit:

```raku
note 'Something looks wrong'; # ad errorem vulgarem it
```

Ea separata servare utile est, quia utrumque fluentum separatim redirigere potes. Exempli gratia, exitum programmatis in archivo servare potes. Nuntii errorum eius tamen adhuc in screen apparent.

In fluenta etiam directe scribere potes. Et `$*OUT` et `$*ERR` sunt _tractabula_ cum propriis methodis `say` et `print`:

```raku
$*OUT.say('a normal line');
$*ERR.say('a diagnostic line');
```

Tertium fluentum, `$*IN`, est introitus vulgaris. Iam id adhibuisti, sed non directe: `prompt` lineam ex eo legit. Ad introitum legendum redibimus in argumento de [tractabulis archivorum](/la/oop/file-handles). Nam `$*IN` tractabulum est, sicut archivum apertum.

{% include nav.html %}
