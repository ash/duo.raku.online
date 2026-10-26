---
title: Importado
---

{% include menu.html %}

Estas pluraj manieroj alporti modulon en programon. Raku havas tri deklarojn por tio: `use`, `need` kaj `require`. Ili estas malsamaj laŭ du aferoj. La unua estas, _kiam_ ili ŝargas la modulon. La dua estas, _kion_ ili donas al la programo.

## `use`

Vi jam konas `use`. Ĝi ŝargas la modulon je kompiltempo, antaŭ ol la programo ruliĝas. Ĝi ankaŭ importas la eksportitajn nomojn de la modulo. Do vi povas voki ilin rekte:

```raku
use Greeting;
say hello('Anna'); # Hello, Anna!
```

## `need`

`need` ankaŭ ŝargas la modulon je kompiltempo. Sed ĝi _ne_ importas la eksportitajn nomojn. Vi tamen povas atingi la `our`-variablojn de la modulo. Uzu la nomon de la modulo por tio:

```raku
need Greeting;
say $Greeting::version; # 1.0
```

Post `need Greeting`, simpla `hello(...)` ne funkcias. La programo importis nenion. Nur la plenaj nomoj estas disponeblaj, kun la nomo de la modulo en ili. Ekzemplo estas `$Greeting::version`.

## `require`

`require` ŝargas la modulon je _rultempo_, ne je kompiltempo. Tio utilas en kelkaj kazoj. Foje vi ne scias, ĉu vi bezonas modulon. Vi scias tion nur, kiam la programo ruliĝas. Ekzemple, la uzanto eble enigas la nomon de la modulo.

La modulo ŝargiĝas je rultempo. Do Raku importas nenion aŭtomate. Post la nomo de la modulo, skribu la nomojn, kiujn vi volas. Metu ilin en angulajn krampojn. Tiam Raku importas ilin. Do vi povas voki ilin rekte:

```raku
require Greeting <&hello>;
say hello('Anna'); # Hello, Anna!
```

Kutime, `use` estas la ĝusta elekto. `need` kaj `require` estas por malpli oftaj kazoj.

{% include nav.html %}
