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
--* File Name:               DomainA_Scenario1.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Domain A setup
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
--* Domain Name              : DomainA
--* Domain Key Letter        : DomainA
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.DomainA.DOMAIN_A_SUBB;
with Root_Object.DomainA.DOMAIN_A_SUBA;
with Root_Object.DomainA.DOMAIN_A_SUPER;
with Root_Object.DomainA.objA;
with Root_Object.DomainA.TD;

-- List of relationships used
with DomainA_rel_R4;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure DomainA_Scenario1 is
   
      
      my_test : Root_Object.Object_Access;
      newA    : Root_Object.Object_Access;
      Super1  : Root_Object.Object_Access;
      Sub_A1  : Root_Object.Object_Access;
      Sub_B1  : Root_Object.Object_Access;
      Super2  : Root_Object.Object_Access;
      Sub_A2  : Root_Object.Object_Access;
      Sub_B2  : Root_Object.Object_Access;
      
      count : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      my_test := Root_Object.DomainA.TD.Create;
      Root_Object.DomainA.TD.DomainA_TD_Type(my_test.all).td_id            := 1;
      Root_Object.DomainA.TD.DomainA_TD_Type(my_test.all).This_Test_Number := 1;
      
      
      -- Create several instances of Object_A
      count := 5;
      
      loop
         
         newA := Root_Object.DomainA.objA.Create;
         Root_Object.DomainA.objA.DomainA_objA_Type(newA.all).idA              := count;
         Root_Object.DomainA.objA.DomainA_objA_Type(newA.all).ResultA          := 0;
         Root_Object.DomainA.objA.DomainA_objA_Type(newA.all).Current_State    := Root_Object.DomainA.objA.Idle;
         
         count := count - 1;
         
         exit when count =  0;
      end loop;
      
      
      Super1 := Root_Object.DomainA.DOMAIN_A_SUPER.Create;
      Root_Object.DomainA.DOMAIN_A_SUPER.DomainA_DOMAIN_A_SUPER_Type(Super1.all).idSUPER := 1;
      
      
      Sub_A1 := Root_Object.DomainA.DOMAIN_A_SUBA.Create;
      Root_Object.DomainA.DOMAIN_A_SUBA.DomainA_DOMAIN_A_SUBA_Type(Sub_A1.all).SubA_Attribute   := 1;
      Root_Object.DomainA.DOMAIN_A_SUBA.DomainA_DOMAIN_A_SUBA_Type(Sub_A1.all).A_Text           := "Sub A1                          ";
      
      
      Sub_B1 := Root_Object.DomainA.DOMAIN_A_SUBB.Create;
      Root_Object.DomainA.DOMAIN_A_SUBB.DomainA_DOMAIN_A_SUBB_Type(Sub_B1.all).SubB_Attribute   := 1;
      Root_Object.DomainA.DOMAIN_A_SUBB.DomainA_DOMAIN_A_SUBB_Type(Sub_B1.all).B_Text           := "Sub B1                          ";
      
      DomainA_Rel_R4.Link (
         A_Instance => Super1,
         B_Instance => Sub_A1);
      
      
      Super2 := Root_Object.DomainA.DOMAIN_A_SUPER.Create;
      Root_Object.DomainA.DOMAIN_A_SUPER.DomainA_DOMAIN_A_SUPER_Type(Super2.all).idSUPER := 2;
      
      
      Sub_A2 := Root_Object.DomainA.DOMAIN_A_SUBA.Create;
      Root_Object.DomainA.DOMAIN_A_SUBA.DomainA_DOMAIN_A_SUBA_Type(Sub_A2.all).SubA_Attribute   := 2;
      Root_Object.DomainA.DOMAIN_A_SUBA.DomainA_DOMAIN_A_SUBA_Type(Sub_A2.all).A_Text           := "Sub A2                          ";
      
      
      Sub_B2 := Root_Object.DomainA.DOMAIN_A_SUBB.Create;
      Root_Object.DomainA.DOMAIN_A_SUBB.DomainA_DOMAIN_A_SUBB_Type(Sub_B2.all).SubB_Attribute   := 2;
      Root_Object.DomainA.DOMAIN_A_SUBB.DomainA_DOMAIN_A_SUBB_Type(Sub_B2.all).B_Text           := "Sub B2                          ";
      
      DomainA_Rel_R4.Link (
         A_Instance => Super2,
         B_Instance => Sub_B2);
      
   end DomainA_Scenario1;
   
--
-- End of file DomainA_Scenario1.ada
--
