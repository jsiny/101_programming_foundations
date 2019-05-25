# Walk-through: Rock, Paper, Scissors

## Things to consider

1. If I move the `display_results` method definition *above* the `prompt`
method, it sill works.

2. Invoking the `test_method` method right after the `prompt` method works.
However, it doesn't if the invokation is before the `prompt` method definition.

3. If the `display_results` method returned a string instead of outputting this
string directly, I would save this return value into a variable and use it
later in string interpolation.

4. In order to assuage Rubocop, we could use a case statement instead.