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
--* File Name:               Relationships5_Get_Instance_State_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Returns a message if the instance state is not as expected
--*                          
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
--* Domain Name              : Relationships
--* Domain Key Letter        : Relationships
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

with Ada.Text_IO;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Relationships_Relationships5_Get_Instance_State_Service is
   
   procedure Relationships_Relationships5_Get_Instance_State (
      Input_Instance_Value : in     Application_Types.Base_Integer_Type;
      Input_Expected_Value : in     Application_Types.Base_Integer_Type;
      Free_Text            : in     Application_Types.Base_Text_Type) is
      
      the_instance_value : Application_Types.Base_Integer_Type := 1;
      expected_value     : Application_Types.Base_Integer_Type := 1;
      
      instance_name : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
   -- start of Relationships5_Get_Instance_State
      the_instance_value := Input_Instance_Value;
      expected_value     := Input_Expected_Value;
      instance_name      := Free_Text;
      
      
      if the_instance_value /= expected_value then
         --
         -- start of Ada inline code insertion
                     
             Ada.Text_IO.New_Line(1);
             Ada.Text_IO.Put_Line("UNEXPECTED VALUE FOR INSTANCE " & instance_name);
             Ada.Text_IO.Put_Line("Expected " & integer'image(integer(expected_value)) & "Actual " & integer'image(integer(the_instance_value)));   
             Ada.Text_IO.New_Line(1);
            
            -- end of Ada inline code insertion
         --
         
      end if;
      
      
   end Relationships_Relationships5_Get_Instance_State;
   
end Relationships_Relationships5_Get_Instance_State_Service;

--
-- End of file Relationships_Relationships5_Get_Instance_State_Service.adb
--
