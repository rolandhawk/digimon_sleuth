[![Code Climate](https://codeclimate.com/github/rolandhawk/digimon_sleuth/badges/gpa.svg)](https://codeclimate.com/github/rolandhawk/digimon_sleuth)

# digimon_sleuth
Digimon Cyber Sleuth simple know how code.

## Installing
```
gem install digimon_sleuth
```

## Start
```
digimon_sleuth
```

## Feature
### Digivolve path finder

Command:
```
PATH Agumon TO Gabumon
```
Response:
```
Found 4 paths:
Agumon -> GeoGreymon -> RizeGreymon -> Dorugamon -> Gabumon
Agumon -> Meramon -> Panjyamon -> Garurumon -> Gabumon
Agumon -> Sukamon -> Etemon -> Numemon -> Gabumon
Agumon -> Sukamon -> Elecmon -> Garurumon -> Gabumon
```
Available options
```
ALL #display all path
DEPTH #max digivolve/dedigivolve needed
```
Command:
```
PATH Agumon TO Gabumon -- ALL -- DEPTH 8
```
Response:
```
Found 46 paths:
Agumon -> GeoGreymon -> RizeGreymon -> Dorugamon -> Gabumon
Agumon -> Meramon -> Panjyamon -> Garurumon -> Gabumon
Agumon -> Tyrannomon -> MetalTyrannomon -> Veedramon -> Gabumon
Agumon -> Sukamon -> Etemon -> Numemon -> Gabumon
Agumon -> Sukamon -> Elecmon -> Garurumon -> Gabumon
Agumon -> GeoGreymon -> Gigadramon -> Growlmon -> Goblimon -> Tsunomon -> Gabumon
Agumon -> GeoGreymon -> RizeGreymon -> ExVeemon -> Veemon -> Tsunomon -> Gabumon
Agumon -> GeoGreymon -> RizeGreymon -> Dorugamon -> Gabumon -> Frigimon -> Gabumon
Agumon -> GeoGreymon -> RizeGreymon -> Dorugamon -> Gabumon -> Tsunomon -> Gabumon
Agumon -> GeoGreymon -> SkullGreymon -> Ankylomon -> Gomamon -> Frigimon -> Gabumon
Agumon -> GeoGreymon -> Guilmon -> Growlmon -> Goblimon -> Tsunomon -> Gabumon
Agumon -> GeoGreymon -> Guilmon -> Greymon(Blue) -> Goblimon -> Tsunomon -> Gabumon
Agumon -> Greymon -> MetalGreymon -> Growlmon -> Goblimon -> Tsunomon -> Gabumon
Agumon -> Greymon -> MetalGreymon(Blue) -> Greymon(Blue) -> Goblimon -> Tsunomon -> Gabumon
Agumon -> Greymon -> SkullGreymon -> Ankylomon -> Gomamon -> Frigimon -> Gabumon
Agumon -> Meramon -> BlueMeramon -> Garurumon(Blk) -> Gabumon(Blk) -> Frigimon -> Gabumon
Agumon -> Meramon -> BlueMeramon -> Garurumon(Blk) -> Gabumon(Blk) -> Tsunomon -> Gabumon
Agumon -> Meramon -> SkullMeramon -> Ogremon -> Goblimon -> Tsunomon -> Gabumon
Agumon -> Meramon -> Panjyamon -> SaberLeomon -> Monzaemon -> Frigimon -> Gabumon
Agumon -> Meramon -> Panjyamon -> Garurumon -> Zudomon -> Frigimon -> Gabumon
Agumon -> Meramon -> Panjyamon -> Garurumon -> Gabumon -> Frigimon -> Gabumon
Agumon -> Meramon -> Panjyamon -> Garurumon -> Gabumon -> Tsunomon -> Gabumon
Agumon -> Meramon -> Guilmon -> Growlmon -> Goblimon -> Tsunomon -> Gabumon
Agumon -> Meramon -> Guilmon -> Greymon(Blue) -> Goblimon -> Tsunomon -> Gabumon
Agumon -> Tyrannomon -> MetalGreymon(Blue) -> Greymon(Blue) -> Goblimon -> Tsunomon -> Gabumon
Agumon -> Tyrannomon -> MetalTyrannomon -> Growlmon -> Goblimon -> Tsunomon -> Gabumon
Agumon -> Tyrannomon -> MetalTyrannomon -> Veedramon -> Gabumon -> Frigimon -> Gabumon
Agumon -> Tyrannomon -> MetalTyrannomon -> Veedramon -> Gabumon -> Tsunomon -> Gabumon
Agumon -> Tyrannomon -> MetalTyrannomon -> Veedramon -> Veemon -> Tsunomon -> Gabumon
Agumon -> Tyrannomon -> MetalTyrannomon -> Veedramon -> Salamon -> Frigimon -> Gabumon
Agumon -> Tyrannomon -> Agumon(Blk) -> Growlmon -> Goblimon -> Tsunomon -> Gabumon
Agumon -> Tyrannomon -> Agumon(Blk) -> Greymon(Blue) -> Goblimon -> Tsunomon -> Gabumon
Agumon -> Tyrannomon -> Guilmon -> Growlmon -> Goblimon -> Tsunomon -> Gabumon
Agumon -> Tyrannomon -> Guilmon -> Greymon(Blue) -> Goblimon -> Tsunomon -> Gabumon
Agumon -> Sukamon -> SuperStarmon -> Nanimon -> Goblimon -> Tsunomon -> Gabumon
Agumon -> Sukamon -> Etemon -> Numemon -> Monzaemon -> Frigimon -> Gabumon
Agumon -> Sukamon -> Etemon -> Numemon -> Gabumon -> Frigimon -> Gabumon
Agumon -> Sukamon -> Etemon -> Numemon -> Gabumon -> Tsunomon -> Gabumon
Agumon -> Sukamon -> Elecmon -> Garurumon -> Zudomon -> Frigimon -> Gabumon
Agumon -> Sukamon -> Elecmon -> Garurumon -> Gabumon -> Frigimon -> Gabumon
Agumon -> Sukamon -> Elecmon -> Garurumon -> Gabumon -> Tsunomon -> Gabumon
Agumon -> Sukamon -> Elecmon -> Nanimon -> Goblimon -> Tsunomon -> Gabumon
Agumon -> Sukamon -> Elecmon -> Garurumon(Blk) -> Gabumon(Blk) -> Frigimon -> Gabumon
Agumon -> Sukamon -> Elecmon -> Garurumon(Blk) -> Gabumon(Blk) -> Tsunomon -> Gabumon
Agumon -> Koromon -> Guilmon -> Growlmon -> Goblimon -> Tsunomon -> Gabumon
Agumon -> Koromon -> Guilmon -> Greymon(Blue) -> Goblimon -> Tsunomon -> Gabumon
```
