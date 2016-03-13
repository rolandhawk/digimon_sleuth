require 'digimon/digimon.rb'
require 'digimon/errors.rb'
require 'services/search_path.rb'

def klass(counter)
  if counter <= 5
    "Training I"
  elsif counter <= 16
    "Training II"
  elsif counter <= 54
    "Rookie"
  elsif counter <= 108
    "Champion"
  elsif counter <= 169
    "Ultimate"
  else
    "Mega"
  end
end

counter = 1
file = File.new(File.expand_path('../../dat/digivolve.dat', __FILE__), 'r')
divolve = {}
while (line = file.gets&.strip)
  name, digivolve = line.split(" -> ")
  digivolve = (digivolve || "").split(", ")
  if name != "???"
    count = digivolve.count
    divolve[name] = digivolve.reject{ |d| d == "???" }
    digimon = Digimon.new(name, klass(counter), { digivolve_count: count })
    Digimon.register(digimon)
  end
  counter += 1
end
file.close

Digimon.all.each do |digimon|
  divolve[digimon.name].each do |d|
    begin
      digi = Digimon.find(d.strip)
      digimon.add_digivolve(digi)
      digi.add_dedigivolve(digimon)
    rescue DigimonNotFoundError
      puts "Data corrupt for '#{digimon.name}' digivolved to '#{d}'"
    end
  end
end
