## Blocmetrics
![Screenshot of Blocmetrics]("app/images/Screen Shot.png")
Blocmetrics is designed to help businesses monitor their traffic through an easy to use web application. Give it a try!

# How to use
Register application on [Heroku](https://afternoon-sierra-24638.herokuapp.com/)
Then place the following Javascript in the application's app/assets/javascripts/application.js file:

```
  blocmetrics.report = function(eventName) {
     var event = {event: { name: eventName }};
     var request = new XMLHttpRequest();
     request.open("POST", "http://localhost:3000/api/events", true);
     request.setRequestHeader('Content-Type', 'application/json');
     request.send(JSON.stringify(event));
  }
```

And then call blocmetrics.report with your event name in the appropriate html file(s)
