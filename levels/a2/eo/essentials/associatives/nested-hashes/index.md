---
title: Nestitaj haketmapoj
---

{% include menu.html %}

Vi faras nestitajn haketojn same kiel [nestitajn tabelojn](/eo/essentials/positionals/nested-arrays). Metu kurbajn krampojn ĉirkaŭ ĉiu interna haketo.

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

Notu, ke komo post la lasta ero estas ankaŭ ĝusta:

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

La komo estas utila. Ĝi helpas, kiam vi ŝanĝas la strukturon per kopiado kaj algluado.

Por preni elementon de interna haketo, uzu du ŝlosilojn. Skribu ilin unu post la alia.

```raku
say %homoj<John><urbo>; # Madrido
say %homoj<Alla><urbo>; # Tokio
```

{% include nav.html %}
