class Digimon
  attr_reader :name, :klass, :digivolve, :dedigivolve

  @digimon = Hash.new
  @klass = { "training i" => {}, "training ii" => {}, "rookie" => {}, "champion" => {}, "ultimate" => {}, "mega" => {}}

  def self.find(name)
    digimon = @digimon[name.downcase]
    raise DigimonNotFoundError, "There is no digimon with name #{name}" unless digimon
    digimon
  end

  def self.all(klass = nil)
    return @digimon.values unless klass
    return @klass[klass].values
  end

  def self.register(digimon)
    @digimon[digimon.name.downcase] = digimon
    @klass[digimon.klass.downcase][digimon.name.downcase] = digimon
  end

  def initialize(name, klass, opts = {})
    @name = name
    @klass = klass
    @digivolve_count = opts[:digivolve_count]
    @digivolve = Array.new
    @dedigivolve = Array.new
  end

  def add_digivolve(digimon)
    @digivolve << digimon
  end

  def add_dedigivolve(digimon)
    @dedigivolve << digimon
  end
end
