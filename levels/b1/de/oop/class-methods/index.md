---
title: Klassenmethoden
translations_gpt:
---

{% include menu.html %}

Die meisten Methoden werden auf einem Objekt aufgerufen, das eine Instanz einer Klasse ist. Aber Sie können eine Methode auch auf der Klasse selbst aufrufen. Anders gesagt, Sie rufen sie auf dem Typobjekt auf. So eine Methode nennt man oft eine _Klassenmethode_. Sie ist nützlich für Werte und Operationen, die zur ganzen Klasse gehören. Sie gehören nicht zu einem bestimmten Objekt.

Sie definieren eine Klassenmethode genau so wie jede andere Methode:

```raku
class Road {
    method speed-limit { 120 }
}
```

Aber Sie rufen sie auf dem Klassennamen auf, nicht auf einer Instanz:

```raku
say Road.speed-limit; # 120
```

Tatsächlich haben Sie schon eine Klassenmethode benutzt, ohne sie so zu nennen. `new` ist eine Methode, die Sie auf der Klasse aufrufen, um ein neues Objekt zu erzeugen.

Eine Klassenmethode kann keine Instanzattribute benutzen, weil kein bestimmtes Objekt hinter ihr steht. Sie arbeitet also nur mit Informationen, die alle Objekte der Klasse teilen. Wenn die Arbeit von den Daten eines Objekts abhängt, nehmen Sie eine gewöhnliche Methode. Rufen Sie sie auf einer Instanz auf. Wenn nicht, ist eine Klassenmethode die natürliche Wahl.

Klassenmethoden brauchen keine Instanz. Wenn Sie aber doch ein Objekt haben, können Sie seine Daten darin trotzdem benutzen:

```raku
class Road {
    has $.name;
    method speed-limit { 120 }

    method info {
        "The maximum speed on $.name is " ~ self.speed-limit
    }
}

my $R404 = Road.new(name => 'Road 404');
say $R404.info;
```

Dieses Programm gibt das erwartete Ergebnis aus:

```
The maximum speed on Road 404 is 120
```

Ohne ein Objekt der Klasse würde ein Aufruf wie `say Road.info` einen Fehler erzeugen.

{% include nav.html %}
