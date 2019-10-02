---
title: "HTML API"
subtitle: "No complicated coding needed."
description: "Simple API based on HTML attributes without the need for extra coding knowledge."
---

## Open chat

Chat box opens after visitor clicks on any element of your choice: *link*, *image*, *button*, *menu item*, etc.

{% include component/tables/docs/examples/html-api/attributes-open.html %}

### Example: Link

Open chat box after visitor clicks on a link.

```html
<a href="#" data-api="smartsupp" data-operation="open">Open chat ...</a>
```

![open chat link GIF](/assets/img/docs/examples/html-api/open-chat-link.gif)

### Example: Image

Open chat box after visitor clicks on an image.

```html
<img src="/images/open-chat.png" data-api="smartsupp" data-operation="open" />
```

![open chat image GIF](/assets/img/docs/examples/html-api/open-chat-image.gif)

### Example: Text

This is *optional* but you can display text in chat box text area for visitor to see.

```html
<img src="/images/open-chat.png" data-api="smartsupp" data-operation="open" data-text="Hello..." />
```

![open chat and show text](/assets/img/docs/examples/html-api/hello-text.png)

## Send message

Once visitor clicks on element *chat box opens* and predefined **message is sent**. In this API attribute `data-operation` has value `send` and attribute `data-text` is **required** as part of the default code in order to work.

{% include component/tables/docs/examples/html-api/attributes-send.html %}

### Example: Link

Open chat box after visitor clicks on a link *and send message*.

```html
<a href="#" data-api="smartsupp" data-operation="send" data-text="Hello...">Open chat ...</a>
```

![send message link GIF](/assets/img/docs/examples/html-api/send-message-link.gif)

### Example: Image

Open chat box after visitor clicks on an image *and send message*.

```html
<img src="/images/send-message.png" data-api="smartsupp" data-operation="send" data-text="Hello..." />
```

![send message image GIF](/assets/img/docs/examples/html-api/send-message-image.gif)
