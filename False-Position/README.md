# False Position
This algorithm estimates a root of a given function to a specified relative accuracy unless too many iterations are required and will error out. This method requires two guesses that encaplsate the root and a function to be evaluated.
## Inputs:
  func - the function being evaluated
   - the lower guess
   - the upper guess
  es - the desired relative error (default is 0.0001%)
  maxit - the maximum number of iterations to use (default is 200)
  varargin, . . . - any additional parameters used by the function
## Outputs:
  root - the estimated root location
  fx - the function evaluated at the root location
  ea - the approximate relative error (%)
  iter - how many iterations were performed
