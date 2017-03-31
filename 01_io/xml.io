/*
1. Enhance the XML program to add spaces to show the indentation structure.

2. Enhance the XML program to handle attributes: if the first argument is a map (use the curly brackets syntax), add attributes to the XML program. For example:

    `book({"author": "Tate"}...)` would print `<book author="Tate">`
*/


Builder := Object clone do(
  indent := ""

  forward := method(
    name := call message name
    args := call message arguments

    writeln(indent, "<", name, ">")

    args foreach(arg,
      indent = indent .. "  "
      content := self doMessage(arg)
      if(content type == "Sequence", writeln(indent, content))
      indent = indent exclusiveSlice(2)
    )

    writeln(indent, "</", name, ">")
  )
)


Builder html(
  head(
    title("My Website")
  )
  body(
    h1("Welcome to my website"),
    div("content")
  )
)
