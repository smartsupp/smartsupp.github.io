---
title: "Chat Box Bubble"
subtitle: "Customize chat bubble."
description: "You can set different designs to multiple domains across your site."
redirect_from: /docs/javascript-api/banner/
---

## ⛔ Legacy API: Do not use 👇
{: .alert .alert-danger }

Before you continue read about **Chat box design:** [Bubble types](/docs/examples/chat-box-design/#bubble-types).
{: .callout .callout-info }

## Set banner

Set new chat bubble type:

1. `Bubble`
2. `Arrow`
3. `Image` (My Picture)

### Bubble

Set **Bubble type:** `Bubble`.

```js
<script>
  smartsupp('banner:set', 'bubble');
</script>
```

### Arrow

Set **Bubble type:** `Arrow`.

```js
<script>
  smartsupp('banner:set', 'arrow');
</script>
```

### Image

Set **Bubble type:** `Image` (My picture).

```js
<script>
  smartsupp('banner:set', 'image', {
    src: 'IMAGE_URL'
  });
</script>
```

## Update banner

You can update texts based on events that fit your needs.

### Bubble

Update texts for **Bubble type:** `Bubble`.

```js
<script>
  smartsupp('banner:set', 'bubble');
  smartsupp('banner:update', {
    text: 'Welcome!'
  });
</script>
```

### Arrow

Update texts for **Bubble type:** `Arrow`.

```js
<script>
  smartsupp('banner:set', 'arrow');
  smartsupp('banner:update', {
    title: 'Welcome!',
    desc: 'We are here to help.'
  });
</script>
```

### Image

**Bubble type:** `Image` (My picture) cannot be updated using API. Texts for *Title* and *Description* will not be displayed because we use image for banner instead. Learn more in **Chat box design > [Image](/docs/examples/chat-box-design/#image)**
