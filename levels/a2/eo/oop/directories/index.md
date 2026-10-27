---
title: Labori kun dosierujoj
translations_gpt:
---

{% include menu.html %}

Foje vi devas labori kun la dosiersistemo mem. La dosiersistemo tenas ĉiujn dosierojn kaj dosierujojn sur la disko. Ekzemple, vi kontrolas, kio ekzistas, aŭ vi kreas dosierujojn. Dosierujo estas kiel tekujo. Ĝi povas teni dosierojn kaj aliajn dosierujojn. Por ĉi tiu laboro, Raku uzas _vojobjektojn_. Vojo montras, kie dosiero aŭ dosierujo estas. La metodo `.IO` faras vojobjekton el ĉiu ĉeno. Tiam la vojobjekto respondas demandojn pri ĉi tiu vojo.

Du demandoj estas la plej oftaj. Ĉu la vojo ekzistas? Kaj kia afero ĝi estas?

```raku
spurt 'greeting.txt', 'hi';

say 'greeting.txt'.IO.e; # True  — ĉu ĝi ekzistas?
say 'greeting.txt'.IO.f; # True  — ĉu ĝi estas dosiero?
say 'greeting.txt'.IO.d; # False — ĉu ĝi estas dosierujo?
```

`.e` kontrolas, ĉu la vojo ekzistas. `.f` kontrolas, ĉu ĝi estas ordinara dosiero. `.d` kontrolas, ĉu ĝi estas dosierujo.

`mkdir` kreas novan dosierujon:

```raku
mkdir 'reports';
say 'reports'.IO.d; # True
```

La sekva temo montras, kiel listigi, kio estas en dosierujo.

{% include nav.html %}
