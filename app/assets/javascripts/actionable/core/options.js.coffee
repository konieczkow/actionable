class @Options
  constructor: (defaultOptions) ->
    @options = defaultOptions
    
  to_params: () =>
    result = for key, value of @options
      "#{key}=#{value}"
    result.join(',')

  add: (key, value) =>
    if (value?)
      @options[key] = value

  addFromElementData: (target, name) =>
    @add(name, target.data(name))

  addAllFromElementData: (target) =>
    for key, value of @options
      @addFromElementData(target, key)      
