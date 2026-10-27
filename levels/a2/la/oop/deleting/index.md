---
title: Plicas et directoria delere
translations_gpt:
---

{% include menu.html %}

`spurt` et `mkdir` res in disco creant. Duae aliae procedurae res ex disco removent.

Procedura `unlink` archivum delet:

```raku
spurt 'temp.txt', 'scratch data';
say 'temp.txt'.IO.e; # True

unlink 'temp.txt';
say 'temp.txt'.IO.e; # False
```

`unlink` archivum cum nomine dato delet. Sicut aliae procedurae systematis archivorum, `unlink` etiam methodus est. Eam in obiecto semitae vocas: `'temp.txt'.IO.unlink`.

Deletio statim fit, et in perpetuum manet. Nullum quisquiliarium est. Archivum recuperare non potes. Nota etiam unam rem. Postquam archivum deles, id per `.e` proba. Haec methodus probat an semita exsistat. Noli hic `.f` adhibere. Probationes `.f` et `.d` genus semitae probant. Errorem dant cum semita non adest.

Procedura `rmdir` directoriam removet. Sed directoria **vacua** esse debet:

```raku
mkdir 'reports';
rmdir 'reports';
say 'reports'.IO.e; # False
```

Si directoria vacua non est, `rmdir` nihil removet. Directoria in loco suo manet. Itaque directoriam cum archivis duobus gradibus deles. Primum eam vacuam facis. Deinde eam removes:

```raku
mkdir 'reports';
spurt 'reports/jan.txt', 'January';
spurt 'reports/feb.txt', 'February';

.unlink for 'reports'.IO.dir;   # omnem ingressum dele
rmdir 'reports';                # nunc directoria vacua est
say 'reports'.IO.e;             # False
```

`'reports'.IO.dir` indicem ingressuum directoriae dat. Id in argumento superiore vidisti. Programma `.unlink` in unoquoque ingressu vocat. Hoc omnes removet. Nunc directoria vacua est. Itaque `rmdir` eam removere potest. Hic anulus simplex sola archiva in directoria exspectat. Sed directoria etiam alias directorias continere potest. Tum primum quamque directoriam interiorem vacuam facere debes. Hoc eodem modo facis.

{% include nav.html %}
