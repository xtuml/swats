--*************************************************************************************
--*                            UNCLASSIFIED                                           *
--*************************************************************************************
--*                            BAE SYSTEMS PROPRIETARY                                *
--*************************************************************************************
--*          Export Control Restrictions: NONE                                        *
--*************************************************************************************
--*                                                                                   *
--*               Copyright 2024 BAE Systems. All Rights Reserved.                    *
--*                                                                                   *
--*************************************************************************************
--*                                                                                   *
--* No contract-specific restrictions are in place for this code-generated file.      *
--*                                                                                   *
--*************************************************************************************
--*                                                                                   *
--* File Name:               TT_domain_types.ops.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Type-specific operations on Domain Data Types 
--* Comments:                Header written by header.macro                           *
--*                           
--*                                                                                   *
--*************************************************************************************
--*                            SUPPLEMENTAL INFORMATION                               *
--*                            ------------------------                               *
--*  OVERVIEW                                                                         *
--*  --------                                                                         *
--*  This archetype provides operations on the structure types provided within the domain. 
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
--*  Project Key Letter : TSV2
--*  Project Version    : 0
--*  Build Set          : 0
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
--*  package body TT_Domain_Types.Ops 
--*
--*************************************************************************************
--  MODIFICATION RECORD
--  --------------------
--    NAME    DATE            ECR No            MODIFICATION
--
--    jmm     03/10/00        PILOT_0000_0600   Changes for issue 3.0.0 in accordance with ATN_037_03_01.
--
--    db      04/07/01        PILOT_0000_0231   Rename package filename to match package definition.
--
--    db      29/08/01        PILOT_0000_0230   Coding Standards
--                                              Naming convention
--
--    db      07/02/02        SRLE100001626     Move checking for the empty set into
--                                              Initialise procedure.
--
--    db      15/03/02        SRLE100002863     Conditionally generate only if Structures 
--                                              exist in this domain.
--
--    db      12/04/02        SRLE100001553     Remove check on null input parameter in Extract function. If
--                                              we are extracting from an empty set, constraint_error.
--
--    db      01/07/02        SRLE100003353     Remove extra check in initialise.
--
--    ANF     04/07/06        001798 9SR056     Archetype language reformatted
--
-- **************************************************************************************

with Ada.Unchecked_Deallocation;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

package body TT_Domain_Types.Ops is
    
   procedure Append (
      A_array_element : in    Application_Types.Base_Integer_Type;
      To_Structure : in out integer_array) is
                       
   Temp_Structure: integer_array_Node_Access :=
      new integer_array_Node'(
         array_element  => A_array_element,
         Next_Structure     => null,
         Previous_Structure => null);
   begin
    
      if To_Structure.First_Entry = null then
         To_Structure.Last_Entry := Temp_Structure;
      else
         To_Structure.First_Entry.Previous_Structure := Temp_Structure;
         Temp_Structure.Next_Structure := To_Structure.First_Entry;
      end if;

      To_Structure.First_Entry := Temp_Structure;
      To_Structure.Number_Of_Entries := To_Structure.Number_Of_Entries + 1;

   end Append;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Extract (
      A_array_element :    out Application_Types.Base_Integer_Type ;
      From_Structure : in    integer_array) is
                            
   begin
      -- SRLE100001553
      -- Remove check on null input parameter, thus if the From_Structure is
      -- empty, an exception will be raised. We know that in order to get here, the structure
      -- has at least one entry in it. Any attempt to extract from an empty structure will 
      -- raise a constraint error exception. You have been warned.

      --
      -- set output parameter to be oldest entry (in time)
      --
      -- extract the parameters
      A_array_element := From_Structure.Iterator.all.array_element;
      From_Structure.Iterator.all := From_Structure.Iterator.all.Previous_Structure;

   end Extract;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Go_To_Start (Of_Structure : in integer_array) is
   begin
      if Of_Structure.Last_Entry /= null then
         Of_Structure.Iterator.all := Of_Structure.Last_Entry;
      end if;
   end Go_To_Start;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function Not_Empty (In_Structure : integer_array) return boolean is
   begin
      return Count_Of (In_Structure) /= 0;
   end Not_Empty;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function  Count_Of    (In_Structure : integer_array) return Application_Types.Base_Integer_Type is
      Temp_Count: Application_Types.Base_Integer_Type := 0;
   begin
      Temp_Count := In_Structure.Number_Of_Entries;
      return Temp_Count;
   end Count_Of;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Initialise (Object : in out integer_array) is

      Next:     integer_array_Node_Access;
      Old_Cell: integer_array_Node_Access;
     
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => integer_array_Node, 
         Name   => integer_array_Node_Access);
               
   begin

      if Not_Empty(Object) then

         -- SRLE100003353
         -- Belt and braces approach is no longer appropriate.
         -- First_Entry will always contain data if the structure count is non-zero.
         -- If it doesn't then the data structure has been corrupted somehow; there
         -- is no way back from that.
         -- if Object.First_Entry /= null then

            Next := Object.First_Entry;

            while Next /= null loop
               Old_Cell := Next;
               Next := Next.Next_Structure;
               Free (Old_Cell);
            end loop;

         -- end if;

         Object.Iterator.all := null;
         Object.First_Entry  := null;
         Object.Last_Entry   := null;
         Object.Number_Of_Entries := 0;

      end if;

   end Initialise;
--  --
--  -------------------------------------------------------------------------------------------
--  --
----------------------------------------------------------------------------------------------
end TT_Domain_Types.Ops;

