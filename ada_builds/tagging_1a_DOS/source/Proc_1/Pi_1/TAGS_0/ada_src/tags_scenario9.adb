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
--* File Name:               TAGS_Scenario9.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Perform_Glitch_Recovery_Tests
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
--* Domain Name              : Tagging
--* Domain Key Letter        : TAGS
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.TAGS.MSGR;
with Root_Object.TAGS.MGR;
with Root_Object.TAGS.SGR;
with Root_Object.TAGS.TD;

-- List of bridges used
with TAGS_RPT3_Test_Failed_Bridge;
with TAGS_RPT2_Test_Passed_Bridge;
with TAGS_RPT8_Specify_Requid_Bridge;
with TAGS_RPT1_Start_Test_Bridge;

-- List of domain types used
with TAGS_Domain_Types;
use type TAGS_Domain_Types.Environment_Type;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure TAGS_Scenario9 is
   
      
      My_Test                    : Root_Object.Object_Access;
      First_Object               : Root_Object.Object_Access;
      Second_Object              : Root_Object.Object_Access;
      Multi_First_Object         : Root_Object.Object_Access;
      Multi_Second_Object        : Root_Object.Object_Access;
      Multi_Third_Object         : Root_Object.Object_Access;
      Fourth_Object              : Root_Object.Object_Access;
      Fifth_Object               : Root_Object.Object_Access;
      Sixth_Object               : Root_Object.Object_Access;
      Reuse_First_Object         : Root_Object.Object_Access;
      Reuse_Second_Object        : Root_Object.Object_Access;
      Reuse_Third_Object         : Root_Object.Object_Access;
      Multi_Single_First_Object  : Root_Object.Object_Access;
      Multi_Single_Second_Object : Root_Object.Object_Access;
      
      Test_Real : Application_Types.Base_Float_Type := 1.0;
      
      The_Test_Number : Application_Types.Base_Integer_Type := 1;
      Failure_Code    : Application_Types.Base_Integer_Type := 1;
      Test_Integer    : Application_Types.Base_Integer_Type := 1;
      int_one         : Application_Types.Base_Integer_Type := 1;
      int_two         : Application_Types.Base_Integer_Type := 1;
      int_three       : Application_Types.Base_Integer_Type := 1;
      
      Test_Environment : TAGS_Domain_Types.Environment_Type     := TAGS_Domain_Types.Environment_Type_first;
      
      Test_Boolean : Boolean := Application_Types.Boolean_first;
      
   begin
      My_Test := Root_Object.TAGS.TD.Unconditional_Find_One;
      The_Test_Number  := Root_Object.TAGS.TD.TAGS_TD_type(My_Test.all).Number;
      Failure_Code     := 0;
      Test_Integer     := 55;
      Test_Boolean     := True;
      Test_Real        := 1234.56;
      Test_Environment := Root_Object.TAGS.TD.TAGS_TD_type(My_Test.all).Environment;
      
      
      -- --------------------------------------------------------------------------
      --  Test 1 - Glitch Recovery Object must be tagged either Singleton or 
      --           Multiplicity.
      --           If it isn't, the new object will not be created at the same
      --           memory location.
      -- --------------------------------------------------------------------------
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "1241-0000-01-0129               ",
         Invoking_Domain => "Glitch Recovery                 ",
         Invoking_Object => "Singleton                       ",
         Purpose         => "Recreate at same location       ");
      
      TAGS_RPT8_Specify_Requid_Bridge.TAGS_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0130               ");
      
      First_Object := Root_Object.TAGS.SGR.Create_Unique;
      Root_Object.TAGS.SGR.TAGS_SGR_Type(First_Object.all).An_Integer  := Test_Integer;
      Root_Object.TAGS.SGR.TAGS_SGR_Type(First_Object.all).A_Boolean   := Test_Boolean;
      Root_Object.TAGS.SGR.TAGS_SGR_Type(First_Object.all).A_Real      := Test_Real;
      Root_Object.TAGS.SGR.TAGS_SGR_Type(First_Object.all).Environment := Test_Environment;
      
      
      if First_Object =  Null then
         
         --  Test has fallen at the first hurdle
         
         Failure_Code := -1;
      else
         
         Root_Object.TAGS.SGR.Delete (
            Old_Instance => First_Object);
         
         if Test_Environment =  TAGS_Domain_Types.WACA then
            
            --  For Ada runs on host or Target, only create this object without
            --  specifying the attributes.
            Second_Object := Root_Object.TAGS.SGR.Create_Unique;
         else
            
            --  This is for a ISIM run, obviously it should always pass.
            Second_Object := Root_Object.TAGS.SGR.Create_Unique;
            Root_Object.TAGS.SGR.TAGS_SGR_Type(Second_Object.all).An_Integer  := Test_Integer;
            Root_Object.TAGS.SGR.TAGS_SGR_Type(Second_Object.all).A_Boolean   := Test_Boolean;
            Root_Object.TAGS.SGR.TAGS_SGR_Type(Second_Object.all).A_Real      := Test_Real;
            Root_Object.TAGS.SGR.TAGS_SGR_Type(Second_Object.all).Environment := Test_Environment;
            
         end if;
         
         
         if Root_Object.TAGS.SGR.TAGS_SGR_type(Second_Object.all).An_Integer =  Test_Integer then
            
            if Root_Object.TAGS.SGR.TAGS_SGR_type(Second_Object.all).A_Boolean =  Test_Boolean then
               
               if Root_Object.TAGS.SGR.TAGS_SGR_type(Second_Object.all).A_Real =  Test_Real then
                  
                  if Root_Object.TAGS.SGR.TAGS_SGR_type(Second_Object.all).Environment =  Test_Environment then
                     Failure_Code := 0;
                  else
                     Failure_Code := -2;
                  end if;
                  
               else
                  Failure_Code := -3;
               end if;
               
            else
               Failure_Code := -4;
            end if;
            
         else
            Failure_Code := -5;
            
         end if;
         
         
         Root_Object.TAGS.SGR.Delete (
            Old_Instance => Second_Object);
      end if;
      
      
      if Failure_Code =  0 then
         
         TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
            Test_Object_Domain => "Singleton glitch                ",
            Test_Number        => The_Test_Number,
            Test_Value         => Failure_Code);
         
      else
         TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
            Failed_Domain_Object => "Singleton glitch                ",
            Failed_Test_Number   => The_Test_Number,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      The_Test_Number := The_Test_Number + 1;
      
      
      --  End Test 1
      -- --------------------------------------------------------------------------
      --  Test 2
      -- --------------------------------------------------------------------------
      
      int_one   := 10;
      int_two   := 20;
      int_three := 30;
      
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "1241-0000-01-0129               ",
         Invoking_Domain => "Glitch Recovery                 ",
         Invoking_Object => "Multiplicity                    ",
         Purpose         => "Recreate different name at same ");
      
      TAGS_RPT8_Specify_Requid_Bridge.TAGS_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0130               ");
      
      
      --  Create three objects tagged MULTIPLICITY.
      Multi_First_Object := Root_Object.TAGS.MGR.Create_Unique;
      Root_Object.TAGS.MGR.TAGS_MGR_Type(Multi_First_Object.all).An_Integer := int_one;
      
      Multi_Second_Object := Root_Object.TAGS.MGR.Create_Unique;
      Root_Object.TAGS.MGR.TAGS_MGR_Type(Multi_Second_Object.all).An_Integer := int_two;
      
      Multi_Third_Object := Root_Object.TAGS.MGR.Create_Unique;
      Root_Object.TAGS.MGR.TAGS_MGR_Type(Multi_Third_Object.all).An_Integer := int_three;
      
      
      if Multi_First_Object =  Null then
         
         --  Test has fallen at the first hurdle
         
         Failure_Code := -1;
      else
         
         Root_Object.TAGS.MGR.Delete (
            Old_Instance => Multi_First_Object);
         
         Root_Object.TAGS.MGR.Delete (
            Old_Instance => Multi_Second_Object);
         
         Root_Object.TAGS.MGR.Delete (
            Old_Instance => Multi_Third_Object);
         
         --  This is an attempt to simulate what will happen when the system restarts and glitch recovery
         --  is invoked. Since a system restart can not be simulated here without an enourmous
         --  amount of buggering around, the created objects are deleted, and three more created in their
         --  place. Naming is not important at this stage, though, for completeness the same name could 
         --  be used. For the purposes of this test, a different set of names shall be used.
         
         if Test_Environment =  TAGS_Domain_Types.WACA then
            
            --  For Ada runs on host or Target, only create this object without
            --  specifying the attributes.
            Fourth_Object := Root_Object.TAGS.MGR.Create_Unique;
            Fifth_Object := Root_Object.TAGS.MGR.Create_Unique;
            Sixth_Object := Root_Object.TAGS.MGR.Create_Unique;
         else
            Fourth_Object := Root_Object.TAGS.MGR.Create_Unique;
            Root_Object.TAGS.MGR.TAGS_MGR_Type(Fourth_Object.all).An_Integer := int_one;
            
            Fifth_Object := Root_Object.TAGS.MGR.Create_Unique;
            Root_Object.TAGS.MGR.TAGS_MGR_Type(Fifth_Object.all).An_Integer := int_two;
            
            Sixth_Object := Root_Object.TAGS.MGR.Create_Unique;
            Root_Object.TAGS.MGR.TAGS_MGR_Type(Sixth_Object.all).An_Integer := int_three;
            
         end if;
         
         
         if Root_Object.TAGS.MGR.TAGS_MGR_type(Fourth_Object.all).An_Integer =  int_one then
            
            if Root_Object.TAGS.MGR.TAGS_MGR_type(Fifth_Object.all).An_Integer =  int_two then
               
               if Root_Object.TAGS.MGR.TAGS_MGR_type(Sixth_Object.all).An_Integer =  int_three then
                  Failure_Code := 0;
               else
                  Failure_Code := -2;
               end if;
               
            else
               Failure_Code := -3;
            end if;
            
         else
            Failure_Code := -4;
            
         end if;
         
         
         Root_Object.TAGS.MGR.Delete (
            Old_Instance => Fourth_Object);
         
         Root_Object.TAGS.MGR.Delete (
            Old_Instance => Fifth_Object);
         
         Root_Object.TAGS.MGR.Delete (
            Old_Instance => Sixth_Object);
      end if;
      
      
      if Failure_Code =  0 then
         
         TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
            Test_Object_Domain => "Multiplicity glitch             ",
            Test_Number        => The_Test_Number,
            Test_Value         => Failure_Code);
         
      else
         TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
            Failed_Domain_Object => "Multiplicity glitch             ",
            Failed_Test_Number   => The_Test_Number,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      The_Test_Number := The_Test_Number + 1;
      
      
      --  End Test 2
      -- --------------------------------------------------------------------------
      --  Test 3
      -- --------------------------------------------------------------------------
      
      int_one   := 10;
      int_two   := 20;
      int_three := 30;
      
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "1241-0000-01-0129               ",
         Invoking_Domain => "Glitch Recovery                 ",
         Invoking_Object => "Multiplicity                    ",
         Purpose         => "Recreate same name at same locat");
      
      TAGS_RPT8_Specify_Requid_Bridge.TAGS_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0130               ");
      
      
      --  Create three objects tagged MULTIPLICITY.
      Reuse_First_Object := Root_Object.TAGS.MGR.Create_Unique;
      Root_Object.TAGS.MGR.TAGS_MGR_Type(Reuse_First_Object.all).An_Integer := int_one;
      
      Reuse_Second_Object := Root_Object.TAGS.MGR.Create_Unique;
      Root_Object.TAGS.MGR.TAGS_MGR_Type(Reuse_Second_Object.all).An_Integer := int_two;
      
      Reuse_Third_Object := Root_Object.TAGS.MGR.Create_Unique;
      Root_Object.TAGS.MGR.TAGS_MGR_Type(Reuse_Third_Object.all).An_Integer := int_three;
      
      
      if Reuse_First_Object =  Null then
         
         --  Test has fallen at the first hurdle
         
         Failure_Code := -1;
      else
         
         Root_Object.TAGS.MGR.Delete (
            Old_Instance => Reuse_First_Object);
         
         Root_Object.TAGS.MGR.Delete (
            Old_Instance => Reuse_Second_Object);
         
         Root_Object.TAGS.MGR.Delete (
            Old_Instance => Reuse_Third_Object);
         
         --  Naming is not important at this stage, though, for completeness the same name could 
         --  be used. For the purposes of this test, the same set of names shall be used.
         
         if Test_Environment =  TAGS_Domain_Types.WACA then
            
            --  For Ada runs on host or Target, only create this object without
            --  specifying the attributes.
            Reuse_First_Object := Root_Object.TAGS.MGR.Create_Unique;
            Reuse_Second_Object := Root_Object.TAGS.MGR.Create_Unique;
            Reuse_Third_Object := Root_Object.TAGS.MGR.Create_Unique;
         else
            Reuse_First_Object := Root_Object.TAGS.MGR.Create_Unique;
            Root_Object.TAGS.MGR.TAGS_MGR_Type(Reuse_First_Object.all).An_Integer := int_one;
            
            Reuse_Second_Object := Root_Object.TAGS.MGR.Create_Unique;
            Root_Object.TAGS.MGR.TAGS_MGR_Type(Reuse_Second_Object.all).An_Integer := int_two;
            
            Reuse_Third_Object := Root_Object.TAGS.MGR.Create_Unique;
            Root_Object.TAGS.MGR.TAGS_MGR_Type(Reuse_Third_Object.all).An_Integer := int_three;
            
         end if;
         
         
         if Root_Object.TAGS.MGR.TAGS_MGR_type(Reuse_First_Object.all).An_Integer =  int_one then
            
            if Root_Object.TAGS.MGR.TAGS_MGR_type(Reuse_Second_Object.all).An_Integer =  int_two then
               
               if Root_Object.TAGS.MGR.TAGS_MGR_type(Reuse_Third_Object.all).An_Integer =  int_three then
                  Failure_Code := 0;
               else
                  Failure_Code := -2;
               end if;
               
            else
               Failure_Code := -3;
            end if;
            
         else
            Failure_Code := -4;
            
         end if;
         
         
         Root_Object.TAGS.MGR.Delete (
            Old_Instance => Reuse_First_Object);
         
         Root_Object.TAGS.MGR.Delete (
            Old_Instance => Reuse_Second_Object);
         
         Root_Object.TAGS.MGR.Delete (
            Old_Instance => Reuse_Third_Object);
      end if;
      
      
      if Failure_Code =  0 then
         
         TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
            Test_Object_Domain => "Multiplicity glitch             ",
            Test_Number        => The_Test_Number,
            Test_Value         => Failure_Code);
         
      else
         TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
            Failed_Domain_Object => "Multiplicity glitch             ",
            Failed_Test_Number   => The_Test_Number,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      The_Test_Number := The_Test_Number + 1;
      
      
      --  End Test 3
      -- --------------------------------------------------------------------------
      --  Test 4
      -- --------------------------------------------------------------------------
      
      int_one := 10;
      int_two := 20;
      
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => The_Test_Number,
         Requid          => "1241-0000-01-0129               ",
         Invoking_Domain => "Glitch Recovery                 ",
         Invoking_Object => "Multiplicity                    ",
         Purpose         => "Single multiplicity object      ");
      
      TAGS_RPT8_Specify_Requid_Bridge.TAGS_RPT8_Specify_Requid (
         Requid_Test_Number => The_Test_Number,
         The_Requid_Itself  => "1241-0000-01-0130               ");
      
      
      --  Create three objects tagged MULTIPLICITY.
      Multi_Single_First_Object := Root_Object.TAGS.MSGR.Create_Unique;
      Root_Object.TAGS.MSGR.TAGS_MSGR_Type(Multi_Single_First_Object.all).Attribute_One := int_one;
      Root_Object.TAGS.MSGR.TAGS_MSGR_Type(Multi_Single_First_Object.all).Attribute_Two := int_two;
      
      
      if Multi_Single_First_Object =  Null then
         
         --  Test has fallen at the first hurdle
         
         Failure_Code := -1;
      else
         
         Root_Object.TAGS.MSGR.Delete (
            Old_Instance => Multi_Single_First_Object);
         
         --  This is an attempt to simulate what will happen when the system restarts and glitch recovery
         --  is invoked. Since a system restart can not be simulated here without an enormous
         --  amount of buggering around, the created objects are deleted, and another created in its
         --  place. Naming is not important at this stage, though, for completeness the same name could 
         --  be used. For the purposes of this test, a different set of names shall be used.
         
         if Test_Environment =  TAGS_Domain_Types.WACA then
            
            --  For Ada runs on host or Target, only create this object without
            --  specifying the attributes.
            Multi_Single_Second_Object := Root_Object.TAGS.MSGR.Create_Unique;
         else
            Multi_Single_Second_Object := Root_Object.TAGS.MSGR.Create_Unique;
            Root_Object.TAGS.MSGR.TAGS_MSGR_Type(Multi_Single_Second_Object.all).Attribute_One := int_one;
            Root_Object.TAGS.MSGR.TAGS_MSGR_Type(Multi_Single_Second_Object.all).Attribute_Two := int_two;
            
         end if;
         
         
         if Root_Object.TAGS.MSGR.TAGS_MSGR_type(Multi_Single_Second_Object.all).Attribute_One =  int_one then
            
            if Root_Object.TAGS.MSGR.TAGS_MSGR_type(Multi_Single_Second_Object.all).Attribute_Two =  int_two then
               Failure_Code := 0;
            else
               Failure_Code := -2;
            end if;
            
         else
            Failure_Code := -3;
            
         end if;
         
         
         Root_Object.TAGS.MSGR.Delete (
            Old_Instance => Multi_Single_Second_Object);
      end if;
      
      
      if Failure_Code =  0 then
         
         TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
            Test_Object_Domain => "Multiplicity single glitch      ",
            Test_Number        => The_Test_Number,
            Test_Value         => Failure_Code);
         
      else
         TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
            Failed_Domain_Object => "Multiplicity single glitch      ",
            Failed_Test_Number   => The_Test_Number,
            Failed_Test_Value    => Failure_Code);
         
      end if;
      
      
      The_Test_Number := The_Test_Number + 1;
      
      
      --  End Test 4
      -- --------------------------------------------------------------------------
      
      Root_Object.TAGS.TD.TAGS_TD_type(My_Test.all).Number := The_Test_Number;
      
   end TAGS_Scenario9;
   
--
-- End of file TAGS_Scenario9.ada
--
