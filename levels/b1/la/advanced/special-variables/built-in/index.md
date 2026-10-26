---
title: Incorporatae speciales variabiles
translations_gpt:
---

{% include menu.html %}

Raku seriem variabilium pro te definit. Pleraeque earum _dynamicae_ sunt, cum twigil `*`. Itaque eas ubique legere potes, ut apud [variabiles dynamicas](/la/advanced/special-variables/dynamic-variables) vidisti. Etiam eas pro circumscriptione superare potes. Ecce eae quas saepissime adhibebis.

## Fluenta vulgaria

Introitus et exitus per tres variabiles dynamicas eunt: `$*OUT` pro exitu vulgari, `$*ERR` pro errore vulgari, et `$*IN` pro introitu vulgari. `say` et `print` in `$*OUT` scribunt. Ut textum potius ad errorem vulgarem mittas, methodum in `$*ERR` voca:

```raku
$*OUT.say('normal output'); # ad exitum vulgarem it
$*ERR.say('a diagnostic');  # ad errorem vulgarem it
```

Quia hae variabiles dynamicae sunt, `$*OUT` in clausula redirigere potes. Tum omnia quae intra illam clausulam vocas exitum suum ad novum locum mittunt. Nihil illius codicis mutare necesse est.

## Programma et processus eius

Paucae variabiles de ipso programmate currenti informationem dant:

```raku
say $*PROGRAM-NAME; # semita scripti quod curritur
say $*PID;          # identificator processus huius programmatis
say $*CWD;          # directoria laboris currens
```

Valores earum mutantur quotiens programma incipis. Itaque hic nullum exitum fixum ostendere possumus.

## Linea imperandi et ambitus

Argumenta et ambitus in duobus receptaculis adveniunt quae parata sunt ad usum:

* `@*ARGS` — series argumentorum lineae imperandi (subprogramma `MAIN` eadem accipit)
* `%*ENV` — variabiles ambitus, in mappa

```raku
say @*ARGS.elems; # quot argumenta tradita sint
say %*ENV<HOME>;  # valor variabilis ambitus HOME
```

Propter has variabiles inbuiltas eandem informationem ipse colligere non debes. Etiam dynamicae sunt, itaque Raku eas per acervum vocationum quaerit. Itaque quodlibet inbuiltum `$*` pro circumscriptione superare potes. Hoc prorsus ut cum variabili `$*` tua propria operatur.

Praeter has variabiles dynamicas, Raku etiam inbuilta `?` temporis compilationis habet: `$?FILE` et `$?LINE`. Ea iam vidisti in pagina de [twigiliis](/la/advanced/special-variables/twigils).

{% include nav.html %}
