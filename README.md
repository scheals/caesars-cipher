
# Caesar's cipher

First small Ruby project from TOP that involved creating a method that lets you cipher your strings using a Caesar's cipher. You can use both right and left shifts and actually involves two methods, one of which is built around the built-in #succ method to fit the needs of the cipher.

Specification and instruction from [The Odin Project](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/caesar-cipher)


## Features
* You can use both right and left shifts
* Accepts weird shifts that are more than or equal to 26 OR those that are less than or equal to -26


## Reflections

[It was a very messy beginning to Ruby.](https://github.com/scheals/caesars-cipher/blob/d3b94507a405169f9ca4cefffb3f39c906acd8ae/caesars_cipher.rb) But thanks to Roli's improvements and binarygit's keen eye the code was dramatically trimmed down to what it is right now. What makes me very happy is that the logic of everything was in the correct place: changes to code suggested made it a lot clearer and neat. No more of those pesky #map of #map that I've come to use there. Since my solution was rather unorthodox compared to submitted so far it made me doubt whether I've done a good job following the spec - turns out, #succ is a gem that you just stumble upon if you forget about #ord...

Ruby is very potent with its built-in methods and the way it is written. The documentation is great and doesn't disappoint in what it has to tell you. Overall I can say this project taught me:
* The basics of Ruby, especially array and string manipulation
* That getting logic down is the most important, code improvements can come later
* Reading documentation - at first I wasn't a fan of how it is laid out but I've grown to like it and understand it
## Acknowledgements 
Roli, binarygit and Not_green from TOP Discord for feedback.
README layout from [Chargrilled Chook](https://github.com/ChargrilledChook)
