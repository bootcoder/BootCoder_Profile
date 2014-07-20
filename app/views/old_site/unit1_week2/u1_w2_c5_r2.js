//new pseudo for u1_w2_c5.js

// write 3 functions to calculate the sum, mean and median of even and odd arrays





// create variable total and set equal to 0

// Sum
// create a variable sum, which is a function that takes a single input as an argument.
// 
// reset total to 0 
// FOR loop i = 0, i< input.length, i++
// 	return total += input element i
// end FOR loop

// Mean
// create a variable mean, which is a function that takes a single input as an argument
// 
// reset total to 0
// set total to the return of calling the sum function on input
// return total divided by the length of input

// Median
// create a variable median, which is a function that takes a single input as an argument
// 
// call sort on the input array
// create a variable half set it equal to the value of Math.floor given half the input length
// IF Loop
// 	given input length modulus = 1 
// 	return element half of input array
// ELSE
// 	return the result of taking the average of, half the input array and  half the input array + 1
// End IF Loop


//aha moment: my for loop is adding array spots not elements

var test = [1,2,3,4,5,7,8,9,10];
var test2 = [2,3,4,1];
var total = 0;
var sum = function(input) {
	total = 0;
	for (var i = 0; i < input.length; i++) {
		total += input[i]; console.log("sum:",total);}
	return total;
};

var mean = function(input) {
	total = 0;
	total = sum(input);
	total = total/input.length;
	console.log("mean:", total);
};

var median = function(input) {
	input.sort;
	console.log(input);
	var half = Math.floor(input.length/2);
	console.log("half:", half);
	if (input.length % 2) {
		console.log(input[half]); //odd
		return input[half];
	} else { //even
		console.log((input.length/2 + (input.length/2 + 1))/2);
	}

};


console.log(".");
console.log("sum1");
console.log(".");
sum(test);
console.log(".");
console.log("sum2");
console.log(".");
sum(test2);
console.log(".");
console.log("Mean 1");
console.log(".");
mean(test);
console.log(".");
console.log("mean2");
console.log(".");
mean(test2);
console.log(".");
console.log("median 1");
console.log(".");
median(test);
console.log(".");
console.log("median 2");
console.log(".");
median(test2);
console.log(".");








