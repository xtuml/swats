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
-- File Name:                amf.adb
-- Version:                  < as defined in ClearCase >
-- Creation Date:            22 December 1998
-- Last Modified Date:       10 January 2003

with Application_Types;
   
with Ada.Numerics;
with Ada.Numerics.Generic_Elementary_Functions;


-- Instantiate Amf_Elementary_Functions package to provide trigonometric functions
-- with Base_Float_Type parameters.
package Amf_Elementary_Functions is 
   new Ada.Numerics.Generic_Elementary_Functions (Application_Types.Base_Float_Type); 
with Amf_Elementary_Functions;

package body AMF is

   use type Application_Types.Base_Float_Type;
   
   ---------------
   -- Constants --
   ---------------

   -- None

   ----------------------
   -- Type definitions --
   ----------------------

   -- None

   -----------------
   -- Global Data --
   -----------------

   -- None   
   
   --------------------------------------
   -- Private Functions and Procedures --
   --------------------------------------
   
   -- None

   -----------------------
   -- Public Procedures --
   -----------------------
    
   -- Procedure to return the Sine of an angle.
   --
   -- The input angle x is a real value in degrees. The output is
   -- a real value in the range +/- 1.0.
    
   procedure Amf_Sin (X     : in     Application_Types.Base_Float_Type;
                      Sin_X :    out Application_Types.Base_Float_Type) is
   begin
      Sin_X := Amf_Elementary_Functions.Sin (X, 360.0);
   end Amf_Sin;

   -- Procedure to return the Sine of an angle.
   --
   -- The input angle x is a real value in radians. The output is
   -- a real value in the range +/- 1.0.
    
   procedure Amf_Sin_Rad (X     : in     Application_Types.Base_Float_Type;
                          Sin_X :    out Application_Types.Base_Float_Type) is
   begin
      Sin_X := Amf_Elementary_Functions.Sin (X);
   end Amf_Sin_Rad;
    
    
   -- Procedure to return the Cosine of an angle.
   --
   -- The input angle x is a real value in degrees. The output is
   -- a real value in the range +/- 1.0.
    
   procedure Amf_Cos (X     : in     Application_Types.Base_Float_Type;
                      Cos_X :    out Application_Types.Base_Float_Type) is
   begin
      Cos_X := Amf_Elementary_Functions.Cos (X, 360.0);
   end Amf_Cos;
    
   -- Procedure to return the Tangent of an angle.
   --
   -- The input angle X is a real value in degrees. The output is
   -- a real value in the range +/- 10^4. The function is limited
   -- such that any output greater than 10^4 is limited to 10^4
   -- and any output less than -10^4 is limited to -10^4.
    
   procedure Amf_Tan (X     : in     Application_Types.Base_Float_Type;
                      Tan_X :    out Application_Types.Base_Float_Type) is
      Angle : Application_Types.Base_Float_Type := 0.0;
      use type Application_Types.Base_Float_Type;
      
   begin
      -- Copy angle into a read/writeable variable
      
      Angle := X;
      
      -- Ensure that the angle is in the range +/- 180.0 degrees
      -- so that the subsequent checks for angles around +/- 90.0
      -- operate correctly.
      
      while Angle >= 180.0 loop
         Angle := Angle - 360.0;
      end loop;
      
      while Angle < -180.0 loop
         Angle := Angle + 360.0;
      end loop;
      
      -- Trap angles near to +/- 90.0 degrees, which would otherwise
      -- cause an exception in the Tan function, due to near-infinite
      -- Tan values. The later trap for Tan(X) values greater than
      -- +/- 1.0E4 equates to a trap for angles closer than 0.0057 degrees.
      -- Hence, the choice of limits in this trap (+/- 0.001 degrees)
      -- is unimportant, as long as it is tighter than 0.0057 degrees.
      --
       if (Angle > 89.999) and then (Angle < 90.001) then
         if (Angle <= 90.0) then
            Tan_X := 1.0E4;
         else
            Tan_X := -1.0E4;
         end if;
      elsif (Angle < -89.999) and then (Angle > -90.001) then
         if (Angle >= -90.0) then
            Tan_X := -1.0E4;
         else
            Tan_X := 1.0E4;
         end if;
      else
         Tan_X := Amf_Elementary_Functions.Tan (Angle, 360.0);
         -- Limit output values to +/- 1.0E4
         Amf_Limit (Tan_X, 1.0E4, -1.0E4, Tan_X);
      end if;
      
   end Amf_Tan;
    
    
   -- Procedure to return the Arcsine of a number.
   --
   -- The output is a real value in the range +/- 90.0 degrees.
   --
   -- Input values in the range >= 1.0 return a value of +90.0 degrees
   -- Input values in the range <= -1.0 return a value of -90.0 degrees
   -- Input values in the range +/- 1.0 return Asin(x)
    
   procedure Amf_Asin (X      : in     Application_Types.Base_Float_Type;
                       Asin_X :    out Application_Types.Base_Float_Type) is
                          
   use type Application_Types.Base_Float_Type;
                          
   begin
      if X >= 1.0 then
         Asin_X := 90.0;
      elsif X <= -1.0 then
         Asin_X := -90.0;
      else
         Asin_X := Amf_Elementary_Functions.Arcsin (X, 360.0);
      end if;
   end Amf_Asin;
    
    
   -- Procedure to return the Arccosine of a number.
   --
   -- The output is a real value in the range 0.0 to +180.0 degrees.
   --
   -- Input values in the range >= 1.0 return a value of 0.0 degrees
   -- Input values in the range <= -1.0 return a value of +180.0 degrees
   -- Input values in the range +/- 1.0 return Acos(x)
    
   procedure Amf_Acos (X      : in     Application_Types.Base_Float_Type;
                       Acos_X :    out Application_Types.Base_Float_Type) is
                          
   use type Application_Types.Base_Float_Type;

   begin
      if X >= 1.0 then
         Acos_X := 0.0;
      elsif X <= -1.0 then
         Acos_X := 180.0;
      else
         Acos_X := Amf_Elementary_Functions.Arccos (X, 360.0);
      end if;
   end Amf_Acos;
    
    
   -- Procedure to return the Arctangent of a number.
   --
   -- The input value x is a real value in the range +/- infinity
   -- (more precisely within 'max +ve' and 'max -ve' Float value).
   --
   -- The output is a real value in the range +/- 90.0 degrees.
    
   procedure Amf_Atan (X      : in     Application_Types.Base_Float_Type;
                       Atan_X :    out Application_Types.Base_Float_Type) is
   begin
      Atan_X := Amf_Elementary_Functions.Arctan (X, 1.0, 360.0);
   end Amf_Atan;
    
    
   -- Procedure to return the Arctangent of a pair of x,y co-ordinates
   --
   -- The input values x,y are real values in the range +/- infinity
   -- (more precisely within 'max +ve' and 'max -ve' Float value).
   --
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
                        Atan_YX :    out Application_Types.Base_Float_Type) is
                           
     use type Application_Types.Base_Float_Type;
     Result : Application_Types.Base_Float_Type := 0.0;
      
   begin
      if X > 0.0 then
         Amf_Atan (Y / X, Result);
      elsif X < 0.0 then
         if Y >= 0.0 then
            Amf_Atan (Y / X, Result);
	         Result := Result + 180.0;
         else
            Amf_Atan (Y / X, Result);
            Result := Result - 180.0;
         end if;
      else    -- X = 0.0 then
         if Y > 0.0 then
            Result := 90.0;
         elsif Y < 0.0 then
            Result := -90.0;
         else   --  Y = 0.0 then
            Result := 0.0;
         end if;
      end if;
      Atan_YX := Result;
   end Amf_Atan2;
    
    
   -- Procedure to return the Base 10 Logarithm of a number.
   --
   -- The input should be a positive real value.
   -- The output is a real value.
   --
   -- Input values in the range <= 10^-10 return a value of -10.0
   -- Input values in the range >  10^-10 return a value of Log10(x)
    
   procedure Amf_Log10 (X       : in     Application_Types.Base_Float_Type;
                        Log10_X :    out Application_Types.Base_Float_Type) is
                           
   use type Application_Types.Base_Float_Type;
   
   begin
      if X <= 1.0E-10 then
         Log10_X := -10.0;
      else
         Log10_X := Amf_Elementary_Functions.Log (X, 10.0);
      end if;
   end Amf_Log10;
    
    
   -- Procedure to return the Square Root of a positive number.
   --
   -- The output is a real value.
   --
   -- Input values in the range <= 0.0 return a value of 0.0
   -- Input values in the range >  0.0 return a value of Sqrt(x)
    
   procedure Amf_Sqrt (X      : in     Application_Types.Base_Float_Type;
                       Sqrt_X :    out Application_Types.Base_Float_Type) is
   use type Application_Types.Base_Float_Type;

   begin
      if X <= 0.0 then
         Sqrt_X := 0.0;
      else
         Sqrt_X := Amf_Elementary_Functions.Sqrt (X);
      end if;
   end Amf_Sqrt;
    
    
   -- Procedure to return the Absolute Value of a real number.
   --
   -- The input value x and output value are real values.
   --
   -- Input values in the range >= 0.0 return a value of +X
   -- Input values in the range <  0.0 return a value of -X
    
   procedure Amf_Abs_Of_Real (X     : in     Application_Types.Base_Float_Type;
                              Abs_X :    out Application_Types.Base_Float_Type) is
   
   use type Application_Types.Base_Float_Type;

   begin
      Abs_X := abs X;
   end Amf_Abs_Of_Real;
    
    
   -- Procedure to return the Maximum Value of two numbers.
   --
   -- The input values and output value are real values.
    
   procedure Amf_Max (X1    : in     Application_Types.Base_Float_Type;
                      X2    : in     Application_Types.Base_Float_Type;
                      Max_X :    out Application_Types.Base_Float_Type) is
   
   use type Application_Types.Base_Float_Type;
                    
   begin
      
      Max_X := Application_Types.Base_Float_Type'Max (X1, X2);

   end Amf_Max;
   
   
   -- Procedure to return the Maximum Value of two integers.
   --
   -- The input values and output value are integer values.
    
   procedure Amf_Max_Of_Integer (X1    : in     Application_Types.Base_Integer_Type;
                                 X2    : in     Application_Types.Base_Integer_Type;
                                 Max_X :    out Application_Types.Base_Integer_Type) is
   
   use type Application_Types.Base_Integer_Type;
                    
   begin
      
      Max_X := Application_Types.Base_Integer_Type'Max (X1, X2);

   end Amf_Max_Of_Integer; 
    
   -- Procedure to return the Minimum Value of two numbers.
   --
   -- The input values and output value are real values.
    
   procedure Amf_Min (X1    : in     Application_Types.Base_Float_Type;
                      X2    : in     Application_Types.Base_Float_Type;
                      Min_X :    out Application_Types.Base_Float_Type) is
                         
   use type Application_Types.Base_Float_Type;

   begin
      
      Min_X := Application_Types.Base_Float_Type'Min (X1, X2);

   end Amf_Min;
    
   -- Procedure to return the Minimum Value of two integer numbers.
   --
   -- The input values and output value are integer values.
    
   procedure Amf_Min_Of_Integer (X1    : in     Application_Types.Base_Integer_Type;
                      X2    : in     Application_Types.Base_Integer_Type;
                      Min_X :    out Application_Types.Base_Integer_Type) is
                         
   use type Application_Types.Base_Integer_Type;

   begin
      
      Min_X := Application_Types.Base_Integer_Type'Min (X1, X2);

   end Amf_Min_Of_Integer;
       
   -- Procedure to return the sign of an Integer number.
   --
   -- Input values in the range >= 0 return a value of +1
   -- Input values in the range <  0 return a value of -1
    
   procedure Amf_Sign_Of_Integer (X      : in     Application_Types.Base_Integer_Type;
                                  Sign_X :    out Application_Types.Base_Integer_Type) is
  
   use type Application_Types.Base_Integer_Type;

   begin
      if X >= 0 then
          Sign_X := 1;
      else
         Sign_X := -1;
      end if;
   end Amf_Sign_Of_Integer;
    
    
   -- Procedure to return the sign of a Real number.
   --
   -- Input values in the range >= 0.0 return a value of +1.0
   -- Input values in the range <  0.0 return a value of -1.0
    
   procedure Amf_Sign_Of_Real (X      : in     Application_Types.Base_Float_Type;
                               Sign_X :    out Application_Types.Base_Float_Type) is
  
   use type Application_Types.Base_Float_Type;
                               
   begin
      if X >= 0.0 then
         Sign_X := 1.0;
      else
         Sign_X := -1.0;
      end if;
   end Amf_Sign_Of_Real;
    
    
   -- Procedure to return the truncated integer part of a real number.
   --
   -- The result is the input value with the decimal places removed.
   -- For example, 1.99 is truncated to 1.
    
   procedure Amf_Int (X     : in     Application_Types.Base_Float_Type;
                      Int_X :    out Application_Types.Base_Integer_Type) is
 
   use type Application_Types.Base_Float_Type;
   use type Application_Types.Base_Integer_Type;

   begin
   
      Int_X := Application_Types.Base_Integer_Type (Application_Types.Base_Float_Type'Truncation (X));

   end Amf_Int;

   
   -- Procedure to return a number rounded to the nearest integer.
   --
   -- If the number is halfway between two integers, the number is
   -- rounded away from zero. For example, 1.5 is rounded to 2 and
   -- -1.5 is rounded to -2.
    
   procedure Amf_Round (X       : in     Application_Types.Base_Float_Type;
                        Round_X :    out Application_Types.Base_Integer_Type) is
   
   use type Application_Types.Base_Float_Type;

   begin
      
      Round_X := Application_Types.Base_Integer_Type (Application_Types.Base_Float_Type'Rounding (X));

   end Amf_Round;

   
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
                        Limited_Value :    out Application_Types.Base_Float_Type) is
                     
   use type Application_Types.Base_Float_Type;

   begin
      if X >= Upper_Limit then
         Limited_Value := Upper_Limit;
      elsif X <= Lower_Limit then
         Limited_Value := Lower_Limit;
      else
         Limited_Value := X;
      end if;
   end Amf_Limit;

   
   -- Procedure to convert an integer number to a real number.
   -- Note: if constraint checking is turned on then this procedure
   -- will generate an exception for integer values outside the
   -- range of Base_Float_Type.
    
   procedure Amf_Real (X      : in     Application_Types.Base_Integer_Type;
                       Real_X :    out Application_Types.Base_Float_Type) is
                           
   use type Application_Types.Base_Integer_Type;

   begin
      Real_X := Application_Types.Base_Float_Type (X);
   end Amf_Real;

       
   -- Procedure to bitwise 'AND' two numbers together.
   --
   -- Input values, X and Y, and the output value are all integers.
   --
   -- The result is X AND Y.
    
   procedure Amf_And (X       : in     Application_Types.Base_Integer_Type;
                      Y       : in     Application_Types.Base_Integer_Type;
                      X_And_Y :    out Application_Types.Base_Integer_Type) is
   
   begin
      -- QAR TAYLE23
      --ADATEST IGNORE_ON  -b
      X_And_Y := Application_Types.Base_Integer_Type (Interfaces.Unsigned_32 (X) and 
                                                      Interfaces.Unsigned_32 (Y));
      --ADATEST IGNORE_OFF
   end Amf_And;
    
    
   -- Procedure to bitwise 'OR' two numbers together.
   --
   -- Input values, X and Y, and the output value are all integers.
   --
   -- The result is X OR Y.
    
   procedure Amf_Or (X      : in     Application_Types.Base_Integer_Type;
                     Y      : in     Application_Types.Base_Integer_Type;
                     X_Or_Y :    out Application_Types.Base_Integer_Type) is
   begin
      -- QAR TAYLE23
      --ADATEST IGNORE_ON  -b
      X_Or_Y := Application_Types.Base_Integer_Type (Interfaces.Unsigned_32 (X) or
                                                     Interfaces.Unsigned_32 (Y));
      --ADATEST IGNORE_OFF
   end Amf_Or;
    
    
   -- Procedure to bitwise 'NOT' (invert) a single number.
   --
   -- Input value, X, and the output value are both integers.
   --
   -- The result is NOT X (the 1's complement, each bit inverted).
    
   procedure Amf_Not (X     : in     Application_Types.Base_Integer_Type;
                      Not_X :    out Application_Types.Base_Integer_Type) is
   begin
      -- QAR TAYLE23
      --ADATEST IGNORE_ON  -b
      Not_X := Application_Types.Base_Integer_Type (not (Interfaces.Unsigned_32 (X)));
      --ADATEST IGNORE_OFF
   end Amf_Not;
    
    
   -- Procedure to Bitwise Shift Left a number by a specified
   -- number of bit positions.
   --
   -- Input values, X and Y, and the output value are all integers.
   --
   -- Y must be >= 0 and <= 32.
   --
   -- The result is X Shifted Left by Y bits,
   -- with zeroes shifted into the bottom Y bits.
    
   procedure Amf_Shift_Left (X                : in     Application_Types.Base_Integer_Type;
                             Y                : in     Application_Types.Base_Integer_Type;
                             X_Left_Shifted_Y :    out Application_Types.Base_Integer_Type) is
                                
   use type Application_Types.Base_Integer_Type;
   Y_local : Application_Types.Base_Integer_Type := Y;
   
   begin
      if Y_local < 0 then
         Y_local := 0;
      elsif Y_local > 32 then
         Y_local := 32;
      end if;
      X_Left_Shifted_Y := Application_Types.Base_Integer_Type
                          (Interfaces.Shift_Left (Interfaces.Unsigned_32 (X), Integer (Y_local)));
   end Amf_Shift_Left;
    
    
   -- Procedure to Bitwise Shift Right a number by a specified
   -- number of bit positions.
   --
   -- Input values, X and Y, and the output value are all integers.
   --
   -- Y must be >= 0 and <= 0.
   --
   -- The result is X Shifted Right by Y bits,
   -- with zeroes shifted into the top Y bits.
    
   procedure Amf_Shift_Right (X                 : in     Application_Types.Base_Integer_Type;
                              Y                 : in     Application_Types.Base_Integer_Type;
                              X_Right_Shifted_Y :    out Application_Types.Base_Integer_Type) is
                                 
   use type Application_Types.Base_Integer_Type;
   Y_local : Application_Types.Base_Integer_Type := Y;
   
   begin
      if Y_local < 0 then
         Y_local := 0;
      elsif Y_local > 32 then
         Y_local := 32;
      end if;
      X_Right_Shifted_Y := Application_Types.Base_Integer_Type
                           (Interfaces.Shift_Right (Interfaces.Unsigned_32 (X), Integer (Y_local)));
   end Amf_Shift_Right;
    
    
   -- Procedure to calculate the exponent of a number
   -- (the numeric constant 'e' (2.71828...) to the power X).
   --
   -- Output is limited to the exponent of input values in the range -88.0 to 88.0.
   --
   -- Input X is a real number
   -- Output Exp_X is a real value.

   procedure Amf_Exp (X     : in     Application_Types.Base_Float_Type;
                      Exp_X :    out Application_Types.Base_Float_Type) is
   
   use type Application_Types.Base_Float_Type;

   begin
      -- Most frequent passes through this procedure will satisfy the first condition
      -- however an additional comparison is required for the out of bounds values 
      -- of X with this sequence of comparison.
      if X < 88.0 and then X > -88.0 then
         Exp_X := Amf_Elementary_Functions.Exp (X);
      elsif X >= 88.0 then
         Exp_X := Amf_Elementary_Functions.Exp (88.0); 
      else   
         Exp_X := Amf_Elementary_Functions.Exp (-88.0);
      end if;
   end Amf_Exp;
      
   -- Procedure to return the Absolute Value of an integer number.
   --
   -- The input value x and output value are integer values.
   --
   -- Input value X returns |X| except for the case when the input value is
   -- of Base_Integer_Type'First which will return a value of Base_Integer_Type'Last.
   -- This is because the maximum negative value that can be represented by a
   -- variable of Base_Integer_Type is 1 greater than the maximum positive value.
    
   procedure Amf_Abs_Of_Integer (X     : in     Application_Types.Base_Integer_Type;
                                 Abs_X :    out Application_Types.Base_Integer_Type) is
   
   use type Application_Types.Base_Integer_Type;
   
   begin
      
      if X = Application_Types.Base_Integer_Type'First then
         Abs_X := Application_Types.Base_Integer_Type'Last;
      else
         Abs_X := abs X;
      end if;

   end Amf_Abs_Of_Integer;
    
    
end AMF;      
   
