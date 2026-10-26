---
title: Heredocs
---

{% include menu.html %}

_Heredoc_ est forma citandi pro textu multarum linearum. Nullos delimitatores circa textum habet. Pro eis verbum terminans cum `:to` das. Terminator finem signat. Series in proxima linea incipit. Usque ad lineam cum solo illo verbo pergit:

```raku
my $text = q:to/END/;
Hello,
World!
END

print $text;
```

Hoc imprimit:

```
Hello,
World!
```

Terminator finem textus signat. Hic est `END`, sed quodlibet verbum adhibere potes. Specta `print`. Textus finem lineae ante terminatorem servat. Itaque textus iam cum fractura lineae desinit. `say` alteram addit. Tum lineam vacuam in fine accipis. Hoc heredoc cum `q:to` incipit. Itaque Raku textum non interpolat. Ut variabiles interpoles, `qq:to` adhibe:

```raku
my $name = 'Anna';

my $greeting = qq:to/EOF/;
Dear $name,
Welcome!
EOF

print $greeting;
```

Ecce res utilis. Specta **indentationem terminatoris claudentis**. Raku eam ab omni linea textus removet. Itaque heredoc sicut codicem circa id indentare potes. Indentatio in seriem non venit:

```raku
sub greeting {
    return q:to/END/;
        Hello,
        World!
        END
}

print greeting;
```

Hoc idem `Hello,` et `World!` imprimit ac primum exemplum. Hic `END` claudens octo spatia ante se habet. Itaque Raku octo spatia ab omni linea removet. Functio solum `Hello,\nWorld!` reddit. Nulla spatia in initio sunt.

Terminator claudens numerum spatiorum statuit quae Raku removet. Itaque omnis linea textus saltem tot spatia requirit. Fortasse linea pauciora spatia habet. Tum Raku omnia removere non potest. Monet: *Asked to remove 8 spaces, but the shortest indent is 4 spaces*. Hoc monitum vita. Terminatorem non plus quam ullam lineam textus indenta. Heredocs sunt naturalis electio pro exemplaribus et nuntiis. Re vera bona sunt pro quolibet textu plurium linearum.

{% include nav.html %}
