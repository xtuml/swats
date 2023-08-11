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
--* File Name:               UDT_BTF2_User_Defined_Types_Across_Bridge.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Not Defined
--* Comments:                Header written by ASL Translator
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
--*  -----------------                                                                *
--*                                                                                   *
--*  Project Key Letter : User_Defined_Types_Build_Set
--*  Project Version    : 0
--*  Build Set          : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of domain types used
with UDT_Domain_Types;
use type UDT_Domain_Types.Simple_Enumeration_Type;
use type UDT_Domain_Types.One_To_Maximum_Integer;
use type UDT_Domain_Types.Subset_Zero_Of_Integer;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body UDT_BTF2_User_Defined_Types_Across_Bridge is
   
   procedure UDT_BTF2_User_Defined_Types_Across (
      Param1         : in     UDT_Domain_Types.Subset_Zero_Of_Integer;
      Param2         : in     UDT_Domain_Types.Simple_Enumeration_Type;
      Success        :    out Boolean;
      Success_Value  :    out Application_Types.Base_Integer_Type;
      A_Return_Param :    out UDT_Domain_Types.One_To_Maximum_Integer) is
      
      Local_Result : UDT_Domain_Types.Subset_Zero_Of_Integer     := UDT_Domain_Types.Subset_Zero_Of_Integer_first;
      
   begin
   -- start of BTF2_User_Defined_Types_Across
      
      --  Attempt to break the architecture by forcing a range error.
      --  This will only happen if the locally defined object inherits the 
      --  type from the assignment
      Success       := False;
      Success_Value := -1;
      Local_Result  := Param1;
      
      
      --  Local_Result = Local_Result * Local_Result
      --  Still alive, then the test passed
      --  Copy the base type into the subtype.
      
      A_Return_Param := Local_Result;
      
      
      if Param2 =  UDT_Domain_Types.Four then
         
         Success := True;
         
      else
         
         Success       := False;
      end if;
      
      Success_Value := Local_Result;
      
      
   end UDT_BTF2_User_Defined_Types_Across;
   
end UDT_BTF2_User_Defined_Types_Across_Bridge;

--
-- End of file UDT_BTF2_User_Defined_Types_Across_Bridge.adb
--
