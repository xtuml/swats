--*************************************************************************************
--*                            UNCLASSIFIED                                           *
--*************************************************************************************
--*                            BAE SYSTEMS PROPRIETARY                                *
--*************************************************************************************
--*          Export Control Restrictions: NONE                                        *
--*************************************************************************************
--*                                                                                   *
--*               Copyright 2023 BAE Systems. All Rights Reserved.                    *
--*                                                                                   *
--*************************************************************************************
--*                                                                                   *
--* No contract-specific restrictions are in place for this code-generated file.      *
--*                                                                                   *
--*************************************************************************************
--*                                                                                   *
-- File Name:                amf.ads
-- Version:                  < as defined in ClearCase >
-- Creation Date:            22 December 1998
-- Last Modified Date:       01 March 2005
-- Description:              Package Specification for the Auxiliary Maths Functions
-- Comments:                 The prefix 'Amf_' (short for 'Auxiliary Maths Function')
--                           on procedure names is to avoid a clash with library
--                           function names and Ada reserved words.
with Interfaces;
use type Interfaces.Unsigned_32;
with Application_Types;

package AMF is
   
   -- @@MTH-01-0031
   -- Procedure to return the Sine of an angle.
   --
   -- The input angle x is a real value in degrees. The output is
   -- a real value in the range +/- 1.0.
    
   procedure Amf_Sin (X     : in     Application_Types.Base_Float_Type;
                      Sin_X :    out Application_Types.Base_Float_Type);


   -- @@MTH-01-0012
   -- Procedure to return the Sine of an angle.
   --
   -- The input angle x is a real value in radians. The output is
   -- a real value in the range +/- 1.0.
    
   procedure Amf_Sin_Rad (X     : in     Application_Types.Base_Float_Type;
                          Sin_X :    out Application_Types.Base_Float_Type);
    
    
   -- @@MTH-01-0013
   -- Procedure to return the Cosine of an angle.
   --
   -- The input angle x is a real value in degrees. The output is
   -- a real value in the range +/- 1.0.
    
   procedure Amf_Cos (X     : in     Application_Types.Base_Float_Type;
                      Cos_X :    out Application_Types.Base_Float_Type);
    
   -- @@MTH-01-0015
   -- Procedure to return the Tangent of an angle.
   --
   -- The input angle x is a real value in degrees. The output is
   -- a real value in the range +/- 10^4. The function is limited
   -- such that any output greater than 10^4 is limited to 10^4
   -- and any output less than -10^4 is limited to -10^4.
    
   procedure Amf_Tan (X     : in     Application_Types.Base_Float_Type;
                      Tan_X :    out Application_Types.Base_Float_Type);
    
    
   -- @@MTH-01-0016
   -- Procedure to return the Arcsine of a number.
   --
   -- The output is a real value in the range +/- 90.0 degrees.
   --
   -- Input values in the range >= 1.0 return a value of +90.0 degrees
   -- Input values in the range <= -1.0 return a value of -90.0 degrees
   -- Input values in the range +/- 1.0 return Asin(x)
    
   procedure Amf_Asin (X      : in     Application_Types.Base_Float_Type;
                       Asin_X :    out Application_Types.Base_Float_Type);
    
    
   -- @@MTH-01-0017
   -- Procedure to return the Arccosine of a number.
   --
   -- The output is a real value in the range 0.0 to +180.0 degrees.
   --
   -- Input values in the range >= 1.0 return a value of 0.0 degrees
   -- Input values in the range <= -1.0 return a value of +180.0 degrees
   -- Input values in the range +/- 1.0 return Acos(x)
    
   procedure Amf_Acos (X      : in     Application_Types.Base_Float_Type;
                       Acos_X :    out Application_Types.Base_Float_Type);
    
    
   -- @@MTH-01-0018
   -- Procedure to return the Arctangent of a number.
   --
   -- The input value x is a real value in the range +/- infinity
   -- (more precisely within 'max +ve' and 'max -ve' Float value).
   -- The output is a real value in the range +/- 90.0 degrees.
    
   procedure Amf_Atan (X      : in     Application_Types.Base_Float_Type;
                       Atan_X :    out Application_Types.Base_Float_Type);
    
    
   -- @@MTH-01-0019
   -- Procedure to return the Arctangent of a pair of x,y co-ordinates
   --
   -- The input values x,y are real values in the range +/- infinity
   -- (more precisely within 'max +ve' and 'max -ve' Float value).
   -- The output is a real value in the range +/- 180.0 degrees.
   --
   -- If x = 0.0 and y = 0.0, the return value = 0.0 degrees
   -- If x = 0.0 and y > 0.0, the return value = +90.0 degrees
   -- If x = 0.0 and y < 0.0, the return value = -90.0 degrees
   -- If x > 0.0, the return value = Atan(y/x)
   -- If x < 0.0 and y >= 0.0, the return value = Atan(y/x) + 180.0 degrees
   -- If x < 0.0 and y < 0.0,  the return value = Atan(y/x) - 180.0 degrees
    
   procedure Amf_Atan2 (Y       : in     Application_Types.Base_Float_Type;
                        X       : in     Application_Types.Base_Float_Type;
                        Atan_YX :    out Application_Types.Base_Float_Type);
    
    
   -- @@MTH-01-0021
   -- Procedure to return the Base 10 Logarithm of a number.
   --
   -- The output is a real value.
   --
   -- Input values in the range <= 10^-10 return a value of -10.0
   -- Input values in the range >  10^-10 return a value of Log10(x)
    
   procedure Amf_Log10 (X       : in     Application_Types.Base_Float_Type;
                        Log10_X :    out Application_Types.Base_Float_Type);
    
    
   -- @@MTH-01-0023
   -- Procedure to return the Square Root of a positive number.
   --
   -- The output is a real value.
   --
   -- Input values in the range <= 0.0 return a value of 0.0
   -- Input values in the range >  0.0 return a value of Sqrt(x)
    
   procedure Amf_Sqrt (X      : in     Application_Types.Base_Float_Type;
                       Sqrt_X :    out Application_Types.Base_Float_Type);
    
    
   -- @@MTH-01-0024/P
   -- Procedure to return the Absolute Value of a real number.
   --
   -- The input value x and output value are real values.
   --
   -- Input values in the range >= 0.0 return a value of +X
   -- Input values in the range <  0.0 return a value of -X
    
   procedure Amf_Abs_Of_Real (X     : in     Application_Types.Base_Float_Type;
                              Abs_X :    out Application_Types.Base_Float_Type);
    
    
   -- @@MTH-01-0025
   -- Procedure to return the Maximum Value of two numbers.
   --
   -- The input values and output value are real values.
    
   procedure Amf_Max (X1    : in     Application_Types.Base_Float_Type;
                      X2    : in     Application_Types.Base_Float_Type;
                      Max_X :    out Application_Types.Base_Float_Type);
    

   -- @@MTH-01-0037
   -- Procedure to return the Maximum Value of two integer numbers.
   --
   -- The input values and output value are integer values.
    
   procedure Amf_Max_Of_Integer (X1    : in     Application_Types.Base_Integer_Type;
                                 X2    : in     Application_Types.Base_Integer_Type;
                                 Max_X :    out Application_Types.Base_Integer_Type);
        
   -- @@MTH-01-0026
   -- Procedure to return the Minimum Value of two numbers.
   --
   -- The input values and output value are real values.
    
   procedure Amf_Min (X1    : in     Application_Types.Base_Float_Type;
                      X2    : in     Application_Types.Base_Float_Type;
                      Min_X :    out Application_Types.Base_Float_Type);
    
   -- @@MTH-01-0038
   -- Procedure to return the Minimum Value of two integer numbers.
   --
   -- The input values and output value are integer values.
    
   procedure Amf_Min_Of_Integer (X1    : in     Application_Types.Base_Integer_Type;
                                 X2    : in     Application_Types.Base_Integer_Type;
                                 Min_X :    out Application_Types.Base_Integer_Type);
                         
   -- @@MTH-01-0027/P
   -- Procedure to return the sign of an Integer number.
   --
   -- Input values in the range >= 0 return a value of +1
   -- Input values in the range <  0 return a value of -1
    
   procedure Amf_Sign_Of_Integer (X      : in     Application_Types.Base_Integer_Type;
                                  Sign_X :    out Application_Types.Base_Integer_Type);
    
    
   -- @@MTH-01-0027/P
   -- Procedure to return the sign of a Real number.
   --
   -- Input values in the range >= 0.0 return a value of +1.0
   -- Input values in the range <  0.0 return a value of -1.0
    
   procedure Amf_Sign_Of_Real (X      : in     Application_Types.Base_Float_Type;
                               Sign_X :    out Application_Types.Base_Float_Type);
    
    
   -- @@MTH-01-0028
   -- Procedure to return the truncated integer part of a real number.
   --
   -- The result is the input value with the decimal places removed.
   -- For example, 1.99 is truncated to 1.
    
   procedure Amf_Int (X     : in     Application_Types.Base_Float_Type;
                      Int_X :    out Application_Types.Base_Integer_Type);

   
   -- @@MTH-01-0029
   -- Procedure to return a number rounded to the nearest integer.
   --
   -- The result is rounded away from zero if the number is exactly
   -- halfway between two integers. For example, +0.5 is rounded to +1
   -- and -0.5 is rounded to -1.
    
   procedure Amf_Round (X       : in     Application_Types.Base_Float_Type;
                        Round_X :    out Application_Types.Base_Integer_Type);
    
    
   -- Procedure to return a number limited to upper and lower limits.
   --
   -- The input values and output value are real values.
   --
   -- X in the range >= Upper_Limit returns a value of Upper_Limit
   -- X in the range <= Lower_Limit returns a value of Lower_Limit
   -- X in the range > Lower_Limit and < Upper_Limit returns a value of X
    
   procedure Amf_Limit (X             : in     Application_Types.Base_Float_Type;
                        Upper_Limit   : in     Application_Types.Base_Float_Type;
                        Lower_Limit   : in     Application_Types.Base_Float_Type;
                        Limited_Value :    out Application_Types.Base_Float_Type);
    
    
   -- Procedure to convert an integer number to a real number.
    
   procedure Amf_Real (X      : in     Application_Types.Base_Integer_Type;
                       Real_X :    out Application_Types.Base_Float_Type);

   
   -- Procedure to bitwise 'AND' two numbers together.
   --
   -- Input values, X and Y, and the output value are all integers.
   --
   -- The result is X AND Y.
    
   procedure Amf_And (X       : in     Application_Types.Base_Integer_Type;
                      Y       : in     Application_Types.Base_Integer_Type;
                      X_And_Y :    out Application_Types.Base_Integer_Type);
    
    
   -- Procedure to bitwise 'OR' two numbers together.
   --
   -- Input values, X and Y, and the output value are all integers.
   --
   -- The result is X OR Y.
    
   procedure Amf_Or (X      : in     Application_Types.Base_Integer_Type;
                     Y      : in     Application_Types.Base_Integer_Type;
                     X_Or_Y :    out Application_Types.Base_Integer_Type);
    
    
   -- Procedure to bitwise 'NOT' (invert) a single number.
   --
   -- Input value, X, and the output value are both integers.
   --
   -- The result is NOT X (the 1's complement, each bit inverted).
    
   procedure Amf_Not (X     : in     Application_Types.Base_Integer_Type;
                      Not_X :    out Application_Types.Base_Integer_Type);
    
    
   -- Procedure to Bitwise Shift Left a number by a specified
   -- number of bit positions.
   --
   -- Input values, X and Y, and the output value are all integers.
   --
   -- Y must be >= 0.
   --
   -- The result is X Shifted Left by Y bits,
   -- with zeroes shifted into the bottom Y bits.
    
   procedure Amf_Shift_Left (X                : in     Application_Types.Base_Integer_Type;
                             Y                : in     Application_Types.Base_Integer_Type;
                             X_Left_Shifted_Y :    out Application_Types.Base_Integer_Type);
    
    
   -- Procedure to Bitwise Shift Right a number by a specified
   -- number of bit positions.
   --
   -- Input values, X and Y, and the output value are all integers.
   --
   -- Y must be >= 0.
   --
   -- The result is X Shifted Right by Y bits,
   -- with zeroes shifted into the top Y bits.
    
   procedure Amf_Shift_Right (X                 : in     Application_Types.Base_Integer_Type;
                              Y                 : in     Application_Types.Base_Integer_Type;
                              X_Right_Shifted_Y :    out Application_Types.Base_Integer_Type);
    
    
   -- @@MTH-01-0022
   -- Procedure to calculate the exponent of a number
   -- (the numeric constant 'e' (2.71828...) to the power X).
   --
   -- Input X is a real number
   -- Output Exp_X is a real value.

   procedure Amf_Exp (X     : in     Application_Types.Base_Float_Type;
                      Exp_X :    out Application_Types.Base_Float_Type);

          
   -- @@MTH-01-0024/P
   -- Procedure to return the Absolute Value of an integer number.
   --
   -- The input value x and output value are integer values.
   --
   -- Input values in the range >= 0 return a value of +X
   -- Input values in the range <  0 return a value of -X
    
   procedure Amf_Abs_Of_Integer (X     : in     Application_Types.Base_Integer_Type;
                                 Abs_X :    out Application_Types.Base_Integer_Type);
                                 
end AMF;



