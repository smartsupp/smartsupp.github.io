---
title: "Banner"
subtitle: "Customize chat bubble."
---

You can set different chat bubble to several domains.

## banner:set

Set new chat bubble: *arrow*, *bubble*, *image*

```js
<script>
  function setArrowBanner() {
    smartsupp('banner:set', 'arrow');
  }
  function setBubbleBanner() {
    smartsupp('banner:set', 'bubble');
  }
  function setImageBanner() {
    smartsupp('banner:set', 'image', {
    src: 'url_to_your_image/image.png'
  });
  }
</script>

<a href="javascript:setArrowBanner()">arrow</a>
<a href="javascript:setBubbleBanner()">bubble</a>
<a href="javascript:setImageBanner()">image</a>
```

## banner:update

Change setup of current chat bubble.

```js
<script>
  function updateBannerText(text) {
    smartsupp('banner:set', 'bubble');
    smartsupp('banner:update', { text: text });
  });
</script>

<a href="javascript:updateBannerText('Welcome')">Welcome</a>
<a href="javascript:updateBannerText('This chat is awesome')">This chat is awesome</a>
```