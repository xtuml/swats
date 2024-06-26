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
--* File Name:               DomainB_Scenario1.ada
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          Domain B setup
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
--* Domain Name              : DomainB
--* Domain Key Letter        : DomainB
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.DomainB.DOMAIN_B_SUBB;
with Root_Object.DomainB.DOMAIN_B_SUBA;
with Root_Object.DomainB.DOMAIN_B_SUPER;
with Root_Object.DomainB.objCD;
with Root_Object.DomainB.objD;
with Root_Object.DomainB.objC;
with Root_Object.DomainB.objB;
with Root_Object.DomainB.TD;

-- List of relationships used
with DomainB_rel_R4;
with DomainB_rel_R1;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;

   
   procedure DomainB_Scenario1 is
   
      
      my_test : Root_Object.Object_Access;
      newB    : Root_Object.Object_Access;
      newC    : Root_Object.Object_Access;
      newD    : Root_Object.Object_Access;
      newCD   : Root_Object.Object_Access;
      Super1  : Root_Object.Object_Access;
      Sub_A1  : Root_Object.Object_Access;
      Sub_B1  : Root_Object.Object_Access;
      Super2  : Root_Object.Object_Access;
      Sub_A2  : Root_Object.Object_Access;
      Sub_B2  : Root_Object.Object_Access;
      
      count : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      my_test := Root_Object.DomainB.TD.Create;
      Root_Object.DomainB.TD.DomainB_TD_Type(my_test.all).td_id            := 1;
      Root_Object.DomainB.TD.DomainB_TD_Type(my_test.all).This_Test_Number := 1;
      
      
      -- Create several instances of Object_B
      count := 5;
      
      loop
         
         newB := Root_Object.DomainB.objB.Create;
         Root_Object.DomainB.objB.DomainB_objB_Type(newB.all).idB              := count;
         Root_Object.DomainB.objB.DomainB_objB_Type(newB.all).ResultB          := 0;
         Root_Object.DomainB.objB.DomainB_objB_Type(newB.all).Current_State    := Root_Object.DomainB.objB.Idle;
         
         
         newC := Root_Object.DomainB.objC.Create;
         Root_Object.DomainB.objC.DomainB_objC_Type(newC.all).idC              := count;
         Root_Object.DomainB.objC.DomainB_objC_Type(newC.all).a_number         := count;
         
         
         newD := Root_Object.DomainB.objD.Create;
         Root_Object.DomainB.objD.DomainB_objD_Type(newD.all).idD              := count;
         Root_Object.DomainB.objD.DomainB_objD_Type(newD.all).D_Number         := count;
         
         
         newCD := Root_Object.DomainB.objCD.Create;
         Root_Object.DomainB.objCD.DomainB_objCD_Type(newCD.all).a_name := "fred                            ";
         
         DomainB_Rel_R1.Link (
            A_Instance => newC,
            B_Instance => newD,
            Using      => newCD);
         
         count := count - 1;
         
         exit when count =  0;
      end loop;
      
      
      Super1 := Root_Object.DomainB.DOMAIN_B_SUPER.Create;
      Root_Object.DomainB.DOMAIN_B_SUPER.DomainB_DOMAIN_B_SUPER_Type(Super1.all).idSUPER_B := 1;
      
      
      Sub_A1 := Root_Object.DomainB.DOMAIN_B_SUBA.Create;
      Root_Object.DomainB.DOMAIN_B_SUBA.DomainB_DOMAIN_B_SUBA_Type(Sub_A1.all).SubA_Attribute   := 1;
      Root_Object.DomainB.DOMAIN_B_SUBA.DomainB_DOMAIN_B_SUBA_Type(Sub_A1.all).A_Text           := "Sub A1                          ";
      
      
      Sub_B1 := Root_Object.DomainB.DOMAIN_B_SUBB.Create;
      Root_Object.DomainB.DOMAIN_B_SUBB.DomainB_DOMAIN_B_SUBB_Type(Sub_B1.all).SubB_Attribute   := 1;
      Root_Object.DomainB.DOMAIN_B_SUBB.DomainB_DOMAIN_B_SUBB_Type(Sub_B1.all).B_Text           := "Sub B1                          ";
      
      DomainB_Rel_R4.Link (
         A_Instance => Super1,
         B_Instance => Sub_A1);
      
      
      Super2 := Root_Object.DomainB.DOMAIN_B_SUPER.Create;
      Root_Object.DomainB.DOMAIN_B_SUPER.DomainB_DOMAIN_B_SUPER_Type(Super2.all).idSUPER_B := 2;
      
      
      Sub_A2 := Root_Object.DomainB.DOMAIN_B_SUBA.Create;
      Root_Object.DomainB.DOMAIN_B_SUBA.DomainB_DOMAIN_B_SUBA_Type(Sub_A2.all).SubA_Attribute   := 2;
      Root_Object.DomainB.DOMAIN_B_SUBA.DomainB_DOMAIN_B_SUBA_Type(Sub_A2.all).A_Text           := "Sub A2                          ";
      
      
      Sub_B2 := Root_Object.DomainB.DOMAIN_B_SUBB.Create;
      Root_Object.DomainB.DOMAIN_B_SUBB.DomainB_DOMAIN_B_SUBB_Type(Sub_B2.all).SubB_Attribute   := 2;
      Root_Object.DomainB.DOMAIN_B_SUBB.DomainB_DOMAIN_B_SUBB_Type(Sub_B2.all).B_Text           := "Sub B2                          ";
      
      DomainB_Rel_R4.Link (
         A_Instance => Super2,
         B_Instance => Sub_B2);
      
   end DomainB_Scenario1;
   
--
-- End of file DomainB_Scenario1.ada
--
