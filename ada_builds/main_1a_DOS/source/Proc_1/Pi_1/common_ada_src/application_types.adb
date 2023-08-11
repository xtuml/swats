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
--* File Name:               application_types.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Specification of application-wide types used by all domains 
--* Comments:                Header written by header.macro                           *
--*                          New package body in response to QAR mannj01 
--*                                                                                   *
--*************************************************************************************
--*                            SUPPLEMENTAL INFORMATION                               *
--*                            ------------------------                               *
--*  OVERVIEW                                                                         *
--*  --------                                                                         *
--*
--*  ERROR HANDLING                                                                   *
--*  --------------                                                                   *
--*  None                                                                             *
--*                                                                                   *
--*  SAFETY         : None                                                            *
--*  ------                                                                           *
--*                                                                                   *
--*  BUILD INFORMATION                                                                *
--* -----------------                                                                 *
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--*                                                                                   *
--*  
--*  
--*  
--*  
--*  
--*************************************************************************************
--*  COMPONENTS CONTAINED WITHIN THIS FILE                                            *
--*  package body Application_Types 
--*      /
--*
--*************************************************************************************
--  MODIFICATION RECORD
--  --------------------
--     NAME     DATE             ECR No            MODIFICATION
--
--    jmm     10/05/00        9SR056 007667     Changes in Integer divide function to correct a drop off in
--                                              range checking
--
--    jmm     28/06/00        PILOT_0000_0423   Include diagnostic references.
--
--    db      08/08/01        PILOT_0000_1416   Make template sourced, and add Debug only code.
--
--    ANF     04/07/06        001798 9SR056     Archetype language reformatted
--
--    DNS     09/01/18        CR 10424 9SU050   Overloaded "+", "-", "*" and "**" added for Base_Float_Type
--                                              and Base_Integer_Type to guard against Overflow
--
-- **************************************************************************************
--
-- PILOT_0000_0423  Include diagnostic references.
--
--
with Exception_Handler;
with Ada.Strings.Unbounded;

