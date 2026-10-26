---
title: Incorporatae speciales variabiles
translations_gpt:
---

{% include menu.html %}

Raku seriem variabilium pro te paratam habet. Pleraeque earum _dynamicae_ sunt, cum twigil `*`. Iam [variabiles dynamicas](/la/advanced/special-variables/dynamic-variables) nosti. Itaque has variabiles ubique legere potes. Etiam novum valorem eis pro una circumscriptione dare potes. Ecce variabiles quas saepissime requiris.

## Fluenta vulgaria

Introitus et exitus per tres variabiles dynamicas eunt. `$*OUT` est exitus vulgaris. `$*ERR` est error vulgaris, exitus pro nuntiis errorum. `$*IN` est introitus vulgaris. `say` et `print` in `$*OUT` scribunt. Visne textum ad errorem vulgarem mittere? Tum methodum in `$*ERR` voca:

```raku
$*OUT.say('normal output'); # ad exitum vulgarem it
$*ERR.say('a diagnostic');  # ad errorem vulgarem it
```

Hae variabiles dynamicae sunt. Itaque intra clausulam `$*OUT` ad novum locum mittere potes. Tum codex quem in clausula vocas illuc imprimit. Illum codicem omnino non mutas.

## Programma et processus eius

Quaedam variabiles tibi de programmate narrant quod nunc currit:

```raku
say $*PROGRAM-NAME; # semita scripti quod curritur
say $*PID;          # identificator processus huius programmatis
say $*CWD;          # directoria laboris currens
```

Valores earum alii sunt quotiens programma incipis. Itaque exitum hic non ostendimus.

## Linea imperandi et ambitus

Raku argumenta et ambitum in duo receptacula ponit. Parata tibi sunt:

* `@*ARGS` — series argumentorum lineae imperandi; subprogramma `MAIN` eadem argumenta accipit
* `%*ENV` — variabiles ambitus, in mappa

```raku
say @*ARGS.elems; # quot argumenta tradita sint
say %*ENV<HOME>;  # valor variabilis ambitus HOME
```

Hae variabiles inbuiltae laborem tuum minuunt. Hanc informationem ipse colligere non debes. Dynamicae sunt, itaque Raku eas per acervum vocationum quaerit. Itaque quamlibet variabilem inbuiltam `$*` pro circumscriptione superare potes. Operatur sicut tua propria variabilis `$*`.

Hae omnes variabiles dynamicae sunt. Sed Raku etiam variabiles inbuiltas cum twigil `?` habet. Hae sunt `$?FILE` et `$?LINE`. Compilator valores earum ponit antequam programma currit. Eas iam vidisti in pagina de [twigiliis](/la/advanced/special-variables/twigils).

{% include nav.html %}
