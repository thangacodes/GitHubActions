const user = "David Moses";
console.log("Your good name is:" + user);
const readline = require('readline');  // Import readline module
// Create an interface for user input/output
const rl = readline.createInterface({
  input: process.stdin, 
  output: process.stdout
});

// Prompt the user for their name
rl.question("Please enter your name: ", function(USNAME) {
  console.log("Your good name is: " + USNAME);  
  rl.close(); 
});
