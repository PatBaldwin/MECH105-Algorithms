# MECH105-Algorithms
These are the algorithms I created for MECH105 using different numerical methods this semsester.

## Binary Converter 
This algorithm takes a base10 input number and converts that into a string of binary equivelent to the input variable. 
### Inputs:
  base10 - A number in base10
### Outputs:
  base2 - The base10 number converted to binary

## False Position
This algorithm estimates a root of a given function to a specified relative accuracy unless too many iterations are required and will error out. This method requires two guesses that encaplsate the root. 
### Inputs:
  func - the function being evaluated
   - the lower guess
   - the upper guess
  es - the desired relative error (should default to 0.0001%)
  maxit - the maximum number of iterations to use (should default to 200)
  varargin, . . . - any additional parameters used by the function
### Outputs:
  root - the estimated root location
  fx - the function evaluated at the root location
  ea - the approximate relative error (%)
  iter - how many iterations were performed
 
## LU Factorization with Partial Pivoting 
This algorithm determines the L and U component of a square matrix. This requires a square matrix as an input. 
### Inputs:
  A - coefficient matrix
### Outputs:
  L - lower triangular matrix, with 1's along the diagonals
  U - upper triangular matrix
  P - the pivot matrix
 
 ## Simpson 1/3 
 This algorithm solves for the integration of a data set in array format. The independent variables must be equally spaced. If there are is an even number of data points, a single trap rule will be utilized. 
###  Inputs
  x = the vector of equally spaced independent variable
  y = the vector of function values with respect to x
### Outputs:
  I = the numerical integral calculated
