// Refactored Code
// 
// gridArray not working as expected // appears to only dislay the last value in player property, IDK...
// 
// need to have a talk about multi-dimensional arrays, game plays but I could have a better grasp of nested arrays
// 
// could not implement player.moveXY(2,5); returned no method error, need to find out how this works I know its something silly 
// changed to moveXY(player,2,5) to get green.
// 
// fixed player.moveXY(x,y) thanks Dominick!


var gridArray = [[0,1,2,3,4,5,6,7,8,9],
                 [0,1,2,3,4,5,6,7,8,9],
                 [0,1,2,3,4,5,6,7,8,9],
                 [0,1,2,3,4,5,6,7,8,9],
                 [0,1,2,3,4,5,6,7,8,9],
                 [0,1,2,3,4,5,6,7,8,9],
                 [0,1,2,3,4,5,6,7,8,9],
                 [0,1,2,3,4,5,6,7,8,9],
                 [0,1,2,3,4,5,6,7,8,9],
                 [0,1,2,3,4,5,6,7,8,9]];

var player = {
  name: "Eddie Murphy",
  health: 50,
  coustume: "Purple Latex",
  position: gridArray[1][1]
};
 
var ogre = {
  name: "Donkey!",
  health: 10,
  coustume: "Um, IDK, just looks like a donkey to me",
  position: gridArray[3][5]
};
 
player.moveXY = function(x,y) {
    player.position = gridArray[x][y];
};
 
player.attack = function() {
  if (player.position === (gridArray[4][5] || gridArray[2][5] || gridArray[3][4] || gridArray[3][6])) {
    ogre.health = 0;
    console.log(player.name+":", "'Suck it Ogre!!'");
  } else {
    ogre.health = 10;
    console.log("Ogre: 'Looks like Twitter is down, cause you're on the fail whale...'");
  }
};
 

// Game ON!
console.log("In the Blue Corner:");
console.log("Player 1:", player.name);
console.log("Wearing:", player.coustume);
console.log("VS:");
console.log("In the Red Corner:");
console.log("Dreaded Ogre:", ogre.name);
console.log("Wearing:", ogre.coustume);
console.log("Round ONE Fight!");
player.moveXY(9,9);
player.attack();
console.log("Round TWO Fight!");
player.moveXY(2,5);
player.attack();
// Wow Winning!