class WordFormatter
 
attr_reader :address, :building, :postcode, :phone

  def initialize(options)
   @address = options['address']
   @building = options['building']
   @postcode = options['postcode']
   @phone = options['phone']

  end

  def loud
   @postcode.upcase!
  end

  def camelcase(info)
    result = []
    words = info.split
    for word in words
       result << word.capitalize
    end
    result.join
  end

end