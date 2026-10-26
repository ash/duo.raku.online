---
title: Klassenmethoden
translations_gpt:
---

{% include menu.html %}

Die meisten Methoden rufen Sie auf einem Objekt auf. Ein Objekt ist eine Instanz einer Klasse. Aber Sie können eine Methode auch auf der Klasse selbst aufrufen. Das heißt, Sie rufen sie auf dem Typobjekt auf. So eine Methode heißt oft _Klassenmethode_. Sie ist nützlich für Werte und Aktionen der ganzen Klasse. Diese gehören nicht nur zu einem Objekt.

Eine Klassenmethode schreiben Sie wie jede andere Methode:

```raku
class Road {
    method speed-limit { 120 }
}
```

Aber Sie rufen sie auf dem Klassennamen auf. Sie rufen sie nicht auf einer Instanz auf:

```raku
say Road.speed-limit; # 120
```

Sie kennen schon eine Klassenmethode. Aber Sie haben sie nicht so genannt. Sie heißt `new`. Sie rufen `new` auf der Klasse auf, und die Methode erstellt ein neues Objekt.

Eine Klassenmethode kann die Attribute einer Instanz nicht benutzen. Hinter ihr steht kein Objekt. Also kann sie nur mit gemeinsamen Informationen arbeiten. Diese Informationen sind für jedes Objekt der Klasse gleich. Manchmal braucht die Arbeit die Daten eines Objekts. Dann nehmen Sie eine normale Methode und rufen sie auf einer Instanz auf. Manchmal braucht die Arbeit solche Daten nicht. Dann ist eine Klassenmethode eine gute Wahl.

Klassenmethoden brauchen keine Instanz. Aber manchmal haben Sie ein Objekt. Dann können Sie seine Daten trotzdem in ihnen benutzen:

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

Dieses Programm gibt das Ergebnis aus, das Sie erwarten:

```
The maximum speed on Road 404 is 120
```

Hier brauchen Sie eine Instanz der Klasse. Ohne sie gibt ein Aufruf wie `say Road.info` einen Fehler.

{% include nav.html %}
