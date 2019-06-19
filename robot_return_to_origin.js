function judgeCircle(moves) {
  let coordinates = [0, 0]

  for (i = 0; i < moves.length; i++) {
    if (moves[i] === "U") {
      coordinates[1] += 1
    }
    else if (moves[i] === "D") {
      coordinates[1] -= 1
    }
    else if (moves[i] === "L") {
      coordinates[0] -= 1
    }
    else if (moves[i] === "R") {
      coordinates[0] += 1
    };
  };

  console.log(coordinates === [0, 0])
  return coordinates === [0, 0]
}

let exampleOne = "UD"

console.log(judgeCircle(exampleOne))

// Output: true

let exampleTwo = "LL"

judgeCircle(exampleTwo)

// Output: false