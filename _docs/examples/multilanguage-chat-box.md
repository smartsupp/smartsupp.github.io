---
title: "Multilanguage chat box"
subtitle: "Choose language to fit your business."
---

Set up different chat box localization for every language mutation of your website.

## Chat box language

In this case we setup English using code `en` in our script.

```js
<script>smartsupp('language','en');</script>
```

Supported languages: `ar`, `az`, `bg`, `cs`, `ca`, `da`, `de`, `el`, `en`, `es`, `fa`, `fi`, `fr`, `he`, `hi`, `hr`, `hu`, `is`, `it`, `ja`, `ka`, `lt`, `lv`, `nl`, `no`, `pl`, `br`, `pt`, `ro`, `ru`, `sk`, `sl`, `sr`, `sv`, `th`, `tr`, `uk`, `cn`, `tw`, `mk`

Missing your language? Contact [support@smartsupp.com](mailto:support@smartsupp.com). We are glad to cooperate on new translations.
{: .callout .callout-info }

## Custom texts

If you want to modify existing texts you can write your own texts in any language. All you need to do is to define the language at the end of the script. In this example we change default text Online => **We are online**.

![we are online](/assets/img/docs/multilanguage-chat-box/we-are-online.png)

```js
<script>
  smartsupp('translate', {
    widget: {
      online: 'We are online'
    }
  }, 'en');
</script>
```

Have a look at [All customizable texts](#all-customizable-texts) at the end of this page.
{: .callout .callout-warning }

## Modify multiple languages

You can modify more languages in same file if you have multilanguage website.

```js
<script>
  smartsupp('translate', {
    widget: {
      online: 'We are here.'
    }
  }, 'en'); // set EN langauge

  smartsupp('translate', {
    widget: {
      online: 'Wir sind hier.'
    }
  }, 'de'); // set DE language
</script>
```

## Create new texts

Maybe your language is not on of those we provide. Maybe you do not need everything translated and need just some parts. You can create your own texts and define language code for your own language. Any other words will be added from our default English texts.

```js
<script>
  smartsupp('translate', {
    widget: {
      online: 'Text for language XY.'
    }
  }, 'xy'); // set your own langauge code

  // define the language code
  smartsupp('language','xy');
</script>
```

## Custom Privacy notice

In Dashboard **Settings > Chat box > [Options](https://www.smartsupp.com/app/settings/chatbox/options/){:target='\_blank'}** you can select **Show notice about personal data processing** (visible when offline). In case you do not want default text you can change it.

![privacy notice](/assets/img/docs/multilanguage-chat-box/privacy-notice.png)

```js
<script>
smartsupp('translate', {
  privacyNotice: {
    title: 'Your Privacy notice title',
    text: 'Custom text'
  }
});
</script>
```


## Bubble types

In Dashboard **Settings > Chat box > [Text](https://www.smartsupp.com/app/settings/chatbox/text/){:target='\_blank'}** you can set **Bubble type**.  Visible when in `Online` status.

We provide 3 types:

1. `Bubble`
2. `Arrow`
3. `My picture`

### Bubble

Dashboard settings is **Bubble type:** `Bubble`. You can set your own text. 

![chat type bubble](/assets/img/docs/multilanguage-chat-box/chat-type-bubble.png)

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

![chat type arrow](/assets/img/docs/multilanguage-chat-box/chat-type-arrow.png)

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

### My picture

Dashboard settings is **Bubble type:** `My picture`. You can define your own picture.

![example banner](/assets/img/docs/multilanguage-chat-box/example-banner.png)

We recommend `width` 240 pixels for the image to fit. Ideal ratio that looks the best in most cases is 240×80px. But there is currently no limit on `height` if you need your picture taller.

![240×80px placeholder image](/assets/img/docs/multilanguage-chat-box/240x80.png)

Our example end result will look like this.

![chat type my picture](/assets/img/docs/multilanguage-chat-box/chat-type-my-picture.png)

```js
<script>
smartsupp(function() {
  smartsupp('banner:set', 'image', {
    src:'IMAGE_URL'
  })
});
</script>
```

## All customizable texts

Below are all texts we currently available for customization of your chat box.

You can customize:

* online window
* offline window
* pre-chat form
* chat banners
* chat box
* mobile widget

```js
<script>
  smartsupp('translate', {
    online: { // online window
      title: 'Support',
      infoTitle: 'Live chat',
      infoDesc: 'Ask us anything',
      maximize: 'Maximize',
      minimize: 'Minimize',
      hideTitle: 'Hide chat',
      closeTitle: 'Close chat',
      settingsTitle: 'Settings',
      disableSounds: 'Disable sounds',
      enableSounds: 'Enable sounds',
      visitor: 'Me',
      send: 'Send',
      textareaPlaceholder: 'Write here, press  to send',
      typingMsg: '{name} is typing...',
      transcriptSendingTitle: 'Sending email...',
      transcriptSendingDesc: '',
      transcriptSendedTitle: 'Email was successfully sent',
      transcriptSendedDesc: ''
    },
    offline: { // offline window
      title: 'Send us a message',
      notice: 'We are not available now but leave us a message. We will respond as soon.',
      hideTitle: 'Hide chat',
      required: '',
      name: 'Name',
      email: 'Email',
      number: 'Phone',
      message: 'Your message',
      submit: 'Send message',
      messageRequiredAlert: 'You have not entered a message.',
      emailRequiredAlert: 'You have not entered an email address.',
      emailInvalidAlert: 'Invalid email address',
      sendInfo: 'Sending email...',
      successTitle: 'Thank you for your message',
      successDesc: 'Your message was sent successfully. We will contact you soon.',
      failureTitle: 'Error',
      failureDesc: 'We are sorry but your message wasn\'t sent.'
    },
    login: { // pre-chat form
      title: 'Chat login',
      notice: '',
      messageLabel: 'Your question',
      submit: 'Start chat'
    },
    banner: { // chat banners
      bubble: {
        text: 'We are ready for your questions!'
      },
      arrow: {
        title: 'Any questions?',
        desc: 'We are ready to answer.'
      }
    },
    widget: { // chat box
      online: 'Ask us anything',
      away: 'Ask us anything',
      offline: 'Leave us a message',
    },
    button : { // mobile widget
      title: 'Chat'
    },
    dialogClose: {
      title: 'Would you like to end the conversation?',
      yes: 'Yes',
      no: 'No',
      send: 'Yes, and send chat to email'
    },
    dialogSend: {
      title: 'Send conversation to email',
      email: 'Email',
      yes: 'Send',
      no: 'Cancel'
    },
    dialogRating: {
      title: 'How would you rate the chat?',
      cancel: 'I don\'t want to rate',
      submit: 'Send',
      commentTitle: 'Your comment'
    }
  }, 'en');
</script>
```