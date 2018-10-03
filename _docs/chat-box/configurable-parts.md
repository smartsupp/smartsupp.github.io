---
title: "Configurable parts"
subtitle: "Change behavior and modify parts of chat box as forms, prompts or rating window."
---

If you did not install [Smartsupp Chat Code](https://www.smartsupp.com/help/smartsupp-chat-code/){:target='\_blank'} read our tutorial first.
{: .callout .callout-info }

Here you can see default chat code. You can modify your own chat code. Enter _your configuration_ after the line with `_smartsupp.key` All examples are explained below with screenshots and code samples.

```js
<script type="text/javascript">
  var _smartsupp = _smartsupp || {};
  _smartsupp.key = "YOUR_SMARTSUPP_CODE";
  // ...
  // your configuration
  // ...
  window.smartsupp||(function(d) {
    var s,c,o=smartsupp=function(){ o._.push(arguments)};o._=[];
    s=d.getElementsByTagName('script')[0];c=d.createElement('script');
    c.type='text/javascript';c.charset='utf-8';c.async=true;
    c.src='//www.smartsuppchat.com/loader.js';s.parentNode.insertBefore(c,s);
  })(document);
</script>
```

## Sub-domains integration

Smartsupp visitor is identified by unique key stored in cookies. By default chat conversation is terminated when visitor opens a sub-domain on your website. You should set main domain as cookie domain if you want chat conversations uninterrupted accross your sub-domains. Insert the cookieDomain parameter in your chat code on main domain and all subdomains where you want the chat conversation uninterrupted.

```js
_smartsupp.cookieDomain = ".your-domain.com";
```

## Optional email transcript

When the visitor wants to end conversation a confirmation window is displayed. It can display transcript button.

### transcript button enabled

This is option is displayed by default. It shows a button which sends transcript to email.

```js
_smartsupp.sendEmailTanscript = true;
```

![transcript enabled](/assets/img/docs/configurable-parts/transcript-enabled.png)

### transcript button disabled

If you do not need this feature in your chat box you can disable it.

```js
_smartsupp.sendEmailTanscript = false;
```

![transcript disabled](/assets/img/docs/configurable-parts/transcript-disabled.png)

## Rating window

After visitor ends conversation a rating is displayed. You can add a text box for visitor to write a comment.

### simple rating (3 icons)

You can display feedback icons.

```js
_smartsupp.ratingEnabled = true;
```

![rating simple](/assets/img/docs/configurable-parts/rating-simple.gif)

### rating with a comment

You can display feedback icons including text area for a comment.

```js
_smartsupp.ratingComment = true;
```

![rating with comment](/assets/img/docs/configurable-parts/rating-with-comment.gif)

## Chat box design type

We supports 2 chat box layouts: `widget` and `button`. You can choose default behaviour for your chat.

### layout: widget

This layout is shown on _desktop_ by default.

```js
_smartsupp.widget = "widget";
```

![chat box layout widget](/assets/img/docs/configurable-parts/chat-box-layout-widget.png)

### layout: button

This layout is shown on _mobile_ by default.

```js
_smartsupp.widget = "button";
```

![chat box layout button](/assets/img/docs/configurable-parts/chat-box-layout-button.png)

## Pre-chat form

When chat is online visitor sees open chat and can write message. Pre-chat form will show right after visitor sends first message.

### Default inputs

If you are using pre-chat form, you can customize the form fields. Default inputs are `name`, `email`. If you want to disable any of them them set property `loginNameControl` or `loginEmailControl` to `false`.

Hide default input: `name`

```js
_smartsupp.loginNameControl = false;
```

Hide default input: `email`

```js
_smartsupp.loginEmailControl = false;
```

### Custom fields

You can add custom fields by setting property `loginControls`. All filled values are sent to dashboard and displayed in **Visitor info** on the right side of chat panel.

- We support 3 field types: `textinput`, `select` and `checkbox`.
- Use attribute `required: true` to make the field mandatory for visitors.
- Attribute `name` must be defined in every field and it can contain only lowercase and uppercase letters, no spaces allowed.

Attribute `name` _is not_ the visible **Name** input but a description of custom field in the code. It can be `name: "phone"` or `name: "group"` or `name: "conditons"` as you will see in examples below.

### Pre-chat form default

You can turn this option on in **Smarstupp Dashboard > Chat box > [Options](https://www.smartsupp.com/app/settings/chatbox/options){:target='\_blank'} > Show pre-chat form**

![pre-chat form default](/assets/img/docs/configurable-parts/pre-chat-form-default.png)

### Pre-chat form with textinput

This field can be used for example for entering phone number.

```js
_smartsupp.loginControls = [
  {
    xtype: "textinput",
    name: "phone",
    label: "Phone number",
    required: true
  }
];
```

![pre-chat form default](/assets/img/docs/configurable-parts/pre-chat-form-with-text-input.png)

### Pre-chat form with select

You can use this customization if you have more groups (departments) like: _Support, Marketing, Sales_, etc.

![pre-chat form with select](/assets/img/docs/configurable-parts/pre-chat-form-with-select.png)

```js
_smartsupp.loginControls = [
  {
    xtype: "select",
    name: "group",
    label: "Department",
    required: true,

    // use group IDs from Smartsupp dashboard
    value: "PJxWeH8LZNi", // set default group
    items: {
      PJxWeH8LZNi: "Support",
      tuZOw6k9Oto: "Marketing",
      9OtIZKLaVep: "Sales"
    }
  }
];
```

### Pre-chat form with checkbox

This can be useful in case you need your visitors to confirm something before they start chat.

![pre-chat form with checkbox](/assets/img/docs/configurable-parts/pre-chat-form-with-checkbox.png)

```js
_smartsupp.loginControls = [
  {
    xtype: "checkbox",
    name: "conditions",
    label: "I have read the Terms and conditions.",
    required: true
  }
];
```

## Offline form

You can customize offline form fields to fit your needs. Useful outside regular office or business hours.

### Default inputs

Default fields are `name` and `email`. **Email is always required** but the field `name` can be disabled. Message is not modifiable through API. You can add custom fields by setting property `offlineControls`. All values are sent visible in email to address specified in Dashboard. It's not possible to specify emails through API.

Hide default input: `name`

```js
_smartsupp.offlineNameControl = false;
```

If your form has more fields, scrollbar automatically appears in chat box, but you can always set offline chat box `offlineHeight` to show all fields without scrollbar. Put this as 2nd script below your main Smartsupp chat code. Adjust size as you need (default height is `420`).

```js
<script type="text/javascript">
  var _smartsupp = _smartsupp || {};
  _smartsupp.key = "YOUR_SMARTSUPP_CODE";
  // ... rest of the usual code (just example)
</script>

<script>
smartsupp('theme:options', {
  offlineHeight: 420
});
</script>
```

### Custom fields

- We support 3 field types: `textinput`, `select` and `checkbox`.
- Use attribute `required: true` to make the field mandatory for visitors.
- Attribute `name` has to be defined in every field and it can contain only lowercase and uppercase letters, no spaces allowed.

### Offline form default

Offline form will show each time you change your status in Dashboard from Online => Offline.

![offline form](/assets/img/docs/configurable-parts/offline-form.png)

### Offline form with textinput

This field can be used for example for entering phone number. This would be in offline form too many fields and scrollbar would appear. We can make the offline form height bigger (by 55px from 420 to 475) by using `offlineheight`. You can adjust the number as you need or to fit even more fields if needed.

```js
<script>
  smartsupp('theme:options', {
    offlineHeight: 475
  });
</script>
```

```js
_smartsupp.offlineControls = [
  {
    xtype: "textinput",
    name: "phone",
    label: "Phone number",
    required: true
  }
];
```

![offline form default](/assets/img/docs/configurable-parts/offline-form-with-text-input.png)

### Offline form with select

Useful if you have more groups (departments). In this example we disable **Name** field.

```js
// hide name field
_smartsupp.offlineNameControl = false;

// append select control
_smartsupp.offlineControls = [
  {
    xtype: "select",
    name: "question",
    label: "Question for ...",
    required: true,
    value: "support", // select default from your defined values
    items: {
      support: "Support",
      marketing: "Marketing",
      sales: "Sales"
    }
  }
];
```

![offline form with select](/assets/img/docs/configurable-parts/offline-form-with-select.png)

### Offline form with checkbox

This can be useful in case you need your visitors to confirm something before they start chat. As this is offline form however we need to adjust the height just a bit. In this case we used `offlineHeight: 450` (30px bigger from default).

![offline form with checkbox](/assets/img/docs/configurable-parts/offline-form-with-checkbox.png)

```js
_smartsupp.offlineControls = [
  {
    xtype: "checkbox",
    name: "conditions",
    label: "I have read the Terms and conditions.",
    required: true
  }
];
```

## Google Analytics integration

Smartsupp is linked with your Google Analytics (GA) automatically. Smartsupp checks your site's source code for GA property ID and sends data to all GA accounts it found. If you want to send Smartsupp events only to one specific account you do so by selecting it via GA KEY or GA Tracker name. If you have subdomains on your website and you are tracking all of them in one GA account use the `gaOptions` parameter described in [Google Analytics](https://developers.google.com/analytics/devguides/collection/analyticsjs/#customizeTracker){:target='\_blank'} documentation.

Have a look at our tutorial in HELP section [Google Analytics Connection](https://www.smartsupp.com/help/google-analytics/){:target='\_blank'} first if not sure how to set this up.

```js
_smartsupp.gaKey = "UA-XXXX-Y"; // Use this code if you want to link only to one specific account
_smartsupp.gaName = "your_tracker_name"; // Use this code if you want to linkt to specific GA Tracker Name

_smartsupp.gaOptions = {
  cookieDomain: "foo.example.com"
};
```

With this configuration GA is initialized like this: `ga('create', KEY, OPTIONS);`

## Hide chat box on certain pages

You can hide chat box on certain pages by setting the variable `hideWidget` in your code.

```js
_smartsupp.hideWidget = true; // use on specific pages
_smartsupp.hideMobileWidget = true; // hide chat box on mobile devices
```

## Mobile chat box

This API code allows you to set when to show mobile chat box.

```js
_smartsupp.smallDeviceMinWidth = 641; // screen width in pixels when mobile chat box is shown
```

## Privacy notice

You can manually enable or disable privacy notice in chat box. Also you can specify custom url for your own privacy page. This could be useful when you are using Smartsupp chat across several sites.

```js
_smartsupp.privacyNoticeEnabled = false; // privacy notice visibility in chat widget
_smartsupp.privacyNoticeUrl = "https://"; // URL of your privacy page
```

## Advanced settings

Use any of these API settings if you want to disable text area and send button, auto messages, sounds for visitors or hide chat bubble.

```js
_smartsupp.writable = false; // text area and send button
_smartsupp.triggerable = false; // auto-messages
_smartsupp.soundMuted = true; // sounds for visitors
_smartsupp.hideBanner = true; // chat bubble
```
