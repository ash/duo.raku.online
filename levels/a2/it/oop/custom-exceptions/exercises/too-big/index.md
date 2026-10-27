---
title: Troppo grande
translations_gpt:
---

{% include menu.html %}

## Problema

Crea una classe di eccezione personalizzata `TooBig`. È una classe per i tuoi errori. Eredita da `Exception`. Ha due attributi, `value` e `limit`. Il suo metodo `message` deve restituire `Value <value> exceeds the limit of <limit>`.

Poi scrivi un ciclo sui valori `30`, `99` e `60`. Il limite è `50`. Solleva una `TooBig` solo quando un valore è più grande del limite. Aggiungi un phaser `CATCH` con `when TooBig`. Il phaser stampa il messaggio **e** una seconda riga. Per questa riga legge direttamente l'attributo `limit` dell'eccezione. La seconda riga è `Try a value up to <limit>.`. Per un valore dentro il limite stampa solo che va bene.

Vedi che solo i numeri che falliscono ricevono un'eccezione. Gli altri numeri passano senza problemi. In tutti e due i casi il ciclo va avanti.

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
