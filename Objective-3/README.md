# Objective 3: Elf Minder 9000

**Difficultree: 🎄**  
**Location: Frosty's Beach**

This objective is about the completion of an game, where the player needs to collect crates while following a defined route.

## Easy
To get the silver achievement, the first 12 levels have to be completed.
The first four are straight forward.
The remaining levels are shown here. The panels marked blue have to be rotates as needed.
#### Level 4: Dune Dash
![Level 4: Dune Dash](Level%204%20-%20Dune%20Dash.png) 
#### Level 5: Coral Cove
![Level 5: Coral Cove](Level%205%20-%20Coral%20Cove.png)
#### Level 6: Shell Seekers
![Level 6: Shell Seekers](Level%206%20-%20Shell%20Seekers.png)
#### Level 7: Palm Grove Shuffle
![Level 7: Palm Grove Shuffle](Level%207%20-%20Palm%20Grove%20Shuffle.png)
#### Level 8: Tropical Tangle
![Level 8: Tropical Tangle](Level%208%20-%20tropical%20Tangle.png)
#### Level 9: Crate Caper
![Level 9: Crate Caper](Level%209%20-%20Crate%20Caper.png)
#### Level 10: Shoreline Shuffle
![Level 10: Shoreline Shuffle](Level%2010%20-%20Sjhoreline%20Shuffle.png)
#### Level 11: Beachy Bounty
![Level 11: Beachy Bounty](Level%2011%20-%20Beachy%20Bounty.png)

**Achievement: [Silver] Elf Minder 9000**

## Hard
For the gold achievement, level 13 "A Real Pickle" has to be completed. This was done using a browser console (context "ELF MINDER 9000") to inject a tunnel exit element on the target flag.
Positioned elements:
```
game.entities=[[1,1,0],[11,9,1],[9,9,3],[11,7,3],[7,9,3],[5,9,3],[3,9,3],[1,9,3],[11,5,3],[9,5,3],[7,3,3],[5,1,3],[3,3,3],[1,3,3],[9,1,2],[5,3,2],[3,7,2],[7,7,2],[11,3,3],[11,1,3],[3,1,7],[9,3,7],[11,9,6],[1,7,6]]
```
Path:
```
game.segments=[[[1,1],[2,1]],[[2,1],[3,1]],[[8,1],[9,1]],[[9,1],[9,2]],[[9,2],[9,3]],[[9,6],[9,7]],[[9,7],[8,7]],[[8,7],[7,7]],[[7,7],[6,7]],[[6,7],[5,7]],[[5,7],[5,6]],[[5,6],[5,5]],[[5,5],[5,4]],[[5,4],[5,3]],[[4,7],[3,7]],[[3,7],[2,7]],[[1,7],[2,7]],[[11,9],[10,9]]]
```

#### Level 13: A Real Pickle
![Level 13: A Real Pickle](Level%2013%20-%20A%20Real%20Pickle.png)

**Achievement: [Gold] Elf Minder 9000**

## additional
### edit mode
By adding a `edit=1` to the game URL, a level editor in started.
### sanity checks
By manipulating "game.segments" it is even possible to have diagonal paths. But due to sanity checks the level completion is not awarded.
### too many springs
If more than two springs are positioned in the level, a "whyCantIHoldAllTheseSprings" is sent to the console.
### Spring jump to [0,0]
If the player jumps using a spring and in the jump direction there is no path, but a positioned element, the player jumps to [0,0]
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTE3Mzc3ODUyMCwtMTI2OTk4MzYxLC01Nz
U2Njg3ODMsLTIwMTE1MTk2NF19
-->