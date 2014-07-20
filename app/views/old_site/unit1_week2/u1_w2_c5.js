// PseudoCode
write 3 functions to find sum, mean, and median
all functions should accept even and odd numbered lists
the user specified list but I think we can assume it will be an array of numbers. 

1. write a function titled sum

		function sum(numbers) // should take an array as input
		use numbers.reduce(function(a,b) then return a+b)
		
2. write a function titled mean

		function mean should take an argument //ex function mean(numbers)
		// next find the sum of the input
		// could use either
		var meanSum = numbers.reduce(function(a,b) {return a+b}); // to just redo the sum in this function or,
		var meanSum = numbers.sum //call the sum function on your input argument and set to new var meanSum
		return meanSum/numbers.length

3. write a function titled median

	function median(inputArray) // should take an array as input
	inputArray.sort //sort the input

	var half = Math.floor(inputArray.length/2) // create variable half that is == half the length of the array. Using .floor to ensure INT 

	if (inputArray.length modulus 2) // this returns true is the inputArray is odd b/c any number other than 0 eval's to true
		return inputArray[half] // because the array is odd the middle "half" value is the median
	else // the array is even
		return (inputArray[half-1] + inputArray[half]) divided by 2 // this returns the average of the to middle values










