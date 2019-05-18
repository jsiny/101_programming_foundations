To locate the documentation for `File::path` and `File#path`, I open Ruby Lang
to my current Ruby version :

[https://docs.ruby-lang.org/en/2.6.0](https://docs.ruby-lang.org/en/2.6.0)

Then, I type in the Search bar "File" and open the [dedicated page](https://docs.ruby-lang.org/en/2.6.0/File.html)

I then select the `::path` class method on the left, and the `#path` instance
method.

Those methods differ in two ways:

* How they're called:
  * `::path` is called directly onto the Class: `File.path`
  * `#path` is called onto an instance of that class: `File.new("testfile").path` 
* Their return values:
  * `::path` returns a string when `#path` returns a filename
  * `::path` returns the string representation of the path, while `#path` returns the pathname used to create file as a string


  