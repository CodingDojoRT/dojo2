_ = require 'underscore'

class Game
  chain: (inputValue) ->
    stringReturn = "Original number was #{inputValue}\n"
    chainCounter = 0
    currentSequence = inputValue
    result = null    
    listResult = []
    while true
      returnValues = @sortAndCalculateLine currentSequence 
      result = returnValues.result
      stringReturn += returnValues.stringReturn
        
      currentSequence = String result
      chainCounter++

      break if listResult.indexOf(result) isnt -1

      listResult.push result

    stringReturn += "Chain length #{chainCounter}" 

  sortAndCalculateLine: (currentSequence) ->
    list = []
    for number in currentSequence
      list.push number
    list = _.sortBy list 
    numberA = list.join ""    
    numberB = list.reverse().join ""    
    result = numberB - numberA     
    returnValues = 
      stringReturn: "#{numberB} - #{numberA} = #{result}\n" 
      result: result

module.exports = Game