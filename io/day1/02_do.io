/*
Do:
+ Run an Io program from a file // you're doin' it, sucka!
+ Execute the code in a slot given its name.
*/

Pet := Object clone
Pet vocabulary := "bow wow oh wow oh boy oh wow oh wow"
Pet speak := method("\"#{vocabulary}\"" interpolate)

"this pet goes #{Pet speak}" interpolate println
