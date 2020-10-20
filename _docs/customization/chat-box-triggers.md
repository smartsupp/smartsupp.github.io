---
title: "Chat Box Triggers"
subtitle: "Adjust chat behaviour."
description: "Change how chat box behaves, define messages to be send or set your language."
redirect_from: /docs/javascript-api/chat/
---

## Open

Open chat box.

```js
<script>
	smartsupp('chat:open');
</script>
```

Or use inside html:

```html
<img onclick="smartsupp('chat:open');">
<a href="#" onclick="smartsupp('chat:open'); return false;">Chat with us</a>
```

## Close

Close chat box.

```js
<script>
	smartsupp('chat:close');
</script>
```

## Message

Set pre-filled message in chat box (text is not sent).

```js
<script>
	smartsupp('chat:message', 'Hello, can you help me with...');
</script>
```

## ⛔ Legacy API ⛔ 
👇👇👇 We no longer support any code below this section❗
{: .alert .alert-danger }

## Avatar

Set logo inside chat box, which is displayed by default when no agent is connected.

```js
<script>
	smartsupp('chat:avatar', 'URL_TO_IMAGE');
</script>
```

## Send

Send custom text in conversation in chat box. For example linked to button action.

```js
<script>
	smartsupp('chat:send', 'Hello, can you help me with...');
</script>
```
