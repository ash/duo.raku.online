---
title: Ternarius operator
---

{% include menu.html %}

In Raku operator ternarius duas partes habet: `??` ... `!!`. Probatio Booleana primum venit, et duae expressiones eam sequuntur. Tantum una ex eis currit, secundum eventum probationis.

```raku
my $shines = 'Sol';
my $tempus-diei = $shines eq 'Sol' ?? 'dies' !! 'nox';
say $tempus-diei;
```

Cum valore quem `$shines` nunc habet, programma `dies` imprimit. Si eum in `Luna` mutas, programma `nox` imprimit.

Expressiones ternarias concatenare potes. Tantum cura ut codex non nimis implicatus fiat.

```raku
my $horae = 20;
my $tempus-diei =
    $horae <= 6 ?? 'Nox' !!
    $horae <= 12 ?? 'Mane' !! 
    $horae <= 18 ?? 'Postmeridianum' !! 'Vespera';
say $tempus-diei;
```

Hic programma pro diversis valoribus `$horae` diversam partem diei imprimit.

{% include nav.html %}
