---
title: Cum directoriis laborare
translations_gpt:
---

{% include menu.html %}

Interdum cum ipso systemate archivorum laborare debes. Exempli gratia fortasse probare vis quid exsistat, aut directorias creare. Ad hoc Raku _obiectis semitae_ utitur. Quamlibet chordam in obiectum semitae per methodum `.IO` vertere potes. Obiectum semitae deinde ad quaestiones de illa semita respondet.

Saepissime rogas utrum semita exsistat et cuius generis res sit:

```raku
spurt 'greeting.txt', 'hi';

say 'greeting.txt'.IO.e; # True  — exsistitne?
say 'greeting.txt'.IO.f; # True  — estne archivum?
say 'greeting.txt'.IO.d; # False — estne directoria?
```

`.e` probat utrum semita exsistat. `.f` archivum ordinarium probat, et `.d` directoriam probat.

Ut novam directoriam creetur, utere `mkdir`:

```raku
mkdir 'reports';
say 'reports'.IO.d; # True
```

In argumento sequenti videbis quomodo contenta directoriae enumeres.

{% include nav.html %}
