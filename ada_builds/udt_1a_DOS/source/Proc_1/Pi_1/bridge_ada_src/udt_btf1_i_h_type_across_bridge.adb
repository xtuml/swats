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
--* File Name:               UDT_BTF1_I_H_Type_Across_Bridge.adb
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

-- List of objects used
with Root_Object.UDT.OIB;

-- List of domain types used
with UDT_Domain_Types;
use type UDT_Domain_Types.Simple_Enumeration_Type;
use type UDT_Domain_Types.Subset_1_Of_Integer;

with Application_Types;
use type Application_Types.Base_Integer_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body UDT_BTF1_I_H_Type_Across_Bridge is
   
   procedure UDT_BTF1_I_H_Type_Across (
      Param1_IH     : in     Root_Object.Object_Access;
      Success       :    out Boolean;
      Success_Value :    out Application_Types.Base_Integer_Type) is
      
      Local_Result : UDT_Domain_Types.Subset_1_Of_Integer        := UDT_Domain_Types.Subset_1_Of_Integer_first;
      
   begin
   -- start of BTF1_I_H_Type_Across
      
      --  Attempt to break the architecture by forcing a range error.
      --  This will only happen if the locally defined object inherits the 
      --  type from the assignment.
      --  Replacing the commented out line will force the 
      --  raising of a constraint error for WACA 5.0.0 onwards.
      Success       := False;
      Success_Value := -1;
      Local_Result  := Root_Object.UDT.OIB.UDT_OIB_type(Param1_IH.all).A_Number;
      
      
      --  Comment out post WACA 5.0.0
      --  Local_Result = Local_Result * Local_Result
      --  Still alive, then the test passed
      
      if Root_Object.UDT.OIB.UDT_OIB_type(Param1_IH.all).Some_Enumeration =  UDT_Domain_Types.Four then
         
         Success := True;
         
      else
         
         Success       := False;
      end if;
      
      Success_Value := Local_Result;
      
      
   end UDT_BTF1_I_H_Type_Across;
   
end UDT_BTF1_I_H_Type_Across_Bridge;

--
-- End of file UDT_BTF1_I_H_Type_Across_Bridge.adb
--
