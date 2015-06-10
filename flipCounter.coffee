if Meteor.isClient
  Template.flipCounter.onRendered ->
    currentDate = new Date
    futureDate = new Date 'November 17, 2015  19:00:00'
    diff = futureDate.getTime() / 1000 - currentDate.getTime() / 1000

    window.clock = ($ '.clock').FlipClock diff,
      clockFace: 'DailyCounter'
      language: 'fr'
      countdown: true
      showSeconds: true
