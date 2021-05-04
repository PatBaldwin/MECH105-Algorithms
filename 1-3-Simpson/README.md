# Simpson 1/3 
This algorithm solves for the integration of a data set in array format. The independent variables must be equally spaced. If there is not the same number of data points in the x and y arrays, then an error will occur. If there are is an even number of data points, a single trap rule will be utilized for the final segment of the data array and a warning message will appear. 
##  Inputs
  x = the vector of equally spaced independent variable
  y = the vector of function values with respect to x
## Outputs:
  I = the numerical integral calculated
