---
title: "Export to 3rd party system"
subtitle: "Send a copy of all chat conversations to your server."
description: "You can easily export Smartsupp communication to a 3rd party system of your choice."
---

## How it works

Copy of all finished chat conversations, missed conversations and offline messages is sent in JSON format in real-time to a URL of your choice. You can then process all Smartsupp conversations on your server and export it to a 3rd party system of your choice (CRM, help desk, ...).

## Activate POST hook

Send an email to [support@smartsupp.com](mailto:support@smartsupp.com) where you specify your custom URL. On our end we will set sending all chat conversations to that URL.

## Handle requests

See below how to handle JSON request using PHP script.

### PHP script

```php
$data = file_get_contents('php://input');
// store data
file_put_contents('data.json', $data);
// or parse and process
$json = json_decode($data);
```

### JSON request

```json
{
  "accountId": 208,
  "beginAt": 1427470439703,
  "endAt": 1427470476687,
  "channel": {
    "id": 55039,
    "isChat": true,
    "isMissed": false,
    "isTriggered": true,
    "isOffline": false,
    "isCompleted": true,
    "isDropped": false,
    "duration": 36,
    "avgResponse": 14,
    "firstResponse": 14,
    "messagesCount": 5,
    "wordsCount": 11,
    "rating": 5,
    "ratingDesc": ""
  },
  "visitor":{
    "id": 27671,
    "name": "Dusan Kmet",
    "email": "dusan@domain.com",
    "note": "VIP customer",
    "groupKey": null,
    "ipAddress": "89.235.0.55",
    "city": "Czech Republic",
    "countryCode": "CZ",
    "country": "Brno",
    "userAgent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36",
    "platform": "MacIntel",
    "referer": "",
    "variables": {
      "chatId":{ "label":"Chat ID", "value":208 },
      "chatPackage":{ "label":"Chat Package", "value":"pro" },
      "userId":{ "label":"User ID", "value":"1234" }
    },
  },
  "paths":[{
    "url": "http://developers.smartsupp.com/smartsupp/hook-post",
    "title": "POST Hook · Smartsupp"
  }, {
    "url": "http://developers.smartsupp.com",
    "title": "API · Smartsupp"
  }],
  "messages":[{
    "type": "visitor",
    "from": "mxTiqn9adr2h39kmzAJ0FeaTGFJhmjio0R41491503012015",
    "content": "Hello",
    "sentAt": 1427470439703,
    "triggeredBy": null,
    "email": null
  }, {
    "type": "system",
    "name": "John Doe",
    "from": 3,
    "content": "agent.join",
    "sentAt": 1427470446219,
    "triggeredBy": null,
    "email": null
  }, {
    "type": "agent",
    "name": "",
    "from": null,
    "content": "This is triggered message",
    "sentAt": 1427470449706,
    "triggeredBy": "Test Trigger",
    "email": null
  }, {
    "type": "agent",
    "name": "John Doe",
    "from": 3,
    "content": "Hi, how can i help you ?",
    "sentAt": 1427470453772,
    "triggeredBy": null,
    "email": null
  }, {
    "type": "visitor",
    "name": "Dusan Kmet",
    "from": "mxTiqn9adr2h39kmzAJ0FeaTGFJhmjio0R41491503012015",
    "content": "tanks.",
    "sentAt": 1427470473124,
    "triggeredBy": null,
    "email": null
  }, {
    "type": "system",
    "name": "Dusan Kmet",
    "from": null,
    "content": "close.visitorClose",
    "sentAt": 1427470476687,
    "triggeredBy": null,
    "email": null
  }]
}
```

### Request values

Browse available request values.

{% include component/tables/docs/examples/export-chat/request-values.html %}