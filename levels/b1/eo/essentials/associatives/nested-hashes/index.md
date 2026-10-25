---
title: Nestitaj haketmapoj
---

{% include menu.html %}

Vi kreas nestitajn haketojn simile kiel [nestitajn tabelojn](/eo/essentials/positionals/nested-arrays). Uzu kurbajn krampojn ĉirkaŭ la internaj haketoj.

```raku
my %homoj =
    John => {
        aĝo => 20,
        urbo => 'Madrido'
    },
    Alla => {
        aĝo => 21,
        urbo => 'Tokio'
    };
```

Notu, ke fina komo (komo post la lasta ero) estas valida sintakso:

```raku
my %homoj =
    John => {
        aĝo => 20,
        urbo => 'Madrido',
    },
    Alla => {
        aĝo => 21,
        urbo => 'Tokio',
    };
```

Ĉi tiu komo faciligas ŝanĝi la strukturon per kopiado kaj algluado de linioj.

Uzu du ŝlosilojn unu post la alia por preni la elementojn de la internaj haketoj.

```raku
say %homoj<John><urbo>; # Madrido
say %homoj<Alla><urbo>; # Tokio
```

{% include nav.html %}