package body Application_Types is
  --
  -- QAR beatd043 Integer divided by -1 was not correct
  -- Additional checks need to be provided
  --
  -- QAR mannj02
  -- Introduce divide functions to check explicitly for overflows
  --
  -- float divide needs to consider two conditions:
  -- 1) is simply divide by zero - this will raise one kind of FPU exception.
  -- 2) overflow caused by dividing by too small a value. This will raise another kind of FPU
  --    exception
  --
  -- Overflow can happen only when the denominator is between -1 and 1 (handily including the zero
  -- condition). Once a potential error condition has been found, signs need to be adjusted to check
  -- against the correct end stop. In theory, number ranges should be +/- the same value but this is
  -- not enforced and so the checks remain.
  --
  -- Some testing has been done on this point. Although the logic flow could be tweaked a bit,
  -- the major operations are sending the FP values off to the FPU stack and getting the responses
  -- back. In these cases, a few extra assembler checks/jumps are not significant.
  --
   Error_Message: Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.To_Unbounded_String("No additional information provided");
   Overflow_Error: exception;

   function "+" (A: Base_Float_Type; B: Base_Float_Type) return Base_Float_Type is

      result : Base_Float_Type;

   begin
      -- A conversion to float and back is required to avoid recursion
      result := Base_Float_Type(Float(A) + Float(B));

      -- Check result for +/-Inf since no overflow exception for Float
      if result > Base_Float_Type'last or else result < Base_Float_Type'first then
         
         raise Overflow_Error;
      else
         
         return result;
      end if;

   exception
      when E: others =>
         
         Error_Message := Ada.Strings.Unbounded.To_Unbounded_String("Overflow, Application_Types, Base_Float_Type, + ");
         Exception_Handler.output_exception_table_to_recorder(eventtext_rec => E,
                                                              bonus         => Error_Message);
         if A > 0.0 then
            -- An overflow can only have occurred > MAXINT
            return Base_Float_Type'Last;
         else
            -- An overflow can only have occurred < MININT
            return Base_Float_Type'First;
         end if;
         
   end "+";  -- for Base_Float_Type

  --
  ----------------------------------------------------------------------------------------------
  --

   function "-" (A: Base_Float_Type; B: Base_Float_Type) return Base_Float_Type is

      result : Base_Float_Type;

   begin
      -- A conversion to float and back is required to avoid recursion
      result := Base_Float_Type(Float(A) - Float(B));

      -- Check result for +/-Inf since no overflow exception for Float
      if result > Base_Float_Type'last or else result < Base_Float_Type'first then
         
         raise Overflow_Error;
      else
         
         return result;
      end if;

   exception
      when E: others =>
         
         Error_Message := Ada.Strings.Unbounded.To_Unbounded_String("Overflow, Application_Types, Base_Float_Type, - ");
         Exception_Handler.output_exception_table_to_recorder(eventtext_rec => E,
                                                              bonus         => Error_Message);
         if A > 0.0 then
            -- An overflow can only have occurred > MAXINT
            return Base_Float_Type'Last;
         else
            -- An overflow can only have occurred < MININT
            return Base_Float_Type'First;
         end if;
         
   end "-";  -- for Base_Float_Type

  --
  ----------------------------------------------------------------------------------------------
  --

   function "*" (A: Base_Float_Type; B: Base_Float_Type) return Base_Float_Type is

      result : Base_Float_Type;

   begin
      -- A conversion to float and back is required to avoid recursion
      result := Base_Float_Type(Float(A) * Float(B));

      -- Check result for +/-Inf since no overflow exception for Float
      if result > Base_Float_Type'last or else result < Base_Float_Type'first then
         
         raise Overflow_Error;
      else
         
         return result;
      end if;

   exception
      when E: others =>
         
         Error_Message := Ada.Strings.Unbounded.To_Unbounded_String("Overflow, Application_Types, Base_Float_Type, * ");
         Exception_Handler.output_exception_table_to_recorder(eventtext_rec => E,
                                                              bonus         => Error_Message);
         if (A > 0.0 and B > 0.0) or (A < 0.0 and B < 0.0) then
            -- An overflow can only have occurred > MAXINT
            return Base_Float_Type'Last;
         else
            -- An overflow can only have occurred < MININT
            return Base_Float_Type'First;
         end if;
         
   end "*";  -- for Base_Float_Type

  --
  ----------------------------------------------------------------------------------------------
  --

  function "/" (Numerator: Base_Float_Type; Denominator: Base_Float_Type) return Base_Float_Type is
    return_value: Base_Float_Type := 1.0;
  begin
    if Denominator > -1.0 and then Denominator < 1.0 then -- need further checks
      if Numerator > 0.0 then -- Numerator is positive
        if Denominator >= 0.0 then
          if Numerator > (Denominator * Base_Float_Type'last) then
            return_value := Base_Float_Type'last;
          else
            return_value := Base_Float_Type(float (Numerator)/float(Denominator));
          end if;
        else
          if -Numerator < (-Denominator * Base_Float_Type'first) then
            return_value := Base_Float_Type'first;
          else
            return_value := Base_Float_Type(float (Numerator)/float(Denominator));
          end if;
        end if; -- Numerator >= 0.0
      elsif Numerator < 0.0 then -- Numerator is negative
        if Denominator >= 0.0 then
          if Numerator < (Denominator * Base_Float_Type'first) then
            return_value := Base_Float_Type'first;
          else
            return_value := Base_Float_Type(float (Numerator)/float(Denominator));
          end if;
        else
          if -Numerator > (-Denominator * Base_Float_Type'last) then
            return_value := Base_Float_Type'last;
          else
            return_value := Base_Float_Type(float (Numerator)/float(Denominator));
          end if;
        end if; -- Denominator >= 0.0
      else -- Numerator = 0.0
        return_value := 0.0;
      end if; -- Numerator > 0.0

    else -- all is OK, carry on
      return_value := Base_Float_Type(float (Numerator)/float(Denominator));
    end if; -- Denominator > -1.0 and then Denominator < 1.0

    return return_value;

  end "/";    -- for Base_Float_Type

  --
  ----------------------------------------------------------------------------------------------
  --

   function "**" (A: Base_Float_Type; B: Integer) return Base_Float_Type is

      result : Base_Float_Type;

   begin
      -- A conversion to float and back is required to avoid recursion
      result := Base_Float_Type(Float(A) ** B);

      -- Check result for +/-Inf since no overflow exception for Float
      if result > Base_Float_Type'last or else result < Base_Float_Type'first then
         
         raise Overflow_Error;
      else
         
         return result;
      end if;
      
   exception
      when E: others =>
         
         Error_Message := Ada.Strings.Unbounded.To_Unbounded_String("Overflow, Application_Types, Base_Float_Type, * ");
         Exception_Handler.output_exception_table_to_recorder(eventtext_rec => E,
                                                              bonus         => Error_Message);
         if A > 0.0 then
            -- An overflow can only have occurred > MAXINT
            return Base_Float_Type'Last;
         else
            -- An overflow can only have occurred < MININT
            return Base_Float_Type'First;
         end if;
         
   end "**";  -- for Base_Float_Type

  --
  ----------------------------------------------------------------------------------------------
  --

   function "+" (A: Base_Integer_Type; B: Base_Integer_Type) return Base_Integer_Type is

   begin
      -- A conversion to integer and back is required to avoid recursion
      return Base_Integer_Type(Integer(A) + Integer(B));

   exception
      when E: others =>
         
         Error_Message := Ada.Strings.Unbounded.To_Unbounded_String("Overflow, Application_Types, Base_Integer_Type, + ");
         Exception_Handler.output_exception_table_to_recorder(eventtext_rec => E,
                                                              bonus         => Error_Message);
         if A > 0 then
            -- An overflow can only have occurred > MAXINT
            return Base_Integer_Type'Last;
         else
            -- An overflow can only have occurred < MININT
            return Base_Integer_Type'First;
         end if;
         
   end "+";  -- for Base_Integer_Type

  --
  ----------------------------------------------------------------------------------------------
  --

   function "-" (A: Base_Integer_Type; B: Base_Integer_Type) return Base_Integer_Type is

   begin
      -- A conversion to integer and back is required to avoid recursion
      return Base_Integer_Type(Integer(A) - Integer(B));

   exception
      when E: others =>
         
         Error_Message := Ada.Strings.Unbounded.To_Unbounded_String("Overflow, Application_Types, Base_Integer_Type, - ");
         Exception_Handler.output_exception_table_to_recorder(eventtext_rec => E,
                                                              bonus         => Error_Message);
         if A > 0 then
            -- An overflow can only have occurred > MAXINT
            return Base_Integer_Type'Last;
         else
            -- An overflow can only have occurred < MININT
            return Base_Integer_Type'First;
         end if;
         
   end "-";  -- for Base_Integer_Type

  --
  ----------------------------------------------------------------------------------------------
  --

   function "*" (A: Base_Integer_Type; B: Base_Integer_Type) return Base_Integer_Type is

   begin
      -- A conversion to integer and back is required to avoid recursion
      return Base_Integer_Type(Integer(A) * Integer(B));

   exception
      when E: others =>
         
         Error_Message := Ada.Strings.Unbounded.To_Unbounded_String("Overflow, Application_Types, Base_Integer_Type, * ");
         Exception_Handler.output_exception_table_to_recorder(eventtext_rec => E,
                                                              bonus         => Error_Message);
         if (A > 0 and B > 0) or (A < 0 and B < 0) then
            -- An overflow can only have occurred > MAXINT
            return Base_Integer_Type'Last;
         else
            -- An overflow can only have occurred < MININT
            return Base_Integer_Type'First;
         end if;
         
   end "*";  -- for Base_Integer_Type

  --
  ----------------------------------------------------------------------------------------------
  --

  function "/" (Numerator: Base_Integer_Type; Denominator: Base_Integer_Type) return Base_Integer_Type is
  --
  -- THIS VERSION OF Integer divide DOES need to consider overflow conditions because it currently
  -- uses the full Integer range which is assymetric and causes problems when dividing by -1.
  --
    return_value: Base_Integer_Type := 1;
  begin
    if Denominator <= 0 and then Denominator >= -1 then -- need further checks
      if Numerator > 0 then
        if Denominator = 0 then
          return_value := Base_Integer_Type'last;
        else -- Denominator = -1
          if float(Numerator) >= - float (Base_Integer_Type'first) then
            return_value := Base_Integer_Type'first;
          else
            return_value := Base_Integer_Type(Integer (Numerator)/Integer(Denominator));
          end if;
        end if; -- Numerator >= 0
      elsif Numerator < 0 then -- Numerator is negative
        if Denominator = 0 then
          return_value := Base_Integer_Type'first;
        else
          if float(Numerator) <= - float (Base_Integer_Type'last) then
            return_value := Base_Integer_Type'last;
          else
            return_value := Base_Integer_Type(Integer (Numerator)/Integer(Denominator));
          end if;
        end if;
      else -- Numerator is zero
        return_value := 0;
      end if; -- Numerator >= 0.0

    else -- all is OK, carry on
      return_value := Base_Integer_Type(Integer (Numerator)/Integer(Denominator));
    end if; -- Denominator > -1.0 and then Denominator < 1.0

    return return_value;

  end "/";  -- for Base_Integer_Type
  --
   -- Non Debug build
  --
  ----------------------------------------------------------------------------------------------
  --
end Application_Types;


