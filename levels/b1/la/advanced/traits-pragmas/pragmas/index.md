---
title: Pragmata
---

{% include menu.html %}

_Pragma_ simile videtur modulo quem cum `use` oneras. Sed nullum codicem importat. Potius regulam compilationis pro reliquo ambitu currenti mutat. Id cum `use` activas, et, ubi sensum habet, cum `no` deactivas.

Pragma gravissimum, `strict`, in Raku **ex defectu activum** est. Requirit ut omnem variabilem declares antequam eam adhibes. Ideo Raku errorem scribendi in nomine variabilis deprehendit. Sine eo, error tacite novam variabilem crearet.

Si `strict` cum `no strict` deactivas, haec regula iam non valet. Tum variabili assignare potes quae numquam cum `my` declarata est:

```raku
no strict;

$x = 42;
say $x; # 42
```

Cum `strict` ex defectu, hoc nudum `$x = 42` error tempore compilationis esset. Nuntius est *Variable '$x' is not declared*. Linea `no strict` regulam relaxat usque ad finem ambitus circum eam.

Quaedam alia pragmata sunt `fatal`, `isms` et `variables`. `fatal` defectum quietum in exceptionem iactam convertit. Hoc utile est cum iam scis exceptiones tractare. `isms` modos scribendi permittit qui ex aliis linguis veniunt. `variables` tibi permittit regulas variabilium moderari. Effectus pragmatis _lexicalis_ est. Tantum usque ad finem blocki durat ubi apparet. Ergo regulam severiorem vel laxiorem facere potes. Hoc facere potes in ipsa parte codicis ubi eam requiris.

Unum pragma argumentum accipit: `lib`. Directorium addit ad indicem in quo Raku quaerit cum modulos onerat. Idem facit ac optio lineae mandatorum `-I`, sed intra programma:

```raku
use lib 'lib';
```

Eo uti incipies cum tuos proprios [modulos](/la/advanced/modules-basics/using-modules) scribere et onerare incipies.

{% include nav.html %}
