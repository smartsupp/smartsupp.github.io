---
title: "Chat box design"
subtitle: "Advanced chat box customization."
---

You can adjust texts, colors and banner (logo) as you need. This is useful when you want to create different chat box designs accross several domains. This can also be used for different departments or sections on your website.

To better understand examples below read [Theme](/docs/javascript-api/theme/) and [Multilanguage chat box](/docs/examples/multilanguage-chat-box/) before you continue.
{: .callout .callout-info }

## Bubble types

In Dashboard **Settings > Chat box > [Text](https://www.smartsupp.com/app/settings/chatbox/text/){:target='\_blank'}** you can set **Bubble type**.  Visible when in `Online` status.

We provide 3 types:

1. `Bubble`
2. `Arrow`
3. `Image` (My Picture)

### Bubble

Dashboard settings is **Bubble type:** `Bubble`. You can set your own text. 

![chat type bubble](/assets/img/docs/examples/chat-box-design/chat-type-bubble.png)

```js
<script>
  smartsupp('translate', {
    banner: {
      bubble: {
        text: 'Can we help?'
      }
    }
  }, 'en');
</script>
```

### Arrow

Dashboard settings is **Bubble type:** `Arrow`. You can set your own text. 

![chat type arrow](/assets/img/docs/examples/chat-box-design/chat-type-arrow.png)

```js
<script>
  smartsupp('translate', {
    banner: {
      arrow: {
        title: 'Any questions?',
        desc: 'We are here to help.'
      }
    }
  }, 'en');
</script>
```

### Image

Dashboard settings is **Bubble type:** `Image` (My picture). You can define set own picture.

![example banner](/assets/img/docs/examples/chat-box-design/example-banner.png)

Defaul chat panel width is `220px`. Open panel width is `300px`. Banner image width affects the entire panel width.
{: .callout .callout-info }

Let's say in our example we use banner `width` of `240px` as it fits better to our design. It is also good to mention that there is no limit on banner `height` at this moment.

![240×80px placeholder image](/assets/img/docs/examples/chat-box-design/240x80.png)

Our example end result will look like this.

![chat type my picture](/assets/img/docs/examples/chat-box-design/chat-type-my-picture.png)

```js
<script>
smartsupp('banner:set', 'image', {
  src:'IMAGE_URL'
})
</script>
```

## Chat banner, texts and colors

Imagine you have 2 websites but 1 Smartsupp account. You want to adjust chat box design for both of them.

### Website 1

We change banner, texts and colors in **Online** state and only one text, title of the window, in **Offline** state.

```js
<script>
  // banner (logo)
  smartsupp('banner:set', 'image', {
    src: 'IMAGE_URL'
  })

  // texts
  smartsupp('chat:translate', {
    online: {
      title: 'The best support',
      infoTitle: 'The best company'
    },
    offline: {
      title: 'We are offline now ...'
    }
  });

  // colors
  smartsupp('theme:colors', {
    widget: '#c0392b',
    primary: '#c0392b'
  });
</script>
```

![design 01 online](/assets/img/docs/examples/box-design-design/design-01-online.gif)
![design 01 offline](/assets/img/docs/examples/box-design-design/design-01-offline.png)

### Website 2

No custom banner, same texts but different colors.

```js
<script>
  // texts
  smartsupp('chat:translate', {
    online: {
      title: 'The best support',
      infoTitle: 'The best company'
    },
    offline: {
      title: 'We are offline now ...'
    }
  });

  // colors
  smartsupp('theme:colors', {
    widget: '#9b59b6',
    primary: '#9b59b6'
  });
</script>
```

![design 02 different colors](/assets/img/docs/examples/box-design-design/design-02-diffrent-colors.gif)

## Chat box colors based on status

Chat box colors can change based on chat status if set to **Online** or **Offline**.

```js
<script>
  smartsupp('on', 'status', function (status) {
    if (status == 'online' || status == 'away') {
      smartsupp('theme:colors', {
        widget: '#2ecc71',
        primary: '#2ecc71'
      });
    } else {
      smartsupp('theme:colors', {
        widget: '#c0392b',
        primary: '#c0392b'
      });
    }
  });
</script>
```

![colors status online offline](/assets/img/docs/examples/box-design-design/colors-status-online-offline.gif)