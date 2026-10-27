---
title: Plicas et directoria delere
translations_gpt:
---

{% include menu.html %}

`spurt` et `mkdir` res in disco creant, et duae aliae procedurae eas removent.

Procedura `unlink` archivum delet:

```raku
spurt 'temp.txt', 'scratch data';
say 'temp.txt'.IO.e; # True

unlink 'temp.txt';
say 'temp.txt'.IO.e; # False
```

`unlink` archivum cum nomine dato delet. Sicut ceterae procedurae systematis archivorum, etiam formam methodi habet. Eam in obiecto semitae vocas: `'temp.txt'.IO.unlink`.

Deletio statim fit et perpetua est. Nullum quisquiliarium est unde archivum recuperes. Nota etiam unam rem de archivo deleto. Id per `.e` (exsistentiam) probare debes, non per `.f`. Probationes generis `.f` et `.d` errorem dant si semita non adest.

Procedura `rmdir` directoriam removet, sed solum **vacuam**:

```raku
mkdir 'reports';
rmdir 'reports';
say 'reports'.IO.e; # False
```

Si in directoria adhuc aliquid est, `rmdir` nihil removet. Directoria manet ubi est. Itaque ut directoriam cum archivis deleas, primum eam vacuam fac, deinde eam remove:

```raku
mkdir 'reports';
spurt 'reports/jan.txt', 'January';
spurt 'reports/feb.txt', 'February';

.unlink for 'reports'.IO.dir;   # omnem ingressum dele
rmdir 'reports';                # nunc directoria vacua est
say 'reports'.IO.e;             # False
```

`'reports'.IO.dir` ingressus directoriae enumerat, ut in argumento superiore vidisti. Si `.unlink` in unoquoque ingressu vocas, eum removet. Cum directoria vacua est, `rmdir` eam removere potest. Nota hunc anulum simplicem sola archiva in directoria exspectare. Arbor cum directoriis nidificatis recursionem requireret, quae eas primum vacuas faceret.

{% include nav.html %}
