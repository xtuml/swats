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
--* File Name:               RP5_Test_Text_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Free form description for a test
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
--* Domain Name              : Report
--* Domain Key Letter        : RP
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.RP.SC;
with Root_Object.RP.TD;
with Root_Object.RP.DD;

-- List of relationships used
with RP_rel_R9;
with RP_rel_R8;

-- List of services used
with RP_RP9_Test_Anomalous_Behaviour_Service;

with Ada.Text_IO;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body RP_RP5_Test_Text_Service is
   
   procedure RP_RP5_Test_Text (
      Domain_No        : in     Application_Types.Base_Integer_Type;
      Text_Test_Number : in     Application_Types.Base_Integer_Type;
      Free_Text        : in     Application_Types.Base_Text_Type) is
      
      Matching_Test_Details_Set : Root_Object.Object_List.List_Header_Access_Type := Root_Object.Object_List.Initialise;
      
      This_Domain            : Root_Object.Object_Access;
      The_Test               : Root_Object.Object_Access;
      The_Domain_Details     : Root_Object.Object_Access;
      The_Supporting_Comment : Root_Object.Object_Access;
      
      the_test_number : Application_Types.Base_Integer_Type := 1;
      
      the_text : Application_Types.Base_Text_Type := (others => ' ');
      
   begin
   -- start of RP5_Test_Text
      the_test_number := Text_Test_Number;
      the_text        := Free_Text;
      
      This_Domain := Root_Object.RP.DD.Conditional_Find_One;
      while (This_Domain /= null) and then (not (Root_Object.RP.DD.RP_DD_Type(This_Domain.all).Domain_Number =  Domain_No) ) loop
         
         This_Domain := This_Domain.Next_Object;
      end loop;
      
      --
      -- start of Ada inline code insertion
            
       -- Ada.Text_IO.New_Line(1);
       -- Ada.Text_IO.Put_Line("TEXT NOTE");
       -- Ada.Text_IO.Put_Line("Test Number "  & integer'image(integer(the_test_number)) );
       -- Ada.Text_IO.Put("  "  & the_text);
       -- Ada.Text_IO.New_Line(1);
      
      -- end of Ada inline code insertion
      --
      
      
      Root_Object.Object_List.Clear (
         From => Matching_Test_Details_Set);
      
      
      RP_Rel_R8.Navigate (
         From  => This_Domain,
         Class => Root_Object.RP.TD.RP_TD_type'tag,
         To    => Matching_Test_Details_Set);
      --
      -- start of for loop
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
         Temp_Entry : Root_Object.Object_List.Node_Access_Type;
      begin
         Temp_Entry := Root_Object.Object_List.First_Entry_Of (
            Target_List => Matching_Test_Details_Set);
         
         while (Temp_Entry /= null) loop
            The_Test := Temp_Entry.Item;
            exit when Root_Object.RP.TD.RP_TD_type(The_Test.all).The_Test_No =  Domain_No;
            
            Temp_Entry := Root_Object.Object_List.Next_Entry_Of (
               Target_List => Matching_Test_Details_Set);
            
         end loop; -- end of (Temp_Entry /= null) loop
         
      end;
      -- end of for loop
      --
      
      
      if The_Test /= Null then
         
         RP_Rel_R8.Navigate (
            From  => The_Test,
            Class => Root_Object.RP.DD.RP_DD_type'tag,
            To    => The_Domain_Details);
         
         
         if The_Domain_Details /= Null then
            
            The_Supporting_Comment := Root_Object.RP.SC.Create;
            Root_Object.RP.SC.RP_SC_Type(The_Supporting_Comment.all).Comment_ID       := Domain_No;
            Root_Object.RP.SC.RP_SC_Type(The_Supporting_Comment.all).The_Comment      := the_text;
            Root_Object.RP.SC.RP_SC_Type(The_Supporting_Comment.all).The_Test_No      := the_test_number;
            
            RP_Rel_R9.Link (
               A_Instance => The_Supporting_Comment,
               B_Instance => The_Domain_Details);
            
         else
            
            RP_RP9_Test_Anomalous_Behaviour_Service.RP_RP9_Test_Anomalous_Behaviour (
               Anomalous_Test_Number => Domain_No,
               Anomalous_Detail      => "Domain and Test unlinked        ");
            
         end if;
         
      else
         RP_RP9_Test_Anomalous_Behaviour_Service.RP_RP9_Test_Anomalous_Behaviour (
            Anomalous_Test_Number => Domain_No,
            Anomalous_Detail      => "Received a comment for unknown t");
         
      end if;
      
      
      -- list variables that require removing to reclaim memory space
      Root_Object.Object_List.Destroy_List (Matching_Test_Details_Set);
      
   end RP_RP5_Test_Text;
   
end RP_RP5_Test_Text_Service;

--
-- End of file RP_RP5_Test_Text_Service.adb
--
