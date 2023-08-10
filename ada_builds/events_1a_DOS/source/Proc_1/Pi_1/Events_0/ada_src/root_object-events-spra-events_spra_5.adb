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
--* File Name:               Events_SprA_5.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Migrate the sub types.
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
--* Domain Name              : Events
--* Domain Key Letter        : Events
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Events.sbD;
with Root_Object.Events.sbA;
with Root_Object.Events.sbE;
with Root_Object.Events.sbF;
with Root_Object.Events.sbC;
with Root_Object.Events.sbB;

-- List of relationships used
with Events_rel_R6;
with Events_rel_R14;
with Events_rel_R13;

-- List of bridges used
with Events_RPT5_Test_Text_Bridge;
with Events_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.SprA)
   
   procedure Events_SprA_5 (Test          : in     Application_Types.Base_Integer_Type;
                            This_Instance : in out Root_Object.Object_Access) is
   
      
      OldSubB  : Root_Object.Object_Access;
      OldSubC  : Root_Object.Object_Access;
      newSubB  : Root_Object.Object_Access;
      newSubC  : Root_Object.Object_Access;
      Old_SubF : Root_Object.Object_Access;
      New_SubE : Root_Object.Object_Access;
      newSubA  : Root_Object.Object_Access;
      newSubD  : Root_Object.Object_Access;
      
   begin
      
      Events_RPT1_Start_Test_Bridge.Events_RPT1_Start_Test (
         Test_Number     => Test,
         Requid          => "Null Requid                     ",
         Invoking_Domain => "Events                          ",
         Invoking_Object => "SuperA                          ",
         Purpose         => "Multiple subtypes called        ");
      
      Events_RPT5_Test_Text_Bridge.Events_RPT5_Test_Text (
         Test_Number => Test,
         Free_Text   => "Super A Migrate state           ");
      
      
      -- OldSubB = find-one SubB where idA = Test
      
      Events_Rel_R13.Navigate (
         From  => This_Instance,
         Class => Root_Object.Events.sbB.Events_sbB_type'tag,
         To    => OldSubB);
      
      
      --  Unlink and remove any old instances of this sub type that are
      --  kicking around. They were only ever used in the scenario
      --  as faking a creation event into a Super type (such as this)
      --  requires associated subtypes to be defined and linked.
      --  Supertypes must have a subtype defined and linked.
      --  What we are doing here qualifies as Subtype Migration
      
      if OldSubB /= Null then
         
         Events_Rel_R13.Unlink (
            A_Instance => OldSubB,
            B_Instance => This_Instance);
         
      else
         
         Events_RPT5_Test_Text_Bridge.Events_RPT5_Test_Text (
            Test_Number => Test,
            Free_Text   => "Cannot find SubB                ");
         
      end if;
      
      
      -- OldSubC = find-one SubC where idA = Test
      
      Events_Rel_R14.Navigate (
         From  => This_Instance,
         Class => Root_Object.Events.sbC.Events_sbC_type'tag,
         To    => OldSubC);
      
      
      --  Unlink and remove any old instances of this sub type that are
      --  kicking around. They were only ever used in the scenario
      --  as faking a creation event into a Super type (such as this)
      --  requires associated subtypes to be defined and linked.
      
      if OldSubC /= Null then
         
         Events_Rel_R14.Unlink (
            A_Instance => OldSubC,
            B_Instance => This_Instance);
         
      else
         
         Events_RPT5_Test_Text_Bridge.Events_RPT5_Test_Text (
            Test_Number => Test,
            Free_Text   => "Cannot find SubC                ");
         
      end if;
      
      
      --  Test subtype migration to another instance of the same object
      
      if Root_Object.Events.SprA.Events_SprA_type(This_Instance.all).Reference_ID =  1 then
         
         -- Create an instance of the subtype, changing value to add attribute.
         
         newSubB := Root_Object.Events.sbB.Create;
         Root_Object.Events.sbB.Events_sbB_Type(newSubB.all).idA           := Root_Object.Events.SprA.Events_SprA_type(This_Instance.all).idA;
         Root_Object.Events.sbB.Events_sbB_Type(newSubB.all).Value_To_Add  := 10;
         Root_Object.Events.sbB.Events_sbB_Type(newSubB.all).Current_State := Root_Object.Events.sbB.Idle;
         
         
         -- Create an instance of the subtype
         
         newSubC := Root_Object.Events.sbC.Create;
         Root_Object.Events.sbC.Events_sbC_Type(newSubC.all).idA           := Root_Object.Events.SprA.Events_SprA_type(This_Instance.all).idA;
         Root_Object.Events.sbC.Events_sbC_Type(newSubC.all).Value_To_Add  := 11;
         Root_Object.Events.sbC.Events_sbC_Type(newSubC.all).Current_State := Root_Object.Events.sbC.Idle;
         
         Events_Rel_R13.Link (
            A_Instance => newSubB,
            B_Instance => This_Instance);
         
         Events_Rel_R14.Link (
            A_Instance => newSubC,
            B_Instance => This_Instance);
         
      end if;
      
      
      if Root_Object.Events.SprA.Events_SprA_type(This_Instance.all).Reference_ID =  2 then
         
         --    Old_SubF = find-one SubF where idA = Test
         --  Old SubF is linked, so navigate to it, just to prove we can, before
         --  unlinking it, and deleting it.
         
         Events_Rel_R6.Navigate (
            From  => This_Instance,
            Class => Root_Object.Events.sbF.Events_sbF_type'tag,
            To    => Old_SubF);
         
         
         --  Unlink and remove any old instances of this sub type that are
         --  kicking around. They were only ever used in the scenario
         --  as faking a creation event into a Super type (such as this)
         --  requires associated subtypes to be defined and linked.
         --  Supertypes must have a subtype defined and linked.
         --  What we are doing here qualifies as Subtype Migration
         
         if Old_SubF /= Null then
            
            Events_Rel_R6.Unlink (
               A_Instance => Old_SubF,
               B_Instance => This_Instance);
            
            
            Root_Object.Events.sbF.Delete (
               Old_Instance => Old_SubF);
            New_SubE := Root_Object.Events.sbE.Conditional_Find_One;
            while (New_SubE /= null) and then (not (Root_Object.Events.sbE.Events_sbE_Type(New_SubE.all).Value_To_Add =  0) ) loop
               
               New_SubE := New_SubE.Next_Object;
            end loop;
            
            
            if New_SubE /= Null then
               Events_Rel_R6.Link (
                  A_Instance => New_SubE,
                  B_Instance => This_Instance);
               
            else
               
               Events_RPT5_Test_Text_Bridge.Events_RPT5_Test_Text (
                  Test_Number => Test,
                  Free_Text   => "Cannot find SubE                ");
               
            end if;
            
         else
            Events_RPT5_Test_Text_Bridge.Events_RPT5_Test_Text (
               Test_Number => Test,
               Free_Text   => "Cannot find SubF                ");
            
         end if;
         
         
         -- Create an instance of the subtype, changing value to add attribute.
         
         newSubA := Root_Object.Events.sbA.Create;
         Root_Object.Events.sbA.Events_sbA_Type(newSubA.all).idA           := Root_Object.Events.SprA.Events_SprA_type(This_Instance.all).idA;
         Root_Object.Events.sbA.Events_sbA_Type(newSubA.all).Value_To_Add  := 2;
         Root_Object.Events.sbA.Events_sbA_Type(newSubA.all).Current_State := Root_Object.Events.sbA.Idle;
         
         
         -- Create an instance of the subtype
         
         newSubD := Root_Object.Events.sbD.Create;
         Root_Object.Events.sbD.Events_sbD_Type(newSubD.all).idA           := Root_Object.Events.SprA.Events_SprA_type(This_Instance.all).idA;
         Root_Object.Events.sbD.Events_sbD_Type(newSubD.all).Value_To_Add  := 3;
         Root_Object.Events.sbD.Events_sbD_Type(newSubD.all).Current_State := Root_Object.Events.sbD.Idle;
         
         
         --  Create the link to the other subtype in the family.
         Events_Rel_R13.Link (
            A_Instance => newSubA,
            B_Instance => This_Instance);
         
         Events_Rel_R14.Link (
            A_Instance => newSubD,
            B_Instance => This_Instance);
         
      end if;
      
      
      declare
         Pushed_Event : Root_Object.Root_Event_Access_Type;
      begin
         Pushed_Event := new
         Root_Object.Events.SprA.Events_SprA1'(Root_Object.Root_Event_Type with
            This_Event_Class => Root_Object.Events.SprA.SprA1,
            Target_Instance  => This_Instance,
            Test             => Test);
         
         Root_Object.Events.SprA.Push (
            Event  => Pushed_Event,
            To_Top => True);
      end;
      
      -- --------------------------------------------------------------------
      Root_Object.Events.SprA.Process_Queue;
   end Events_SprA_5;
   
--
-- End of file Events_SprA_5.ada
--
