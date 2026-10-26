---
title: Ein benutzerdefinierter Trait
translations_gpt:
---

{% include menu.html %}

## Problem

Ein eigenes Trait kann ein Argument nehmen. Es muss nicht nur vorhanden oder nicht vorhanden sein. Schreiben Sie ein Trait `is role(...)`, das einen String nimmt. Es speichert die Rolle jeder Subroutine in einem Hash. Der Schlüssel im Hash ist der Name der Subroutine.

Wenden Sie `is role('admin')` auf eine Subroutine `login` an. Geben Sie dann die Rolle aus, die für `login` gespeichert ist.

## Beispiel

Das Programm gibt aus:

```
admin
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
