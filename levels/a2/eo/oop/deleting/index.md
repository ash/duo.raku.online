---
title: Forigi dosierojn kaj dosierujojn
translations_gpt:
---

{% include menu.html %}

`spurt` kaj `mkdir` kreas aferojn sur la disko. Du aliaj rutinoj forigas aferojn de la disko.

La rutino `unlink` forigas dosieron:

```raku
spurt 'temp.txt', 'scratch data';
say 'temp.txt'.IO.e; # True

unlink 'temp.txt';
say 'temp.txt'.IO.e; # False
```

`unlink` forigas la dosieron kun la donita nomo. Kiel aliaj dosiersistemaj rutinoj, `unlink` ankaŭ estas metodo. Vi vokas ĝin sur vojobjekto: `'temp.txt'.IO.unlink`.

Forigo okazas tuj, kaj ĝi estas por ĉiam. Ne estas rubujo. Vi ne povas rehavi la dosieron. Notu ankoraŭ unu aferon. Post kiam vi forigas dosieron, kontrolu ĝin per `.e`. Ĉi tiu metodo kontrolas, ĉu la vojo ekzistas. Ne uzu `.f` ĉi tie. La testoj `.f` kaj `.d` kontrolas la tipon de la vojo. Ili ĵetas eraron, kiam la vojo ne estas tie.

La rutino `rmdir` forigas dosierujon. Sed la dosierujo devas esti **malplena**:

```raku
mkdir 'reports';
rmdir 'reports';
say 'reports'.IO.e; # False
```

Se la dosierujo ne estas malplena, `rmdir` forigas nenion. La dosierujo restas sur sia loko. Do vi forigas dosierujon kun dosieroj en du paŝoj. Unue, vi malplenigas ĝin. Poste vi forigas ĝin:

```raku
mkdir 'reports';
spurt 'reports/jan.txt', 'January';
spurt 'reports/feb.txt', 'February';

.unlink for 'reports'.IO.dir;   # forigu ĉiun eron
rmdir 'reports';                # nun la dosierujo estas malplena
say 'reports'.IO.e;             # False
```

`'reports'.IO.dir` donas liston de la eroj en la dosierujo. Vi vidis ĝin en la antaŭa temo. La programo vokas `.unlink` sur ĉiu ero. Tio forigas ilin ĉiujn. Nun la dosierujo estas malplena. Do `rmdir` povas forigi ĝin. Ĉi tiu simpla buklo atendas nur dosierojn en la dosierujo. Sed dosierujo povas ankaŭ havi aliajn dosierujojn en si. Tiam vi devas unue malplenigi ĉiun internan dosierujon. Vi faras tion laŭ la sama maniero.

{% include nav.html %}
