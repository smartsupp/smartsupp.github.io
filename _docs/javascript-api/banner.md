---
title: "Banner"
subtitle: "Customize chat bubble."
description: "You can set different designs to multiple domains across your site."
---

Before you continue read about **Chat box design:** [Bubble types](/docs/examples/chat-box-design/#bubble-types).
{: .callout .callout-info }


## banner:set

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

## banner:update

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

Image cannot be updated at this moment using API. Banner is *visible* in **Online** status only and will be hidden when you are Offline. Go to **Dashboard > Settings > Chat box > [Text](https://www.smartsupp.com/app/settings/chatbox/text) >  Bubble type:** `Image` (My picture) and upload your banner.