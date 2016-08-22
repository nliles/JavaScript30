class Dancer(name,age)
    attr_reader :name
    attr_reader :age
    attr_accessor :age
    def initialize 
        @name=name
        @age=age
    end
    def name
        @name
    end
    def age
        @age
    end
    def pirouette
        puts "*twirls*"
    end

    def bow
        puts "*bows*"
  end
   def pasduchat
       puts "*pat du chat*"
   end

end

