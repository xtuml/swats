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
--* File Name:               UDT_TD1_Create_New_Test_Data_Object_And_Link_It_Service.adb
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
--* Domain Name              : User_Defined_Types
--* Domain Key Letter        : UDT
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.UDT.TD;

-- List of relationships used
with UDT_rel_R1;
with UDT_rel_R1;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body UDT_TD1_Create_New_Test_Data_Object_And_Link_It_Service is
   
   procedure UDT_TD1_Create_New_Test_Data_Object_And_Link_It (
      New_Set              : in     Boolean;
      Previous_IH          : in     Root_Object.Object_Access;
      This_Test_Number     : in     Application_Types.Base_Integer_Type;
      Testing_For          : in     Application_Types.Base_Text_Type;
      Final_Entry          : in     Boolean;
      Returned_IH          :    out Root_Object.Object_Access;
      Returned_Test_Number :    out Application_Types.Base_Integer_Type) is
      
      local_Test_Data_IH : Root_Object.Object_Access;
      Local_Previous_IH  : Root_Object.Object_Access;
      
   begin
   -- start of TD1_Create_New_Test_Data_Object_And_Link_It
      
      if New_Set =  True then
         Returned_IH := Root_Object.UDT.TD.Create_Unique;
         Root_Object.UDT.TD.UDT_TD_Type(Returned_IH.all).The_Test_Number      := This_Test_Number;
         Root_Object.UDT.TD.UDT_TD_Type(Returned_IH.all).Testing_For_What     := Testing_For;
         
         Returned_Test_Number := This_Test_Number + 1;
      else
         
         --  Add new Test_Data object onto Previous_IH
         local_Test_Data_IH := Root_Object.UDT.TD.Create_Unique;
         Root_Object.UDT.TD.UDT_TD_Type(local_Test_Data_IH.all).The_Test_Number      := This_Test_Number;
         Root_Object.UDT.TD.UDT_TD_Type(local_Test_Data_IH.all).Testing_For_What     := Testing_For;
         
         UDT_Rel_R1.Link (
            A_Instance => Previous_IH,
            B_Role     => "Has_a",
            B_Instance => local_Test_Data_IH);
         
         
         if Final_Entry =  True then
            
            --  Final entry shall cause the return of the first set in the sequence.
            
            loop
               
               --  Bail out of the operation will return an undefined IH
               
               UDT_Rel_R1.Navigate (
                  From  => local_Test_Data_IH,
                  Role  => "Has_one",
                  To    => Local_Previous_IH);
               
               exit when Local_Previous_IH =  Null;
               
               UDT_Rel_R1.Navigate (
                  From  => local_Test_Data_IH,
                  Role  => "Has_one",
                  To    => local_Test_Data_IH);
               
            end loop;
            
         end if;
         
         Returned_IH          := local_Test_Data_IH;
         Returned_Test_Number := This_Test_Number + 1;
         
      end if;
      
      
   end UDT_TD1_Create_New_Test_Data_Object_And_Link_It;
   
end UDT_TD1_Create_New_Test_Data_Object_And_Link_It_Service;

--
-- End of file UDT_TD1_Create_New_Test_Data_Object_And_Link_It_Service.adb
--
