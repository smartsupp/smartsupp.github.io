---
title: "Banner"
subtitle: "Customize chat bubble."
---

You can set different designs to multiple domains across your site.

Before you continue read about **Chat box design:** [Bubble types](/docs/examples/chat-box-design/#bubble-types).
{: .callout .callout-info }


## banner:set

Set new chat bubble type:

1. `Bubble`
2. `Arrow`
3. `Image` (My Picture)


### Bubble

Set **Bubble type** to `Bubble`.

```js
<script>
  function setBubbleBanner() {
    smartsupp('banner:set', 'bubble');
  }
</script>
```

This is only *very basic and bare* example to give you idea how to implement it.

```html
<a href="javascript:setBubbleBanner()">bubble</a>
```

### Arrow

Set **Bubble type** to `Arrow`.

```js
<script>
  function setArrowBanner() {
    smartsupp('banner:set', 'arrow');
  }
</script>
```

This is only *very basic and bare* example to give you idea how to implement it.

```html
<a href="javascript:setArrowBanner()">arrow</a>
```

### Image

Set **Bubble type** to `Image` (My picture).

```js
<script>
  function setImageBanner() {
    smartsupp('banner:set', 'image', {
    src:'IMAGE_URL'
  });
  }
</script>
```

This is only *very basic and bare* example to give you idea how to implement it.

```html
<a href="javascript:setImageBanner()">image</a>
```

## banner:update

Change setup of current chat bubble and its text.

```js
<script>
  function updateBannerText(text) {
    smartsupp('banner:set', 'bubble');
    smartsupp('banner:update', {
      text: Welcome!
    });
  });
</script>
```

This is only *very basic and bare* example to give you idea how to implement it.

```html
<a href="javascript:updateBannerText('welcome')">welcome</a>
```