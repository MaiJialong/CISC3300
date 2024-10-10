console.log("in_class_4.js loaded!");

const numbersArray = [1, 2, 3, 4, 5];

for (let i = 0; i < numbersArray.length; i++) {
    if (i % 2 === 0) {
        console.log(`${i} is even!`);
    } else {
        console.log(`${i} is odd!`);
    }
}
