---
title: Series
translations_gpt:
---

{% include menu.html %}

_Series_ est catena valorum ordine dispositorum, qui unus post alterum fiunt. Raku series operatore `...` construit. Exemplar in valoribus quos ei das invenit. Deinde cetera generat, usque ad finem.

Series simplicissima tantum ab uno valore ad alterum numerat:

```raku
say 1 ... 5; # (1 2 3 4 5)
```

Si duos valores initiales das, Raku gradum inter eos invenit. Deinde eodem gradu pergit. Sic seriem arithmeticam facis:

```raku
say 1, 3 ... 11; # (1 3 5 7 9 11)
```

Hic valores initiales `1, 3` gradum duorum faciunt. Itaque Raku binis sursum numerat et consistit cum `11` attingit.

Valor quem `...` producit typum `Seq` habet:

```raku
say (1 ... 5).WHAT; # (Seq)
```

Proxima themata alia exemplaria ostendunt quae operator `...` agnoscere potest. Etiam ostendunt quomodo series pigra esse possit, atque etiam infinita.

{% include nav.html %}
