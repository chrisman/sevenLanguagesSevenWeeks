// Write a prototype for a two-dimensional list. The dim(x, y) method should allocate a list of y lists that are x elements long. set(x, y, value) should set a value, and get(x, y) should return that value.
// Bonus: Write a transpose method so that (new_matrix get(y, x)) == matrix get(x, y) on the original list.

TwoDimList := Object clone do(
  init := method(
    self lists := List clone
  )

  dim := method(x, y,
    self lists setSize(y)
    self lists mapInPlace(v, v = List clone setSize(x))
    self
  )

  set := method(x, y, v, self lists at(y) atPut(x, v))

  get := method(x, y, self lists at(y) at(x))
)

myList := TwoDimList clone dim(2, 3)
myList set(0, 0, "zoobats")
myList set(0, 0, "a")
myList set(0, 1, "b")
myList set(0, 2, "c")
myList set(1, 0, "d")
myList set(1, 1, "e")
myList set(1, 2, "f")

myList get(1, 2) print; myList get(0, 0) print; myList get(0, 1) println // "fab"
