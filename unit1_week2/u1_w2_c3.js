// This is a Solo Challenge. 
 
// There is a section below where you will write your code.
// Do not alter this object here.
 
 
var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}
/* Pseudocode Section - write pseudocode for each challenge below.

1. Define a variable adam and use object literal notation to assign this variable 
   the value of a JavaScript Object object with no properties.
 
    create empty var adam 

2. Give adam a name property with the value "Adam".

    assign adam a name property of "Adam"
 
3. Add a spouse property to terah and assign it the value of adam.

    assign terah a spouse property adam
 
4. Change the value of the terah weight property to 125.

    set terah weight property to 125
 
5. Remove the eyeColor property from terah.
 
    delete terah eyeColor property

6. Add a spouse property to adam and assign it the value of terah.

    add spouse property to adam assign to terah
 
7. Add a children property to terah and and use object literal notation to assign 
   this variable the value of a JavaScript Object object with no properties

   create empty terah children object 
 
8. Add a carson property to the value of the terah children property and assign it 
  the value of an object with the property name with a value of "Carson".

    new terah children carson with name property "Carson"
 
9. Add a carter property to the value of the terah children property and assign it 
   the value of an object with the property name with a value of "Carter".

   new terah children carter with name property "Carter"
 
10. Add a colton property to the value of the terah children property and assign it 
    the value of an object with the property name with a value of "Colton".

    new terah children colton with name property "Colton"
 
11. Add a children property to adam and assign it the value of terah children.
  
    set adam children property equal to terah children
*/
 
// __________________________________________
// Write your code below.

var adam = {};
adam.name = "Adam";
terah.spouse = adam;
terah.weight = 125;
delete terah.eyeColor;
adam.spouse = terah;
terah.children = {};
terah.children.carson.name = "Carson";
terah.children.carson = {
  name: "Carson"
};
terah.children.carter = {
  name: "Carter"
};
terah.children.colton = {
  name: "Colton"
};
adam.children = terah.children;

 
 
 
 

 
 
// __________________________________________
// Reflection: Use the reflection guidelines
// 
// but if you call adam.children they are displayed correctly
// 
// What parts of your strategy worked? What problems did you face?
// The strategy here was to get green by creating the correct objects. 
// all green === strategy all good
// 
// What questions did you have while coding? 
// I have questions about how some objects printed at the end
// when calling the terah object spouse is [circular] 
// and the children under spouse are listed as [Object]
// 
// Also not sure why I could not create a new child with name by calling
// terah.children.carson.name = "Carson";
// returned "cannot set property of 'name' of undefined"
//
// What resources did you find to help you answer them?
// None, just went a different direction. 
//
// What concepts are you having trouble with, or did you just figure something out? If so, what?
// None, the objects assignment model in JS is very easy to deal with. 
//
// Did you learn any new skills or tricks?
// Only that a sub-property must be before it can be assigned
//
// How confident are you with each of the learning objectives?
// Very, although I did not write any pseudo for this challenge,
// considering the challenge directions were pseudo so......
// ...Went back and wrote some more pseudo to go along with what you guys provided.
// a bit more basic, really just says the same thing in "other words".
//
// Which parts of the challenge did you enjoy?
// All of it, quick and to the point is how I like it. 
//
// Which parts of the challenge did you find tedious?
// The parts where the driver object and test code says 'do not edit'
// Coupled with Sublime complaining about missing semicolons.... 
// I really want to add them, I hate those little red flags!
//  :+)
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
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)
 
assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)
 
assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the variable adam.",
  "3. "
)
 
assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)
 
assert(
  terah.eyeColor === undefined,
  "The terah eyeColor property should be removed.",
  "5. "
)
 
assert(
  terah.spouse.spouse === terah,
  "The terah spouse property's value spouse property should be terah.",
  "6. "
)
 
assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be an Object.",
  "7. "
)
 
assert(
  terah.children.carson.name === "Carson",
  "The terah children property should have a carson property with its own property name with a value of 'Carson'.",
  "8. "
)
 
assert(
  terah.children.carter.name === "Carter",
  "The terah children property should have a carter property with its own property name with a value of 'Carter'.",
  "9. "
)
 
assert(
  terah.children.colton.name === "Colton",
  "The terah children property should have a colton property with its own property name with a value of 'Colton'.",
  "10. "
)
 
assert(
  adam.children === terah.children,
  "The value of the adam children property should be the value of the terah children property",
  "11. "
)
 
console.log("\nHere is your final terah object:")
console.log(terah)