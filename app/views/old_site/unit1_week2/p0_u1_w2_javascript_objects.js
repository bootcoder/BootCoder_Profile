// I paired [by myself with myself] on this challenge.
 
 
 
 
// Pseudocode
// Get to Green with TDD
// 
// first I need to set a variable secretNumber
// ** set secretNumber to 7
// 
// next I'll need a password string
// ** set password to "just open the door"
// 
// next I'll need a boolean variable for allowedIn
// ** set allowed in to false
// 
// next I'll need an array with member names
// only the first and forth values are evaluated.
// the middle two can be whatever.
// ** set array with John @[0] and Mary @[3]
// 

 
// __________________________________________
// Write your code below.
// 

var secretNumber = 7;
var password = "just open the door";
var allowedIn = false;
var members = ["John", "Harry", "Karry", "Mary"];
 
 
 
 
 
// __________________________________________
// Refactored Code: Include a refactored version (or justification of your original code) here. 
 
 
 
 
 
// __________________________________________
// Reflection: Use the reflection guidelines to write a reflection here. 
// 
// 
// 
// 
// 
// 
 
 
// __________________________________________
// Driver Code:  Do not alter code below this line.
 
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}
 
assert(
  (typeof secretNumber === 'number'),
  "The value of secretNumber should be a number.",
  "1. "
)
 
assert(
  secretNumber === 7,
  "The value of secretNumber should be 7.",
  "2. "
)
 
assert(
  typeof password === 'string',
  "The value of password should be a string.",
  "3. "
)
 
assert(
  password === "just open the door",
  "The value of password should be 'just open the door'.",
  "4. "
)
 
assert(
  typeof allowedIn === 'boolean',
  "The value of allowedIn should be a boolean.",
  "5. "
)
 
assert(
  allowedIn === false,
  "The value of allowedIn should be false.",
  "6. "
)
 
assert(
  members instanceof Array,
  "The value of members should be an array",
  "7. "
)
 
assert(
  members[0] === "John",
  "The first element in the value of members should be 'John'.",
  "8. "
)
 
assert(
  members[3] === "Mary",
  "The fourth element in the value of members should be 'Mary'.",
  "9. "
)