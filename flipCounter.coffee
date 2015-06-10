if Meteor.isClient

  doFlip = (numberIndex) ->
    currentNumberElement = $ ".number:eq(#{numberIndex})"
    currentNumber = Number(currentNumberElement.attr 'data-number')
    currentNumber--
    if currentNumber < 0
      currentNumber = 9
      if (numberIndex > 0)
        doFlip(--numberIndex)
    currentNumberElement.addClass 'flip'
    Meteor.setTimeout ->
      currentNumberElement.attr 'data-number', currentNumber
      currentNumberElement.removeClass 'flip'
    , 500

  Meteor.setInterval ->
    doFlip 3
  , 1000
