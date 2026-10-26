---
title: Metodoj kiuj vokas metodojn
translations_gpt:
---

{% include menu.html %}

Metodo povas voki alian metodon sur la sama objekto. Por tio ĝi uzas `self`:

```raku
class Circle {
    has $.radius;

    method area {
        3.14 * $.radius * $.radius;
    }

    method describe {
        'The area is ' ~ self.area;
    }
}

my $c = Circle.new(radius => 2);
say $c.describe; # The area is 12.56
```

Rigardu en `describe`. Tie `self.area` rulas la metodon `area` sur la sama cirklo. La rezulto iras en la priskribon.

Por voki metodon, vi skribas `self.area`, kun punkto. Kodo ekster la objekto faras la samon kun ekzemplero. Ekzemple, ĝi vokas `$c.describe`. Do vi povas konstrui pli grandan konduton el malgrandaj metodoj. Ĉiu malgranda metodo faras unu laboron.

{% include nav.html %}
