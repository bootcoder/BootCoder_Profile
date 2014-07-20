// I worked [by myself, Dominick Oddo:] on this challenge
 
// Your mission description:
// move close to ogre
// kill the dreaded ogre
 
 
// Pseudocode
//
// create a player object
// give that object functions (move,attack)
// call functions to play game
 
 
// define player with Health = 50pts
// define ogre with Health = 10pts
// define functions (moveXY, attack)
 
 
// locate ogre
// move adjacent to ogre
// attack ogre
 
 
// Initial Code
 
var gridArray = [[0,1,2,3,4,5,6,7,8,9],[0,1,2,3,4,5,6,7,8,9],[0,1,2,3,4,5,6,7,8,9],[0,1,2,3,4,5,6,7,8,9],[0,1,2,3,4,5,6,7,8,9],[0,1,2,3,4,5,6,7,8,9],[0,1,2,3,4,5,6,7,8,9],[0,1,2,3,4,5,6,7,8,9],[0,1,2,3,4,5,6,7,8,9]];
 
var player = {
  name: "Eddie Murphy",
  health: 50,
  position: gridArray[1][1]
};
 
var ogre = {
  name: "Donkey",
  health: 10,
  position: gridArray[3][5]
};
 
function moveXY(x,y) {
    this.position = gridArray[x][y];
}
 
function attack() {
  if (player.position === gridArray[4][5] || player.position === gridArray[2][5] || player.position === gridArray[3][4] || player.position === gridArray[3][6]) {
    ogre.health = 0;
    console.log("Suck it Ogre!!");
  } else {
    ogre.health = 10;
    console.log("Looks like Twitter is down, cause you're on the fail whale...");
  }
}
 
 
// // Game ON!
// player.moveXY(2,5);
// player.attack();
// // Wow Winning!
 
 
 
 
 
// Refactored Code
 
 
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
  health: 55,
  position: gridArray[1]+[1]
};
 
var ogre = {
  health: 10,
  position: gridArray[3][5]
};
 
function moveXY(x,y) {
    this.position = gridArray[x][y];
}
 
function attack() {
  if (player.position === gridArray[4][5] || gridArray[2][5] || gridArray[3][4] || gridArray[3][6]) {
    ogre.health = 0;
    console.log("Suck it Ogre!!");
  } else {
    ogre.health = 10;
    console.log("Looks like Twitter is down, cause you're on the fail whale...");
  }
}
 
 
// Game ON!
player.moveXY(2,5);
player.attack();
// Wow Winning!
