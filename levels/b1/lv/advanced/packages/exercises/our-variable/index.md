---
title: Mainīgais ar our
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Tikai `our` padara nosaukumu redzamu ārpus tā pakotnes, bet `my` saglabā to privātu. Izveidojiet pakotni `Config` ar `our` mainīgo `$port`, kura vērtība ir `8080`. Tajā pašā pakotnē **arī** pievienojiet `my` mainīgo `$secret` ar vērtību `42`. No ārpuses izdrukājiet `$Config::port`. Pēc tam izdrukājiet, vai `$Config::secret` ir definēts. Tam nevajadzētu būt, jo `my` mainīgais nav vārdtelpas daļa.

## Piemērs

Programma izdrukā:

```
8080
False
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
