module DigimonSleuth
  class Digimon
    attr_reader :name, :digivolve, :dedigivolve

    @digimon = Hash.new

    def self.find(name)
      digimon = @digimon[name.downcase]
      raise DigimonNotFoundError, "There is no digimon with name #{name}" unless digimon
      digimon
    end

    def self.all
      return @digimon.values
    end

    def self.register(digimon)
      @digimon[digimon.name.downcase] = digimon
    end

    def initialize(name)
      @name = name
      @digivolve = Array.new
      @dedigivolve = Array.new
    end

    def add_digivolve(digimon)
      @digivolve << digimon
    end

    def add_dedigivolve(digimon)
      @dedigivolve << digimon
    end

    def inspect
      "#{name}"
    end
  end
end
