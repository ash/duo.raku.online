---
title: Pragmata
---

{% include menu.html %}

_Pragma_ simile modulo videtur. Id cum `use` oneras. Sed novum codicem non importat. Potius regulam compilationis mutat. Mutatio usque ad finem ambitus currentis operatur. Pragma cum `use` activas. Si sensum habet, id cum `no` deactivare potes.

Pragma gravissimum est `strict`. In Raku id **ex defectu activum** est. Cum eo omnem variabilem declarare debes antequam eam adhibes. Ergo Raku errores scribendi in nominibus variabilium invenit. Nomen falsum non tacite novam variabilem facit.

`no strict` pragma `strict` deactivat. Tum haec regula abest. Nunc variabili sine `my` valorem assignare potes:

```raku
no strict;

$x = 42;
say $x; # 42
```

Cum `strict` solito, hoc `$x = 42` sine `my` error est. Raku eum tempore compilationis ostendit: *Variable '$x' is not declared*. Linea `no strict` hanc regulam deactivat. Hoc usque ad finem ambitus durat.

Sunt etiam alia pragmata. `fatal` defectum quietum in exceptionem iactam convertit. Hoc utile est cum exceptiones tractare scis. `isms` quosdam modos scribendi codicem ex aliis linguis permittit. `variables` regulas pro variabilibus mutat. Effectus pragmatis _lexicalis_ est. Tantum usque ad finem blocki sui operatur. Ergo regulam severiorem vel minus severam facere potes. Hoc facere potes ibi ubi in codice opus est.

Unum pragma argumentum accipit. Hoc est `lib`. Raku modulos in indice directoriorum quaerit. `lib` directorium ad hunc indicem addit. Sicut optio lineae mandatorum `-I` operatur. Sed id intra programma scribis:

```raku
use lib 'lib';
```

Id tibi necessarium erit cum tuos [modulos](/la/advanced/modules-basics/using-modules) scribes et onerabis.

{% include nav.html %}
