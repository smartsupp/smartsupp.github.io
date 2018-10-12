---
title: "Chat box design"
subtitle: "Advanced chat box customization."
---

You can adjust texts, colors and banner (logo) as you need. This is useful when you want to create different chat box designs accross several domains. This can also be used for different departments or sections on your website.

Learn more about our [Theme](/docs/javascript-api/theme/) options so you know what chat box parts can be changed and how. While at it you can browse [Multilanguage chat box](/docs/examples/multilanguage-chat-box/) page which describes all customizable texts.

## Chat banner, texts and colors

Imagine you have 2 websites but 1 Smartsupp account. You want to adjust chat box design for both of them.

### Website 1

We change banner, texts and colors in **Online** state and only one text, title of the window, in **Offline** state.

```js
<script>
  // banner (logo)
  smartsupp(function () {
    smartsupp('banner:set', 'image', {
      src: 'IMAGE_URL'
    })
  });

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
    primary: '#c0392b',
  });
</script>
```

![design 01 online](/assets/img/docs/chat-box-design/design-01-online.gif)
![design 01 offline](/assets/img/docs/chat-box-design/design-01-offline.png)

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
    primary: '#9b59b6',
  });
</script>
```

![design 02 different colors](/assets/img/docs/chat-box-design/design-02-diffrent-colors.gif)

## Chat box colors based on status

Chat box colors can change based on chat status if set to **Online** or **Offline**.

```js
<script>
  smartsupp('on', 'status', function (status) {
    if (status == 'online' || status == 'away') {
      smartsupp('theme:colors', {
        widget: '#2ecc71',
        primary: '#2ecc71',
      });
    } else {
      smartsupp('theme:colors', {
        widget: '#c0392b',
        primary: '#c0392b',
      });
    }
  });
</script>
```

![colors status online offline](/assets/img/docs/chat-box-design/colors-status-online-offline.gif)