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

Information and example how to *update* banner **Bubble type:** `Image` (My picture) is in section below.

## Banner based on status

Different banner can be used based on chat status if set to **Online** or **Offline**. By default banner is shown in **Online** status only. Using API below you can show banner in **Offline** status as well.

```js
_smartsupp.hideOfflineBanner = false;
```

Once you show banner you can use code below to change it based on status. This example is best used in case you display 2 different images. One for **Online** and other image for **Offline** status.

```js
<script>
  smartsupp('on', 'status', function (status) {
    if (status == 'online' || status == 'away') {
      smartsupp('banner:set', 'image', {
        src: 'IMAGE_1_URL' // online
      });
    } else {
      smartsupp('banner:set', 'image', {
        src: 'IMAGE_2_URL' // offline
      });
    }
  });
</script>
```