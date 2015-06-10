# if Meteor.isClient
#
#   doFlip = (numberIndex) ->
#     currentNumberElement = $ ".number:eq(#{numberIndex})"
#     currentNumber = Number(currentNumberElement.attr 'data-number')
#     currentNumber--
#     if currentNumber < 0
#       currentNumber = 9
#       if (numberIndex > 0)
#         doFlip(--numberIndex)
#     currentNumberElement.addClass 'flip'
#     Meteor.setTimeout ->
#       currentNumberElement.attr 'data-number', currentNumber
#       currentNumberElement.removeClass 'flip'
#     , 500
#
#   Meteor.setInterval ->
#     doFlip 3
#   , 1000

if Meteor.isClient
  Template.flipCounter.onRendered ->
    currentDate = new Date
    futureDate = new Date("June 16, 2016  08:00:00")
    diff = futureDate.getTime() / 1000 - currentDate.getTime() / 1000

    clock = $(".clock").FlipClock(diff,
      clockFace: "DailyCounter"
      countdown: true
      showSeconds: true
    )
