---
title: "Events"
subtitle: "Use to further customize your chat."
description: "Events are important if you need to know about statistics and how is chat used."
---

## agent.join

Fires when agent joins a chat or when page is loaded and agent is already in chat. Can be used to modify agent properties like name or description based on your conditions (e.g: language, name).

```js
<script>
  // change agent name and note for all agents
  smartsupp('on', 'agent.join', function(model, agent) {
    agent.nickname = 'Custom name';
    agent.note = 'Custom description';
  });

  // change agent name and note for specified agent
  smartsupp('on', 'agent.join', function(model, agent) {
    if (agent.nickname.indexOf('John Doe') >= 0 /* || agent.id = 123 */) {
      agent.nickname = 'Custom name';
    agent.note = 'Custom description';
  }
  });

  // change agent name and note for by language
  smartsupp('on', 'agent.join', function(model, agent) {
    if (model.get('lang') == 'fr') { // model.get('lang') returns current chat language
      agent.nickname = 'Nom personnalisée';
      agent.note = 'Description personnalisée';
    } else {
      agent.nickname = 'Custom name';
      agent.note = 'Custom description';
    }
  });
</script>
```

## agent.leave

Fires when agent leaves the chat.

```js
<script>
  smartsupp('on', 'agent.leave', function(model, agent) {
    console.log("Agent leave from chat:", agent);
  });
</script>
```

## event

Fires when chat event occurs. Data are same as data sent to Google Analytics.

```js
<script>
  var keenClient = new Keen({ ... });
  smartsupp('on', 'event', function(category, action, label) {
  // send event data to other service e.g.: keen.io (https://keen.io)
      keenClient.addEvent('smartsupp_event', {
      category: category,
      action: action,
      label: label
    });
  });
</script>
```

## login

Fires when visitor logs in.

```js
<script>
  smartsupp('on', 'login', function(values) {
    console.log('login values: ', values);
  });
</script>
```

## message

Fires when visitor, agent or trigger sends a message into the chat. Fires for all messages in chat.

```js
<script>
  smartsupp('on', 'message', function(model, message) {
    if (message.type == 'visitor') {
      console.log('visitor message:', message.content);
    } else if (message.type == 'agent') {
      if (message.triggeredBy) {
        console.log('triggered message:', message.content, '; trigger:'+message.triggeredBy);
      } else {
        console.log('agent message:', message.content);
      }
    }
  });
</script>
```

## render

Fires before chat is rendered.

```js
<script>
  smartsupp('on', 'render', function() { console.log('render'); });
</script>
```

## rendered

Fires after chat is rendered.

```js
<script>
  smartsupp('on', 'rendered', function() { console.log('rendered'); });
</script>
```

## sent

Fires when user sents a message.

```js
<script>
  smartsupp('on', 'sent', function(message) { console.log('sent message:', message); });
</script>
```

## status

Fires when online status of Smartsupp account is changed and when chat (page) is loaded.

```js
<script>
  // Change banner by status
  smartsupp('on', 'status', function(status) {
    if(status == 'online') {
      smartsupp('banner:set', 'image', { src: 'PATH/banners/banner_online.png' });
    }
    else {
      smartsupp('banner:set', 'image', { src: 'PATH/banners/banner_offline.png' });
    }
  });
</script>
```

## startup

Fires when chat is loaded.

```js
<script>
  smartsupp('on', 'startup', function() { console.log('startup'); });
</script>
```