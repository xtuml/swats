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
--* File Name:               Events_objVERPOL1_verify_polymorphic_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This function will verify the polymorphic event tests
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
with Root_Object.Events.objS;
with Root_Object.Events.objR;
with Root_Object.Events.objQ;
with Root_Object.Events.objP;
with Root_Object.Events.objK;
with Root_Object.Events.objJ;
with Root_Object.Events.objT;
with Root_Object.Events.objU;
with Root_Object.Events.objC;
with Root_Object.Events.objB;
with Root_Object.Events.objA;
with Root_Object.Events.objF;
with Root_Object.Events.objE;
with Root_Object.Events.objD;

-- List of relationships used
with Events_rel_R7;
with Events_rel_R8;
with Events_rel_R1;

-- List of bridges used
with Events_RPT2_Test_Passed_Bridge;
with Events_RPT3_Test_Failed_Bridge;
with Events_RPT5_Test_Text_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


package body Events_objVERPOL1_verify_polymorphic_Service is
   
   procedure Events_objVERPOL1_verify_polymorphic (
      Object         : in     Application_Types.Base_Text_Type;
      Test_Reference : in     Application_Types.Base_Integer_Type;
      Test_Number    : in     Application_Types.Base_Integer_Type) is
      
      super_instanceD : Root_Object.Object_Access;
      sub_instanceE   : Root_Object.Object_Access;
      sub_instanceF   : Root_Object.Object_Access;
      super_instanceA : Root_Object.Object_Access;
      sub_B_inst      : Root_Object.Object_Access;
      sub_C_inst      : Root_Object.Object_Access;
      subU            : Root_Object.Object_Access;
      superT          : Root_Object.Object_Access;
      sub_instanceJ   : Root_Object.Object_Access;
      sub_instanceK   : Root_Object.Object_Access;
      SuperinstanceP  : Root_Object.Object_Access;
      SubinstanceQ    : Root_Object.Object_Access;
      SubinstanceR    : Root_Object.Object_Access;
      SubinstanceS    : Root_Object.Object_Access;
      
      find_value : Application_Types.Base_Integer_Type := 1;
      
      Has_Failed : Boolean := Application_Types.Boolean_first;
      
   begin
   -- start of objVERPOL1_verify_polymorphic
      
      -- -------------------------------------------------------------------------
      --  Verify that the event was received
      -- -------------------------------------------------------------------------
      Has_Failed := False;
      
      -- -------------------------------------------------------------------------
      -- Test 1 - This test verifies that the event was received in the supertype 
      --          and then in the subtype object.
      -- -------------------------------------------------------------------------
      
      if Test_Reference =  1 then
         
         Events_RPT5_Test_Text_Bridge.Events_RPT5_Test_Text (
            Test_Number => Test_Number,
            Free_Text   => "Verify Poly                     ");
         
         super_instanceD := Root_Object.Events.objD.Conditional_Find_One;
         while (super_instanceD /= null) and then (not (Root_Object.Events.objD.Events_objD_Type(super_instanceD.all).ReferenceD =  Test_Reference) ) loop
            
            super_instanceD := super_instanceD.Next_Object;
         end loop;
         
         
         if super_instanceD =  Null then
            
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Object D                        ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA);
            
         else
            
            if Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA /= 9999 then
               
               Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                  Failed_Domain_Object => "Object D                        ",
                  Failed_Test_Number   => Test_Number,
                  Failed_Test_Value    => Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA);
               
            else
               Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                  Test_Object_Domain => "Object D                        ",
                  Test_Number        => Test_Number,
                  Test_Value         => Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA);
               
            end if;
            
         end if;
         
         sub_instanceE := Root_Object.Events.objE.Conditional_Find_One;
         while (sub_instanceE /= null) and then (not (Root_Object.Events.objE.Events_objE_Type(sub_instanceE.all).ReferenceE =  Test_Reference) ) loop
            
            sub_instanceE := sub_instanceE.Next_Object;
         end loop;
         
         
         if Root_Object.Events.objE.Events_objE_type(sub_instanceE.all).ResultA /= 999 then
            
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => Object,
               Failed_Test_Number   => Root_Object.Events.objE.Events_objE_type(sub_instanceE.all).Report_Test_No,
               Failed_Test_Value    => Root_Object.Events.objE.Events_objE_type(sub_instanceE.all).ResultA);
            
         else
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => Object,
               Test_Number        => Root_Object.Events.objE.Events_objE_type(sub_instanceE.all).Report_Test_No,
               Test_Value         => Root_Object.Events.objE.Events_objE_type(sub_instanceE.all).ResultA);
            
         end if;
         
      end if;
      
      
      --  End Test 1
      -- -------------------------------------------------------------------------
      --  Test 2 - This test verifies that the event was received in the subtype 
      --           but it is not passed onto the supertype.
      -- -------------------------------------------------------------------------
      
      if Test_Reference =  2 then
         
         Events_RPT5_Test_Text_Bridge.Events_RPT5_Test_Text (
            Test_Number => Test_Number,
            Free_Text   => "Verify Poly                     ");
         
         super_instanceD := Root_Object.Events.objD.Conditional_Find_One;
         while (super_instanceD /= null) and then (not (Root_Object.Events.objD.Events_objD_Type(super_instanceD.all).ReferenceD =  Test_Reference) ) loop
            
            super_instanceD := super_instanceD.Next_Object;
         end loop;
         
         
         if Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA /= 0 then
            
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Object D                        ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA);
            
            
            --    else
            --       [] = RPT2:Test_Passed["Object D",  Test_Number, super_instanceD.ResultA]
         end if;
         
         sub_instanceE := Root_Object.Events.objE.Conditional_Find_One;
         while (sub_instanceE /= null) and then (not (Root_Object.Events.objE.Events_objE_Type(sub_instanceE.all).ReferenceE =  2) ) loop
            
            sub_instanceE := sub_instanceE.Next_Object;
         end loop;
         
         
         if Root_Object.Events.objE.Events_objE_type(sub_instanceE.all).ResultA /= 20 then
            
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => Object,
               Failed_Test_Number   => Root_Object.Events.objE.Events_objE_type(sub_instanceE.all).Report_Test_No,
               Failed_Test_Value    => Root_Object.Events.objE.Events_objE_type(sub_instanceE.all).ResultA);
            
         else
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => Object,
               Test_Number        => Root_Object.Events.objE.Events_objE_type(sub_instanceE.all).Report_Test_No,
               Test_Value         => Root_Object.Events.objE.Events_objE_type(sub_instanceE.all).ResultA);
            
         end if;
         
      end if;
      
      
      --  End Test 2
      -- -------------------------------------------------------------------------
      --  Test 3 - This test verifies that the event was received in the supertype 
      --           but it is not received in the subtype since the relationship 
      --           has not been formalised.
      -- -------------------------------------------------------------------------
      --  This test is not valid as every supertype must have at least one
      --  subtype object linked to it. Or least that is the decision taken
      --  by the code-gen team. J. Mann, A Field & D Beatty 15 Dec 1999.
      
      if Test_Reference =  3 then
         super_instanceD := Root_Object.Events.objD.Conditional_Find_One;
         while (super_instanceD /= null) and then (not (Root_Object.Events.objD.Events_objD_Type(super_instanceD.all).ReferenceD =  Test_Reference) ) loop
            
            super_instanceD := super_instanceD.Next_Object;
         end loop;
         
         
         if Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA /= 30 then
            
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Object D                        ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA);
            
         else
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Object D                        ",
               Test_Number        => Test_Number,
               Test_Value         => Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA);
            
         end if;
         
         sub_instanceE := Root_Object.Events.objE.Conditional_Find_One;
         while (sub_instanceE /= null) and then (not (Root_Object.Events.objE.Events_objE_Type(sub_instanceE.all).ReferenceE =  3) ) loop
            
            sub_instanceE := sub_instanceE.Next_Object;
         end loop;
         
         
         if Root_Object.Events.objE.Events_objE_type(sub_instanceE.all).ResultA /= 30 then
            
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => Object,
               Failed_Test_Number   => Root_Object.Events.objE.Events_objE_type(sub_instanceE.all).Report_Test_No,
               Failed_Test_Value    => Root_Object.Events.objE.Events_objE_type(sub_instanceE.all).ResultA);
            
         else
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => Object,
               Test_Number        => Root_Object.Events.objE.Events_objE_type(sub_instanceE.all).Report_Test_No,
               Test_Value         => Root_Object.Events.objE.Events_objE_type(sub_instanceE.all).ResultA);
            
         end if;
         
      end if;
      
      
      --  End Test 3
      -- -------------------------------------------------------------------------
      --  Test 4 - This test verifies that the event was received in the supertype 
      --           but it was not received in the subtype since the subtype object 
      --           may not receive the event.
      -- -------------------------------------------------------------------------
      
      if Test_Reference =  4 then
         super_instanceD := Root_Object.Events.objD.Conditional_Find_One;
         while (super_instanceD /= null) and then (not (Root_Object.Events.objD.Events_objD_Type(super_instanceD.all).ReferenceD =  Test_Reference) ) loop
            
            super_instanceD := super_instanceD.Next_Object;
         end loop;
         
         sub_instanceE := Root_Object.Events.objE.Conditional_Find_One;
         while (sub_instanceE /= null) and then (not (Root_Object.Events.objE.Events_objE_Type(sub_instanceE.all).ReferenceE =  4) ) loop
            
            sub_instanceE := sub_instanceE.Next_Object;
         end loop;
         
         
         if Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA =  40 then
            
            if Root_Object.Events.objE.Events_objE_type(sub_instanceE.all).ResultA =  0 then
               
               Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                  Test_Object_Domain => "Object D                        ",
                  Test_Number        => Test_Number,
                  Test_Value         => Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA);
               
            else
               Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                  Failed_Domain_Object => Object,
                  Failed_Test_Number   => Root_Object.Events.objE.Events_objE_type(sub_instanceE.all).Report_Test_No,
                  Failed_Test_Value    => Root_Object.Events.objE.Events_objE_type(sub_instanceE.all).ResultA);
               
            end if;
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Object D                        ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA);
            
         end if;
         
      end if;
      
      
      --  End Test 4
      -- -------------------------------------------------------------------------
      --  Test 5 - 
      -- -------------------------------------------------------------------------
      
      if Test_Reference =  5 then
         super_instanceD := Root_Object.Events.objD.Conditional_Find_One;
         while (super_instanceD /= null) and then (not (Root_Object.Events.objD.Events_objD_Type(super_instanceD.all).ReferenceD =  Test_Reference) ) loop
            
            super_instanceD := super_instanceD.Next_Object;
         end loop;
         
         
         if super_instanceD =  Null then
            
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Object D                        ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA);
            
         else
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Object D                        ",
               Test_Number        => Test_Number,
               Test_Value         => Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA);
            
         end if;
         
         sub_instanceF := Root_Object.Events.objF.Conditional_Find_One;
         while (sub_instanceF /= null) and then (not (Root_Object.Events.objF.Events_objF_Type(sub_instanceF.all).ReferenceF =  Test_Reference) ) loop
            
            sub_instanceF := sub_instanceF.Next_Object;
         end loop;
         
         
         if Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).ResultA /= 10 then
            
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => Object,
               Failed_Test_Number   => Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).Report_Test_No,
               Failed_Test_Value    => Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).ResultA);
            
         else
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => Object,
               Test_Number        => Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).Report_Test_No,
               Test_Value         => Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).ResultA);
            
         end if;
         
      end if;
      
      
      --  End Test 5
      -- -------------------------------------------------------------------------
      --  Test 6 - This test verifies that the event was received in the subtype 
      --           but it is not passed onto the supertype.
      -- -------------------------------------------------------------------------
      
      if Test_Reference =  6 then
         super_instanceD := Root_Object.Events.objD.Conditional_Find_One;
         while (super_instanceD /= null) and then (not (Root_Object.Events.objD.Events_objD_Type(super_instanceD.all).ReferenceD =  Test_Reference) ) loop
            
            super_instanceD := super_instanceD.Next_Object;
         end loop;
         
         sub_instanceF := Root_Object.Events.objF.Conditional_Find_One;
         while (sub_instanceF /= null) and then (not (Root_Object.Events.objF.Events_objF_Type(sub_instanceF.all).ReferenceF =  Test_Reference) ) loop
            
            sub_instanceF := sub_instanceF.Next_Object;
         end loop;
         
         
         if Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA =  0 then
            
            if Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).ResultA /= 20 then
               
               Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                  Failed_Domain_Object => Object,
                  Failed_Test_Number   => Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).Report_Test_No,
                  Failed_Test_Value    => Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).ResultA);
               
            else
               Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                  Test_Object_Domain => Object,
                  Test_Number        => Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).Report_Test_No,
                  Test_Value         => Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).ResultA);
               
            end if;
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => Object,
               Failed_Test_Number   => Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).Report_Test_No,
               Failed_Test_Value    => Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA);
            
         end if;
         
      end if;
      
      
      --  End Test 6
      -- -------------------------------------------------------------------------
      --  Test 7 - This test verifies that the event was received in the supertype 
      --           but it is not received in the subtype since the relationship 
      --           has not been formalised.
      -- -------------------------------------------------------------------------
      --  The supertype MUST contain a subtype, otherwise the code-gen will 
      --  fail at run-time. This is a grey area. I-SIM allows solitary 
      --  supertypes although Shlaer-Mellor is ambiguous.
      
      if Test_Reference =  7 then
         super_instanceD := Root_Object.Events.objD.Conditional_Find_One;
         while (super_instanceD /= null) and then (not (Root_Object.Events.objD.Events_objD_Type(super_instanceD.all).ReferenceD =  Test_Reference) ) loop
            
            super_instanceD := super_instanceD.Next_Object;
         end loop;
         
         
         if Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA /= 30 then
            
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Object D                        ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA);
            
         else
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => "Object D                        ",
               Test_Number        => Test_Number,
               Test_Value         => Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA);
            
         end if;
         
         sub_instanceF := Root_Object.Events.objF.Conditional_Find_One;
         while (sub_instanceF /= null) and then (not (Root_Object.Events.objF.Events_objF_Type(sub_instanceF.all).ReferenceF =  Test_Reference) ) loop
            
            sub_instanceF := sub_instanceF.Next_Object;
         end loop;
         
         
         if Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).ResultA /= 30 then
            
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => Object,
               Failed_Test_Number   => Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).Report_Test_No,
               Failed_Test_Value    => Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).ResultA);
            
         else
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => Object,
               Test_Number        => Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).Report_Test_No,
               Test_Value         => Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).ResultA);
            
         end if;
         
      end if;
      
      
      --  End Test 7
      -- -------------------------------------------------------------------------
      --  Test 8 - This test verifies that the event was received in the supertype 
      --           but it was not received in the subtype since the subtype object 
      --           may not receive the event.
      -- -------------------------------------------------------------------------
      
      if Test_Reference =  8 then
         super_instanceD := Root_Object.Events.objD.Conditional_Find_One;
         while (super_instanceD /= null) and then (not (Root_Object.Events.objD.Events_objD_Type(super_instanceD.all).ReferenceD =  Test_Reference) ) loop
            
            super_instanceD := super_instanceD.Next_Object;
         end loop;
         
         sub_instanceF := Root_Object.Events.objF.Conditional_Find_One;
         while (sub_instanceF /= null) and then (not (Root_Object.Events.objF.Events_objF_Type(sub_instanceF.all).ReferenceF =  Test_Reference) ) loop
            
            sub_instanceF := sub_instanceF.Next_Object;
         end loop;
         
         
         if Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA =  40 then
            
            if Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).ResultA /= 0 then
               
               Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                  Failed_Domain_Object => "Object D                        ",
                  Failed_Test_Number   => Test_Number,
                  Failed_Test_Value    => Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).ResultA);
               
            else
               Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                  Test_Object_Domain => "Object D                        ",
                  Test_Number        => Test_Number,
                  Test_Value         => Root_Object.Events.objF.Events_objF_type(sub_instanceF.all).ResultA);
               
            end if;
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Object D                        ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => Root_Object.Events.objD.Events_objD_type(super_instanceD.all).ResultA);
            
         end if;
         
      end if;
      
      
      --  End Test 8
      -- -------------------------------------------------------------------------
      --  Test 9 - This test verifies that if only the supertype object contains a 
      --           state machine then the polymorphic event does not get passed 
      --           onto the subtype object
      -- -------------------------------------------------------------------------
      --  Reinstated for issue 2.0.2
      --  Test ref 9 is a throwback, remove it later.
      
      if Test_Reference =  9 then
         
         --    if Test_Reference = 13 then
         --  UNSUPPORTED TEST
         super_instanceA := Root_Object.Events.objA.Conditional_Find_One;
         while (super_instanceA /= null) and then (not (Root_Object.Events.objA.Events_objA_Type(super_instanceA.all).ReferenceA =  Test_Reference) ) loop
            
            super_instanceA := super_instanceA.Next_Object;
         end loop;
         
         
         --  Prove that navigation for super active object to sub passive objects
         
         Events_Rel_R1.Navigate (
            From  => super_instanceA,
            Class => Root_Object.Events.objB.Events_objB_type'tag,
            To    => sub_B_inst);
         
         
         if Root_Object.Events.objA.Events_objA_type(super_instanceA.all).ResultA =  50 then
            
            if Root_Object.Events.objB.Events_objB_type(sub_B_inst.all).ResultB /= 0 then
               
               Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                  Failed_Domain_Object => Object,
                  Failed_Test_Number   => Test_Number,
                  Failed_Test_Value    => Root_Object.Events.objB.Events_objB_type(sub_B_inst.all).ResultB);
               
            else
               Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                  Test_Object_Domain => Object,
                  Test_Number        => Test_Number,
                  Test_Value         => Root_Object.Events.objB.Events_objB_type(sub_B_inst.all).ResultB);
               
            end if;
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => Object,
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => Root_Object.Events.objA.Events_objA_type(super_instanceA.all).ResultA);
            
         end if;
         
      end if;
      
      
      --  End Test 9
      -- -------------------------------------------------------------------------
      --  Test 10 - This test verifies that if only the supertype object contains 
      --            a state machine then the polymorphic event does not get passed 
      --            onto the subtype object
      -- -------------------------------------------------------------------------
      --  Reinstated for issue 2.0.2
      
      if Test_Reference =  10 then
         
         --    if Test_Reference = 14 then
         --  UNSUPPORTED TEST
         super_instanceA := Root_Object.Events.objA.Conditional_Find_One;
         while (super_instanceA /= null) and then (not (Root_Object.Events.objA.Events_objA_Type(super_instanceA.all).ReferenceA =  Test_Reference) ) loop
            
            super_instanceA := super_instanceA.Next_Object;
         end loop;
         
         
         --  Prove that navigation for super active object to sub passive objects
         
         Events_Rel_R1.Navigate (
            From  => super_instanceA,
            Class => Root_Object.Events.objC.Events_objC_type'tag,
            To    => sub_C_inst);
         
         
         if Root_Object.Events.objA.Events_objA_type(super_instanceA.all).ResultA =  50 then
            
            if Root_Object.Events.objC.Events_objC_type(sub_C_inst.all).ResultC /= 0 then
               
               Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                  Failed_Domain_Object => Object,
                  Failed_Test_Number   => Test_Number,
                  Failed_Test_Value    => Root_Object.Events.objC.Events_objC_type(sub_C_inst.all).ResultC);
               
            else
               Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                  Test_Object_Domain => Object,
                  Test_Number        => Test_Number,
                  Test_Value         => Root_Object.Events.objC.Events_objC_type(sub_C_inst.all).ResultC);
               
            end if;
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => Object,
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => Root_Object.Events.objA.Events_objA_type(super_instanceA.all).ResultA);
            
         end if;
         
      end if;
      
      
      --  End Test 10
      -- -------------------------------------------------------------------------
      --  Proof that an event from an empty supertype is delivered to the subtype
      --  containing a state machine is polymorphically delivered.
      
      if Test_Reference =  11 or else
         Test_Reference =  12 then
         
         -- if Test_Number = 15 or Test_Number = 16 then
         --   No referential attributes read from here, thankyou very much.
         subU := Root_Object.Events.objU.Conditional_Find_One;
         while (subU /= null) and then (not (Root_Object.Events.objU.Events_objU_Type(subU.all).latest_test =  Test_Number) ) loop
            
            subU := subU.Next_Object;
         end loop;
         
         
         Events_Rel_R8.Navigate (
            From  => subU,
            Class => Root_Object.Events.objT.Events_objT_type'tag,
            To    => superT);
         
         
         if Root_Object.Events.objU.Events_objU_type(subU.all).Result_U      =  555 and then
            Root_Object.Events.objT.Events_objT_type(superT.all).Reference_T =  Test_Reference then
            
            Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
               Test_Object_Domain => Object,
               Test_Number        => Test_Number,
               Test_Value         => Root_Object.Events.objU.Events_objU_type(subU.all).Result_U);
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => Object,
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => Root_Object.Events.objU.Events_objU_type(subU.all).Result_U);
            
         end if;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 17 - This test verifies nested supertype/subtype relationships.
      -- -------------------------------------------------------------------------
      
      if Test_Reference =  17 then
         sub_instanceJ := Root_Object.Events.objJ.Conditional_Find_One;
         while (sub_instanceJ /= null) and then (not (Root_Object.Events.objJ.Events_objJ_Type(sub_instanceJ.all).ReferenceJ =  Test_Reference) ) loop
            
            sub_instanceJ := sub_instanceJ.Next_Object;
         end loop;
         
         
         if Root_Object.Events.objJ.Events_objJ_type(sub_instanceJ.all).ResultJ =  70 then
            
            Events_Rel_R7.Navigate (
               From  => sub_instanceJ,
               Class => Root_Object.Events.objK.Events_objK_type'tag,
               To    => sub_instanceK);
            
            
            if Root_Object.Events.objK.Events_objK_type(sub_instanceK.all).ResultK =  70 then
               
               Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                  Test_Object_Domain => Object,
                  Test_Number        => Test_Number,
                  Test_Value         => 70);
               
            else
               Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                  Failed_Domain_Object => Object,
                  Failed_Test_Number   => Test_Number,
                  Failed_Test_Value    => -12);
               
            end if;
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => Object,
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => -13);
            
         end if;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 18 - This test verifies nested supertype/subtype relationships.
      -- -------------------------------------------------------------------------
      
      if Test_Reference =  18 then
         
         --  if this is test 18, then look for an object J with referenceJ 17
         find_value := Test_Reference - 1;
         
         sub_instanceJ := Root_Object.Events.objJ.Conditional_Find_One;
         while (sub_instanceJ /= null) and then (not (Root_Object.Events.objJ.Events_objJ_Type(sub_instanceJ.all).ReferenceJ =  find_value) ) loop
            
            sub_instanceJ := sub_instanceJ.Next_Object;
         end loop;
         
         
         if Root_Object.Events.objJ.Events_objJ_type(sub_instanceJ.all).ResultJ =  70 then
            
            Events_Rel_R7.Navigate (
               From  => sub_instanceJ,
               Class => Root_Object.Events.objK.Events_objK_type'tag,
               To    => sub_instanceK);
            
            
            if Root_Object.Events.objK.Events_objK_type(sub_instanceK.all).ResultK =  70 then
               
               Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                  Test_Object_Domain => Object,
                  Test_Number        => Test_Number,
                  Test_Value         => 70);
               
            else
               Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                  Failed_Domain_Object => Object,
                  Failed_Test_Number   => Test_Number,
                  Failed_Test_Value    => -12);
               
            end if;
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => Object,
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => -13);
            
         end if;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 28 - This test verifies nested supertype/subtype relationships.
      -- -------------------------------------------------------------------------
      
      if Test_Reference =  19 then
         SuperinstanceP := Root_Object.Events.objP.Conditional_Find_One;
         while (SuperinstanceP /= null) and then (not (Root_Object.Events.objP.Events_objP_Type(SuperinstanceP.all).Reference_P =  19) ) loop
            
            SuperinstanceP := SuperinstanceP.Next_Object;
         end loop;
         
         
         if SuperinstanceP /= Null then
            SubinstanceQ := Root_Object.Events.objQ.Conditional_Find_One;
            while (SubinstanceQ /= null) and then (not (Root_Object.Events.objQ.Events_objQ_Type(SubinstanceQ.all).latest_test =  Test_Number) ) loop
               
               SubinstanceQ := SubinstanceQ.Next_Object;
            end loop;
            
            
            if SubinstanceQ /= Null then
               
               if Root_Object.Events.objP.Events_objP_type(SuperinstanceP.all).Result_P =  11 and then
                  Root_Object.Events.objQ.Events_objQ_type(SubinstanceQ.all).Result_Q   =  1 then
                  
                  Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                     Test_Object_Domain => Object,
                     Test_Number        => Test_Number,
                     Test_Value         => Root_Object.Events.objP.Events_objP_type(SuperinstanceP.all).Result_P);
                  
               else
                  Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                     Failed_Domain_Object => Object,
                     Failed_Test_Number   => Test_Number,
                     Failed_Test_Value    => Root_Object.Events.objP.Events_objP_type(SuperinstanceP.all).Result_P);
                  
               end if;
               
            else
               Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                  Failed_Domain_Object => "Object Q                        ",
                  Failed_Test_Number   => Test_Number,
                  Failed_Test_Value    => -2);
               
            end if;
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => "Object Q                        ",
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => -1);
            
         end if;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 29 - This test verifies nested supertype/subtype relationships.
      -- -------------------------------------------------------------------------
      
      if Test_Reference =  20 then
         SuperinstanceP := Root_Object.Events.objP.Conditional_Find_One;
         while (SuperinstanceP /= null) and then (not (Root_Object.Events.objP.Events_objP_Type(SuperinstanceP.all).Reference_P =  20) ) loop
            
            SuperinstanceP := SuperinstanceP.Next_Object;
         end loop;
         
         
         if SuperinstanceP /= Null then
            SubinstanceR := Root_Object.Events.objR.Conditional_Find_One;
            while (SubinstanceR /= null) and then (not (Root_Object.Events.objR.Events_objR_Type(SubinstanceR.all).latest_test =  Test_Number) ) loop
               
               SubinstanceR := SubinstanceR.Next_Object;
            end loop;
            
            
            if SubinstanceR /= Null then
               
               if Root_Object.Events.objP.Events_objP_type(SuperinstanceP.all).Result_P =  12 and then
                  Root_Object.Events.objR.Events_objR_type(SubinstanceR.all).Result_R   =  2 then
                  
                  Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                     Test_Object_Domain => Object,
                     Test_Number        => Test_Number,
                     Test_Value         => Root_Object.Events.objP.Events_objP_type(SuperinstanceP.all).Result_P);
                  
               else
                  Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                     Failed_Domain_Object => Object,
                     Failed_Test_Number   => Test_Number,
                     Failed_Test_Value    => Root_Object.Events.objP.Events_objP_type(SuperinstanceP.all).Result_P);
                  
               end if;
               
            else
               Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                  Failed_Domain_Object => Object,
                  Failed_Test_Number   => Test_Number,
                  Failed_Test_Value    => -2);
               
            end if;
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => Object,
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => -1);
            
         end if;
         
      end if;
      
      
      -- -------------------------------------------------------------------------
      --  Test 35 - This test verifies nested supertype/subtype relationships.
      -- -------------------------------------------------------------------------
      
      if Test_Reference =  21 then
         SuperinstanceP := Root_Object.Events.objP.Conditional_Find_One;
         while (SuperinstanceP /= null) and then (not (Root_Object.Events.objP.Events_objP_Type(SuperinstanceP.all).Reference_P =  21) ) loop
            
            SuperinstanceP := SuperinstanceP.Next_Object;
         end loop;
         
         
         if SuperinstanceP /= Null then
            SubinstanceS := Root_Object.Events.objS.Conditional_Find_One;
            while (SubinstanceS /= null) and then (not (Root_Object.Events.objS.Events_objS_Type(SubinstanceS.all).latest_test =  Test_Number) ) loop
               
               SubinstanceS := SubinstanceS.Next_Object;
            end loop;
            
            
            if SubinstanceS /= Null then
               
               if Root_Object.Events.objP.Events_objP_type(SuperinstanceP.all).Result_P =  13 and then
                  Root_Object.Events.objS.Events_objS_type(SubinstanceS.all).Result_S   =  3 then
                  
                  Events_RPT2_Test_Passed_Bridge.Events_RPT2_Test_Passed (
                     Test_Object_Domain => Object,
                     Test_Number        => Test_Number,
                     Test_Value         => Root_Object.Events.objP.Events_objP_type(SuperinstanceP.all).Result_P);
                  
               else
                  Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                     Failed_Domain_Object => Object,
                     Failed_Test_Number   => Test_Number,
                     Failed_Test_Value    => Root_Object.Events.objP.Events_objP_type(SuperinstanceP.all).Result_P);
                  
               end if;
               
            else
               Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
                  Failed_Domain_Object => Object,
                  Failed_Test_Number   => Test_Number,
                  Failed_Test_Value    => -2);
               
            end if;
            
         else
            Events_RPT3_Test_Failed_Bridge.Events_RPT3_Test_Failed (
               Failed_Domain_Object => Object,
               Failed_Test_Number   => Test_Number,
               Failed_Test_Value    => -1);
            
         end if;
         
      end if;
      
      
   end Events_objVERPOL1_verify_polymorphic;
   
end Events_objVERPOL1_verify_polymorphic_Service;

--
-- End of file Events_objVERPOL1_verify_polymorphic_Service.adb
--
