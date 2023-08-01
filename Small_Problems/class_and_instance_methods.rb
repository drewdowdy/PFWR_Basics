File::path
https://ruby-doc.org/2.7.8/File.html#method-c-path
A class method that returns the string representation of the path

File#path
https://ruby-doc.org/2.7.8/File.html#method-i-path
An instance method that returns the pathname used to create file as a string.

A class method can be used directly on a class itself 
```ruby
File.path
```
An instance method needs a new instance of a class to be declared for it to be used.
```ruby
File.new.path
OR
x = File
File.path
```