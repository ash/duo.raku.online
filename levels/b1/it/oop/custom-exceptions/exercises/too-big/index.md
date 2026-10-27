---
title: Troppo grande
translations_gpt:
---

{% include menu.html %}

## Problema

Definisci una classe di eccezione personalizzata `TooBig`. Eredita da `Exception` e ha due attributi, `value` e `limit`. Il suo metodo `message` deve restituire `Value <value> exceeds the limit of <limit>`.

Poi scorri i valori `30`, `99` e `60`, con un limite di `50`. Per ogni valore solleva una `TooBig` solo se il valore supera il limite. Usa un phaser `CATCH` con `when TooBig` che stampa il messaggio **e** una seconda riga. Su quella riga legge direttamente l'attributo `limit` dell'eccezione. Stampa `Try a value up to <limit>.`. Un valore entro il limite deve semplicemente dire che va bene.

Questo mostra che solo i numeri che falliscono causano un'eccezione. Gli altri numeri passano dritti, e il ciclo va avanti in tutti e due i casi.

## Esempio

Il programma stampa:

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
