---
title: Heredocs
---

{% include menu.html %}

_Heredoc_ est forma citandi pro textu plurium linearum. Delimitatores circa textum non adhibet. Pro eis verbum terminans cum `:to` das. Series in proxima linea incipit. Pergit usque ad lineam quae solum illud verbum continet:

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

Terminator signat ubi textus desinat. Hic est `END`, sed quodlibet verbum convenit. Nota `print`. Textus finem lineae ante terminatorem servat. Itaque iam cum fractura lineae desinit. Cum `say` alteram acciperes et lineam vacuam in fine. Heredoc cum `q:to` incipit, itaque textus non interpolatur. Ut variabiles interpoles, `qq:to` adhibe:

```raku
my $name = 'Anna';

my $greeting = qq:to/EOF/;
Dear $name,
Welcome!
EOF

print $greeting;
```

Ecce res utilis. **Indentatio terminatoris claudentis** ab omni linea textus removetur. Itaque heredoc indentare potes ut cum codice circa id congruat. Illa indentatio in seriem non pervenit:

```raku
sub greeting {
    return q:to/END/;
        Hello,
        World!
        END
}

print greeting;
```

Hoc idem `Hello,` et `World!` imprimit ac in primo exemplo. Hic `END` claudens octo spatiis indentatus est. Itaque octo spatia ab omni linea removentur. Series reddita solum `Hello,\nWorld!` est, sine spatiis in initio linearum.

Terminator claudens statuit quot spatia Raku removeat. Itaque omnis linea textus saltem tantam indentationem habere debet. Si linea pauciora spatia in initio habet, Raku totam quantitatem removere non potest. Tum monet: *Asked to remove 8 spaces, but the shortest indent is 4 spaces*. Ut hoc vites, terminatorem non profundius indenta quam lineam minime indentatam. Heredocs sunt naturalis electio pro exemplaribus, nuntiis, et quolibet textu plurium linearum.

{% include nav.html %}
