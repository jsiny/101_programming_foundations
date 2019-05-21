# Thoughts about the mortgage assignment

## Wording

Build a mortgage calculator.

You'll need three pieces of information:
- the loan amount
- the annual percentage rate (APR)
- the loan duration (in years)

From the above, you'll need to calculate the following two things:
- the monthly interest rate
- the loan duration in months

`m = p * ( j / (1 - (1+j)**(-n)))`

* m = monthly payment
* p = loan amount
* j = monthly intereste rate
* n = loan duration in months

inputs:
- the loan amount
  * positive integer
- the APR
  * should be stored as a decimal (3 % => 0.03)
  * should be converted into a monthly interest rate
- the loan duration
  * should be converted in the loan duration in months

outputs:
- the monthly interest rate
  * stored as a decimal (0.012)
- the loan duration in months
- the monthly loan payment
- (the total cost of the mortgage)

## Clarifications:

- What if the loan duration is 5 years and 3 months? Do I assume every loan
duration is in years only? => I'll assume it is in full years only
- Do I need to validate the inputs given (nature & non-null)? => I'll assume
I have to
- Can I assume that monthly interest rate = annual rate / 12 ? It's not true
but it's much simpler.

## Example:

- Loan amount = 150 000
- APR = 1,5 %
- Loan duration = 15 years
---------------------------
- Monthly interest rate = 0.125 %
- Loan duration = 180 months
- Monthly loan payment = 931.11
- Total cost = 17 600.62

## Algorithm:

- Prompts the user for a total loan amount, the APR and the loan duration,
and store them as three variables
- Computes the monthly interest rate by dividing by 12 the APR
- Computes the loan duration in months by multiplying the yearly duration by
12
- Computes the monthly payment through the formula
- Computes the total cost by substracting the total payments and the loan
amount
