---
title: Labori kun dosierujoj
translations_gpt:
---

{% include menu.html %}

Foje vi devas labori kun la dosiersistemo mem. Ekzemple, vi eble volas kontroli, kio ekzistas, aŭ krei dosierujojn. Por tio, Raku uzas _vojobjektojn_. Vi povas fari vojobjekton el ĉiu ĉeno per la metodo `.IO`. La vojobjekto tiam respondas demandojn pri tiu vojo.

Plej ofte, vi demandas, ĉu vojo ekzistas kaj kia afero ĝi estas:

```raku
spurt 'greeting.txt', 'hi';

say 'greeting.txt'.IO.e; # True  — ĉu ĝi ekzistas?
say 'greeting.txt'.IO.f; # True  — ĉu ĝi estas dosiero?
say 'greeting.txt'.IO.d; # False — ĉu ĝi estas dosierujo?
```

`.e` kontrolas, ĉu la vojo ekzistas. `.f` kontrolas, ĉu ĝi estas ordinara dosiero, kaj `.d` kontrolas, ĉu ĝi estas dosierujo.

Por krei novan dosierujon, uzu `mkdir`:

```raku
mkdir 'reports';
say 'reports'.IO.d; # True
```

En la sekva temo, vi vidos, kiel listigi la enhavon de dosierujo.

{% include nav.html %}
