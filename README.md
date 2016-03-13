[![Code Climate](https://codeclimate.com/github/rolandhawk/digimon_sleuth/badges/gpa.svg)](https://codeclimate.com/github/rolandhawk/digimon_sleuth)

# digimon_sleuth
Digimon Cyber Sleuth simple know how code.

## Get Started
Install RVM

```
curl -L get.rvm.io | bash -s stable
source ~/.bash_profile
```

Then run `rvm requirements` and follow the instructions

Install Ruby 2.3.0

```
rvm install 2.3.0
```

## Start Program
```
./digimon
```

## Feature
### Digivolve path finder

Command:
```
PATH Agumon TO Gabumon
```
Response:
```
Agumon -> GeoGreymon -> RizeGreymon -> Dorugamon -> Gabumon
Agumon -> Meramon -> Panjyamon -> Garurumon -> Gabumon
Agumon -> Sukamon -> Etemon -> Numemon -> Gabumon
Agumon -> Sukamon -> Elecmon -> Garurumon -> Gabumon
```
Available options
```
ALL #display all path
EXCEPT #don't involve particular level(s)
ONLY #only involve particulas level(s)
DEPTH #max evolve needed
```
Command:
```
PATH Agumon TO Gabumon -- ALL -- EXCEPT Mega,  Training II
```
Response:
```
Agumon -> GeoGreymon -> RizeGreymon -> Dorugamon -> Gabumon
Agumon -> Meramon -> Panjyamon -> Garurumon -> Gabumon
Agumon -> Sukamon -> Etemon -> Numemon -> Gabumon
Agumon -> Sukamon -> Elecmon -> Garurumon -> Gabumon
Agumon -> GeoGreymon -> RizeGreymon -> ExVeemon -> Veemon -> Veedramon -> Gabumon
Agumon -> GeoGreymon -> RizeGreymon -> Dorugamon -> Gabumon -> Veedramon -> Gabumon
Agumon -> GeoGreymon -> RizeGreymon -> Dorugamon -> Gabumon -> Frigimon -> Gabumon
Agumon -> GeoGreymon -> SkullGreymon -> Ankylomon -> Gomamon -> Frigimon -> Gabumon
Agumon -> GeoGreymon -> Guilmon -> Growlmon -> WarGrowlmon -> Veedramon -> Gabumon
Agumon -> Greymon -> MetalGreymon -> Growlmon -> WarGrowlmon -> Veedramon -> Gabumon
Agumon -> Greymon -> SkullGreymon -> Ankylomon -> Gomamon -> Frigimon -> Gabumon
Agumon -> Meramon -> BlueMeramon -> Garurumon(Blk) -> Gabumon(Blk) -> Frigimon -> Gabumon
Agumon -> Meramon -> Panjyamon -> Garurumon -> Zudomon -> Frigimon -> Gabumon
Agumon -> Meramon -> Panjyamon -> Garurumon -> Gabumon -> Veedramon -> Gabumon
Agumon -> Meramon -> Panjyamon -> Garurumon -> Gabumon -> Frigimon -> Gabumon
Agumon -> Meramon -> Guilmon -> Growlmon -> WarGrowlmon -> Veedramon -> Gabumon
Agumon -> Tyrannomon -> Agumon(Blk) -> Growlmon -> WarGrowlmon -> Veedramon -> Gabumon
Agumon -> Tyrannomon -> Guilmon -> Growlmon -> WarGrowlmon -> Veedramon -> Gabumon
Agumon -> Sukamon -> Etemon -> Numemon -> Gabumon -> Veedramon -> Gabumon
Agumon -> Sukamon -> Etemon -> Numemon -> Gabumon -> Frigimon -> Gabumon
Agumon -> Sukamon -> Elecmon -> Garurumon -> Zudomon -> Frigimon -> Gabumon
Agumon -> Sukamon -> Elecmon -> Garurumon -> Gabumon -> Veedramon -> Gabumon
Agumon -> Sukamon -> Elecmon -> Garurumon -> Gabumon -> Frigimon -> Gabumon
Agumon -> Sukamon -> Elecmon -> Garurumon(Blk) -> Gabumon(Blk) -> Frigimon -> Gabumon
```