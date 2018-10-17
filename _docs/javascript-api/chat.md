---
title: "Chat"
subtitle: "Adjust chat behaviour."
description: "Change how chat box behaves, define messages to be send or set your language."
---

## chat:translate

Currently we support 40 languages. You can set caht box language or translate and adjust specific texts to fit your needs. See full list and settings at page [Multilanguage chat box](/docs/examples/multilanguage-chat-box/).

## chat:avatar

Set logo inside chat box, which is displayed by default when no agent is connected.

```js
<script>
	smartsupp('chat:avatar', 'URL_TO_IMAGE');
</script>
```

## chat:message

Set pre-filled message in chat box (text is not sent).

```js
<script>
	smartsupp('chat:message', 'Hello, can you help me with...');
</script>
```

## chat:send

Send custom text in conversation in chat box. For example linked to button action.

```js
<script>
	smartsupp('chat:send', 'Hello, can you help me with...');
</script>
```

## chat:open

Open chat box.

```js
<script>
	smartsupp('chat:open');
</script>
```

## chat:close

Close chat box.

```js
<script>
	smartsupp('chat:close');
</script>
```