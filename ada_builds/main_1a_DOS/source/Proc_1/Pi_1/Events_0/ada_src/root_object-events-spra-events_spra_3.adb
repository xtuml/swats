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
--* File Name:               Events_SprA_3.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This state verifies the following:
--*                           
--*                           [1] Creation events are possible. - UNSUPPORTED
--*                           [2] Polymorphic events to multiple 
--*                               sub-type families are possible.
--*                           [3] Subtype Migration is possible.
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
with Root_Object.Events.sbC;
with Root_Object.Events.sbB;

-- List of relationships used
with Events_rel_R6;
with Events_rel_R14;
with Events_rel_R13;

-- List of bridges used
with Events_RPT3_Test_Failed_Bridge;
with Events_RPT2_Test_Passed_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.SprA)
   
   procedure Events_SprA_3 (Test          : in     Application_Types.Base_Integer_Type;
                            This_Instance : in out Root_Object.Object_Access) is
   
      
      an_instanceSubB : Root_Object.Object_Access;
      an_instanceSubC : Root_Object.Object_Access;
      an_instanceSubE : Root_Object.Object_Access;
      an_instanceSubA : Root_Object.Object_Access;
      an_instanceSubD : Root_Object.Object_Access;
      
      fault_value : Application_Types.Base_Integer_Type := 1;
      temp        : Application_Types.Base_Integer_Type := 1;
      
      fault_flag : Boolean := Application_Types.Boolean_first;
      tested     : Boolean := Application_Types.Boolean_first;
      has_failed : Boolean := Application_Types.Boolean_first;
      
   begin
      
      -- --------------------------------------------------------------------
      --  Verify tests
      -- --------------------------------------------------------------------
      --  Initialise the fault flag
      fault_flag  := False;
      tested      := False;
      fault_value := -5;
      
      
      -- --------------------------------------------------------------------
      
      if Root_Object.Events.SprA.Events_SprA_type(This_Instance.all).Reference_ID =  1 then
         
         tested := True;
         
         
         -- Find an instance of object SubB
         --    an_instanceSubB = find-one SubB where idA = Test
         
         Events_Rel_R13.Navigate (
            From  => This_Instance,
            Class => Root_Object.Events.sbB.Events_sbB_type'tag,
            To    => an_instanceSubB);
         
         
         -- Check that the instance was created
         
         if an_instanceSubB =  Null then
            
            fault_flag  := True;
            fault_value := -1;
         else
            
            -- Find an instance of object SubC
            --       an_instanceSubC = find-one SubC where idA = Test
            
            Events_Rel_R14.Navigate (
               From  => This_Instance,
               Class => Root_Object.Events.sbC.Events_sbC_type'tag,
               To    => an_instanceSubC);
            
            
            -- Check that the instance was created
            
            if an_instanceSubC =  Null then
               fault_flag  := True;
               fault_value := -2;
            else
               
               --          an_instanceSubE = find-one SubE where idA = Test
               
               Events_Rel_R6.Navigate (
                  From  => This_Instance,
                  Class => Root_Object.Events.sbE.Events_sbE_type'tag,
                  To    => an_instanceSubE);
               
               
               if an_instanceSubE =  Null then
                  fault_flag  := True;
                  fault_value := -3;
               else
                  
                  --  Check that the polymorphic events got delivered
                  
                  if Root_Object.Events.SprA.Events_SprA_type(This_Instance.all).ResultA /= 41 then
                     fault_flag  := True;
                     fault_value := Root_Object.Events.SprA.Events_SprA_type(This_Instance.all).ResultA;
                     
                  end if;
                  
               end if;
               
            end if;
            
         end if;
         
      end if;
      
      
      if Root_Object.Events.SprA.Events_SprA_type(This_Instance.all).Reference_ID =  2 then
         
         tested := True;
         
         
         -- Find an instance of object SubA
         --    an_instanceSubA = find-one SubA where idA = Test
         
         Events_Rel_R13.Navigate (
            From  => This_Instance,
            Class => Root_Object.Events.sbA.Events_sbA_type'tag,
            To    => an_instanceSubA);
         
         
         -- Check that the instance was created
         
         if an_instanceSubA =  Null then
            
            fault_flag  := True;
            fault_value := -1;
         else
            
            -- Find an instance of object SubD
            --       an_instanceSubD = find-one SubD where idA = Test
            
            Events_Rel_R14.Navigate (
               From  => This_Instance,
               Class => Root_Object.Events.sbD.Events_sbD_type'tag,
               To    => an_instanceSubD);
            
            
            -- Check that the instance was created
            
            if an_instanceSubD =  Null then
               fault_flag  := True;
               fault_value := -2;
            else
               
               --          an_instanceSubE = find-one SubF where idA = Test
               
               Events_Rel_R6.Navigate (
                  From  => This_Instance,
                  Class => Root_Object.Events.sbE.Events_sbE_type'tag,
                  To    => an_instanceSubE);
               
               
               if an_instanceSubE =  Null then
                  fault_flag  := True;
                  fault_value := -3;
               else
                  
                  --  Check that the polymorphic events got delivered
                  
                  if Root_Object.Events.SprA.Events_SprA_type(This_Instance.all).ResultA /= 25 then
                     fault_flag  := True;
                     fault_value := Root_Object.Events.SprA.Events_SprA_type(This_Instance.all).ResultA;
                     
                  end if;
                  
               end if;
               
            end if;
            
         end if;
         
      end if;
      
      
      -- --------------------------------------------------------------------
      -- Tests complete
      
      if fault_flag =  False and then
         tested     =  True then
         
         -- Indicate that the test was successful and complete
         
         temp := Root_Object.Events.SprA.Events_SprA_type(This_Instance.all).ResultA + 10;
         
         
         Root_Object.Events.SprA.Events_SprA_type(This_Instance.all).ResultA := temp;
         
         
         Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
            Test_Object_Domain => "SuperA                          ",
            Test_Number        => Test,
            Test_Value         => temp);
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.SprA.Events_SprA4'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.SprA.SprA4,
               Target_Instance  => This_Instance,
               Test             => Test);
            
            Root_Object.Events.SprA.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      else
         
         -- Indicate that the test failed
         
         Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
            Failed_Domain_Object => "SuperA                          ",
            Failed_Test_Number   => Test,
            Failed_Test_Value    => fault_value);
         
         
         has_failed := True;
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.SprA.Events_SprA3'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.SprA.SprA3,
               Target_Instance  => This_Instance);
            
            Root_Object.Events.SprA.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      end if;
      
      
      -- --------------------------------------------------------------------
      Root_Object.Events.SprA.Process_Queue;
   end Events_SprA_3;
   
--
-- End of file Events_SprA_3.ada
--
