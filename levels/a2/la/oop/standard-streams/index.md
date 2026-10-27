---
title: Fluxus normales
translations_gpt:
---

{% include menu.html %}

Omne programma tria _fluenta vulgaria_ habet. Fluentum textum in programma fert aut ex eo. Tria fluenta programma cum mundo externo coniungunt. Sunt exitus vulgaris, error vulgaris et introitus vulgaris. Raku tibi tres variabiles speciales pro eis dat: `$*OUT`, `$*ERR` et `$*IN`.

Exitus vulgaris est pro exitu ordinario programmatis. Eo iam semper uteris. `say` et `print` textum suum ad `$*OUT` mittunt.

```raku
say 'Hello'; # ad exitum vulgarem it
```

Nuntii errorum et alii nuntii de difficultatibus ad errorem vulgarem eunt. Hoc est fluentum separatum. Itaque hi nuntii cum vero exitu programmatis non miscentur. Procedura `note` in errorem vulgarem scribit:

```raku
note 'Something looks wrong'; # ad errorem vulgarem it
```

Hoc utile est. Utrumque fluentum in alium locum mittere potes. Hoc redirigere vocatur. Exempli gratia, exitum in archivo servare potes. Sed nuntios errorum adhuc in screen vides.

In fluenta etiam directe scribere potes. Utrumque, `$*OUT` et `$*ERR`, est _tractabulum_. Per tractabulum programma data scribere aut legere potest. Quodque tractabulum proprias methodos `say` et `print` habet:

```raku
$*OUT.say('a normal line');
$*ERR.say('a diagnostic line');
```

Tertium fluentum, `$*IN`, est introitus vulgaris. Textum in programma fert, exempli gratia ex claviatura. Iam id adhibuisti, sed non directe. Functio `prompt` lineam ex eo legit. Ad introitum legendum redimus in pagina de [tractabulis archivorum](/la/oop/file-handles). Nam `$*IN` tractabulum est, sicut archivum apertum.

{% include nav.html %}
