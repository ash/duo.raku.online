---
title: Forigi dosierojn kaj dosierujojn
translations_gpt:
---

{% include menu.html %}

`spurt` kaj `mkdir` kreas aferojn sur disko, kaj du aliaj rutinoj forigas ilin.

La rutino `unlink` forigas dosieron:

```raku
spurt 'temp.txt', 'scratch data';
say 'temp.txt'.IO.e; # True

unlink 'temp.txt';
say 'temp.txt'.IO.e; # False
```

`unlink` forigas la dosieron kun la donita nomo. Kiel la aliaj dosiersistemaj rutinoj, ĝi ankaŭ havas metodan formon. Vi vokas ĝin sur vojobjekto: `'temp.txt'.IO.unlink`.

Forigo okazas tuj kaj estas definitiva. Ne estas rubujo, el kiu vi povus rehavi la dosieron. Notu ankoraŭ unu aferon pri forigita dosiero. Vi devas kontroli ĝin per `.e` (ekzisto), ne per `.f`. La tipaj testoj `.f` kaj `.d` ĵetas eraron, se la vojo ne estas tie.

La rutino `rmdir` forigas dosierujon, sed nur **malplenan**:

```raku
mkdir 'reports';
rmdir 'reports';
say 'reports'.IO.e; # False
```

Se la dosierujo ankoraŭ havas ion en si, `rmdir` forigas nenion. La dosierujo restas, kie ĝi estas. Do por forigi dosierujon kun dosieroj, unue malplenigu ĝin, kaj poste forigu ĝin:

```raku
mkdir 'reports';
spurt 'reports/jan.txt', 'January';
spurt 'reports/feb.txt', 'February';

.unlink for 'reports'.IO.dir;   # forigu ĉiun eron
rmdir 'reports';                # nun la dosierujo estas malplena
say 'reports'.IO.e;             # False
```

`'reports'.IO.dir` listigas la erojn de la dosierujo, kiel vi vidis en la antaŭa temo. Voki `.unlink` sur ĉiu ero forigas ĝin. Kiam la dosierujo estas malplena, `rmdir` povas forigi ĝin. Notu, ke ĉi tiu simpla buklo atendas, ke la dosierujo enhavas nur dosierojn. Arbo de nestitaj subdosierujoj bezonus rekursion por unue malplenigi ilin.

{% include nav.html %}
