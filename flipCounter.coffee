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
  @clock = {}
  Template.flipCounter.onRendered ->
    currentDate = new Date
    futureDate = new Date("November 16, 2015  23:59:59")
    diff = futureDate.getTime() / 1000 - currentDate.getTime() / 1000

    window.clock = $(".clock").FlipClock diff,
      clockFace: 'DailyCounter'
      language: 'fr'
      countdown: true
      showSeconds: true
