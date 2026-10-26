---
title: Ein benutzerdefinierter Trait
translations_gpt:
---

{% include menu.html %}

## Problem

Ihr eigenes Trait kann mehr als nur da sein oder fehlen. Es kann auch ein Argument nehmen. Schreiben Sie ein Trait `is role(...)`. Es nimmt einen String. Dieser String ist die Rolle einer Subroutine. Das Trait speichert die Rolle in einem Hash. Der Schlüssel ist der Name der Subroutine.

Fügen Sie `is role('admin')` zu einer Subroutine `login` hinzu. Geben Sie dann die gespeicherte Rolle von `login` aus.

## Beispiel

Das Programm gibt aus:

```
admin
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
