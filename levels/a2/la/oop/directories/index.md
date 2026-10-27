---
title: Cum directoriis laborare
translations_gpt:
---

{% include menu.html %}

Interdum cum ipso systemate archivorum laborare debes. Systema archivorum omnia archiva et directorias in disco tenet. Exempli gratia probas quid exsistat, aut directorias creas. Directoria est sicut capsa. Archiva et alias directorias tenere potest. Ad hoc opus Raku _obiectis semitae_ utitur. Semita ostendit ubi archivum aut directoria sit. Methodus `.IO` quamlibet chordam in obiectum semitae vertit. Deinde obiectum semitae ad quaestiones de hac semita respondet.

Duae quaestiones frequentissimae sunt. Exsistitne semita? Et cuius generis res est?

```raku
spurt 'greeting.txt', 'hi';

say 'greeting.txt'.IO.e; # True  — exsistitne?
say 'greeting.txt'.IO.f; # True  — estne archivum?
say 'greeting.txt'.IO.d; # False — estne directoria?
```

`.e` probat an semita exsistat. `.f` probat an archivum ordinarium sit. `.d` probat an directoria sit.

`mkdir` novam directoriam creat:

```raku
mkdir 'reports';
say 'reports'.IO.d; # True
```

Argumentum sequens ostendit quomodo res in directoria enumeres.

{% include nav.html %}
