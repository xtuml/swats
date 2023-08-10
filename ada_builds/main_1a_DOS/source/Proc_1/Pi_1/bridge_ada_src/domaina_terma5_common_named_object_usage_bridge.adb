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
--* File Name:               DomainA_termA5_Common_Named_Object_Usage_Bridge.adb
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
--*  Project Key Letter : Main_Build_Set
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
with Root_Object.DomainB.TD;
with Root_Object.DomainA.TD;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body DomainA_termA5_Common_Named_Object_Usage_Bridge is
   
   procedure DomainA_termA5_Common_Named_Object_Usage (
      Test_Number_Parameter   : in     Application_Types.Base_Integer_Type;
      This_Test_Has_Failed    :    out Boolean;
      This_Test_Failure_Value :    out Application_Types.Base_Integer_Type) is
      
      my_test            : Root_Object.Object_Access;
      Domain_B_Test_Data : Root_Object.Object_Access;
      
      Failure_Value                     : Application_Types.Base_Integer_Type := 1;
      This_View_Of_Domain_B_Test_Number : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of termA5_Common_Named_Object_Usage
      
      --  This test shall prove that an object in the other domain can be seen 
      --  and read from, even though an object with the same name and attributes 
      --  exists in this.
      --  Luckily, every domain in the test suite has a Test_Data object with an
      --  attribute known as This_Test_Number. So hijack it for the purposes of this test,
      --  being careful not to corrupt it for later tests!
      my_test := Root_Object.DomainA.TD.Unconditional_Find_One;
      Failure_Value := 0;
      Has_Failed    := False;
      
      --  Quick test to prove that the common local object in this domain can be seen, 
      --  and is accurate.
      
      if my_test =  Null then
         Failure_Value := -1;
         Has_Failed    := True;
      else
         
         if Test_Number_Parameter /= Root_Object.DomainA.TD.DomainA_TD_type(my_test.all).This_Test_Number then
            Failure_Value := Root_Object.DomainA.TD.DomainA_TD_type(my_test.all).This_Test_Number;
            Has_Failed    := True;
            
         else
            
            This_View_Of_Domain_B_Test_Number := 999;
            
--
-- DomainB start _____________________________________________v--DomainB--v_______________________________________________________start DomainB
            Domain_B_Test_Data := Root_Object.DomainB.TD.Unconditional_Find_One;
            
            if Domain_B_Test_Data /= Null then
               
               --  If the Test_Data object can not be seen from here or can be seen and is 
               --  something strange like 999, leave the default 
               --  domain version of the domainB test number at 999, thus the test will fail.
               
               Has_Failed    := False;
               Failure_Value := Root_Object.DomainB.TD.DomainB_TD_type(Domain_B_Test_Data.all).This_Test_Number;
            else
               Has_Failed    := True;
               Failure_Value := -2;
               
            end if;
            
-- DomainB end   _____________________________________________^--DomainB--^_______________________________________________________end   DomainB
--

         end if;
         
      end if;
      
      
      This_Test_Has_Failed := Has_Failed;
      This_Test_Failure_Value := Failure_Value;
      
      
   end DomainA_termA5_Common_Named_Object_Usage;
   
end DomainA_termA5_Common_Named_Object_Usage_Bridge;

--
-- End of file DomainA_termA5_Common_Named_Object_Usage_Bridge.adb
--
