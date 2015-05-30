angularHumanize = angular.module("angularHumanize",[])


angularHumanize.service("humanize",() ->
    return (text,mode="standard") ->
        result = []
        for word in text.split(" ")
            
            if word.length > 2 or mode == "strict"
                word = word[0].toUpperCase()  + word.slice(1)
                
            result.push(word)
        
        return result.join(" ")
                
        
        
)

angularHumanize.filter("humanize",(humanize) ->
    return (input,mode) -> humanize(input,mode)
)


