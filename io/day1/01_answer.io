/*
Answer:
*/

// Evaluate 1 + 1 and then 1 + "one". Is Io strongly typed or weakly typed? Support your answer with code.
// Strongly typed

writeln(1 + 1)
//writeln(1 + "one") // it won't work

writeln("one" .. "two")
writeln(1 .. "one")
writeln("two" .. 2)

// Is 0 true or false? What about the empty string? Is nil true or false? Support your answer with code.

writeln(true and 0)   // 0 is true
writeln(true and "")  // "" is true
writeln(true and nil) // nil is false


// How can you tell what slots a prototype supports?
Pet := Object clone
Pet name := "Harper"
Pet color := "black"
writeln(Pet slotNames)


// What is the difference between = (equals), := (colon equals), and ::= (colon colon equals)? When would you use each one?
/*
`=`   - assign value to existing slot
`:=`  - initialize a slot and assign a value
`::=` - create a slot, create a setter, assign a value
*/

