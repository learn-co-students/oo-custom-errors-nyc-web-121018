class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != Person
      begin
        raise PartnerError
      rescue PartnerError => error
        puts error.message
      end
    else
      person.partern = self
    end
  end

  class PartnerError < StandardError
    def message
      "you must give the get_married method an argument of an instance of the Person class!"
    end
  end # end of ParnterError class

end # end of Person class

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name
