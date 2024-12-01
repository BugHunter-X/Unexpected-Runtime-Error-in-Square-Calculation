## Bug Description
This MATLAB code calculates the square of a given number. However, it encounters an unexpected runtime error under specific conditions, such as large input values or specific data types. This repository provides a minimal reproducible example of the bug and its solution. The files included are:

- `bug.m`: Contains the original code that produces the runtime error.
- `bugSolution.m`: Contains the corrected code that resolves the error and calculates the square correctly.  

## Steps to Reproduce
1. Save the code in `bug.m` to your MATLAB environment.
2. Run the script.
3. Observe the runtime error that occurs.

## Solution
The solution provided in `bugSolution.m` addresses the runtime error by implementing appropriate error handling or data type conversions to ensure that the square calculation is performed correctly for all valid inputs.

## Additional Notes
This bug demonstrates a common issue that can arise in numerical computations when dealing with large numbers or specific data types.  The provided solution offers a robust approach to handle such scenarios effectively.