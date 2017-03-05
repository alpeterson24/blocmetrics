# Blocmetrics
![Screenshot of Blocmetrics](https://github.com/alpeterson24/blocmetrics/blob/master/app/assets/images/Screen%20Shot.png "Screenshot of Blocmetrics")
Blocmetrics is designed to help businesses monitor their traffic through an easy to use web application. Give it a try!

## How to use
Register your application and url on my Heroku app [Here](https://afternoon-sierra-24638.herokuapp.com/).

Then place the following Javascript code in your application's app/assets/javascripts/application.js file:
```
  blocmetrics.report = function(eventName) {
     var event = {event: { name: eventName }};
     var request = new XMLHttpRequest();
     request.open("POST", "https://afternoon-sierra-24638.herokuapp.com/api/events", true);
     request.setRequestHeader('Content-Type', 'application/json');
     request.send(JSON.stringify(event));
  }
```

And then call blocmetrics.report with your event name in the appropriate html file(s)
