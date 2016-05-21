require 'digimon_sleuth/digimon'
require 'digimon_sleuth/errors'
require 'digimon_sleuth/path_searcher'

module DigimonSleuth
  counter = 1
  file = File.new(File.expand_path('../../dat/digivolve.dat', __FILE__), 'r')
  divolve = {}
  while (line = file.gets&.strip)
    name, digivolve = line.split(" -> ")
    digivolve = (digivolve || "").split(", ")
    count = digivolve.count
    divolve[name] = digivolve
    digimon = Digimon.new(name)
    Digimon.register(digimon)
    counter += 1
  end
  file.close

  Digimon.all.each do |digimon|
    divolve[digimon.name].each do |d|
      digi = Digimon.find(d.strip)
      digimon.add_digivolve(digi)
      digi.add_dedigivolve(digimon)
    end
  end

  def self.search_path(*args)
    PathSearcher.execute(*args)
  end
end
