---
title: Nomu la eraron
translations_gpt:
---

{% include menu.html %}

## Problemo

Skribu subrutinon `risky`, kiu faras `die 'sub failed'`. Poste voku ĝin el ene de bloko, kiu havas fazeron `CATCH`. La `CATCH` presu la tipnomon de la escepto per `.^name`. Poste ĝi presu ĝian mesaĝon per `.message`. Tio montras, ke `CATCH` traktas esceptojn el kodo, kiun la bloko *vokas*. La `die` ne devas esti skribita rekte en la bloko.

## Ekzemplo

La programo presas:

```
X::AdHoc
sub failed
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
