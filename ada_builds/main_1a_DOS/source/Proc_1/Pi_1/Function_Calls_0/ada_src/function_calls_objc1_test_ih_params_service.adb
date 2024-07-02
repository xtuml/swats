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
--* File Name:               Function_Calls_objC1_Test_IH_Params_Service.adb
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
--* Domain Name              : Function_Calls
--* Domain Key Letter        : Function_Calls
--* Domain Version           : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--
-- with list for all objects, relationships, services and types used within this code fragment

-- List of objects used
with Root_Object.Function_Calls.objC;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;

with Root_Object;
use type Root_Object.Object_Access;


package body Function_Calls_objC1_Test_IH_Params_Service is
   
   procedure Function_Calls_objC1_Test_IH_Params (
      Input_IH  : in     Root_Object.Object_Access;
      Return_IH :    out Root_Object.Object_Access) is
      
      Inst_Of_C : Root_Object.Object_Access;
      
   begin
   -- start of objC1_Test_IH_Params
      Inst_Of_C := Root_Object.Function_Calls.objC.Conditional_Find_One;
      while (Inst_Of_C /= null) and then (not (Root_Object.Function_Calls.objC.Function_Calls_objC_Type(Inst_Of_C.all).idC =  100) ) loop
         
         Inst_Of_C := Inst_Of_C.Next_Object;
      end loop;
      
      
      if Root_Object.Function_Calls.objC.Function_Calls_objC_type(Input_IH.all).idC =  100 then
         
         if Root_Object.Function_Calls.objC.Function_Calls_objC_type(Input_IH.all).IntC =  200 then
            
            if Root_Object.Function_Calls.objC.Function_Calls_objC_type(Input_IH.all).RealC =  99.9 then
               Root_Object.Function_Calls.objC.Function_Calls_objC_type(Inst_Of_C.all).idC   := 1000;
               Root_Object.Function_Calls.objC.Function_Calls_objC_type(Inst_Of_C.all).IntC  := 2000;
               Root_Object.Function_Calls.objC.Function_Calls_objC_type(Inst_Of_C.all).RealC := 999.9;
               
               
               Return_IH := Inst_Of_C;
               
            end if;
            
         end if;
         
      end if;
      
      
   end Function_Calls_objC1_Test_IH_Params;
   
end Function_Calls_objC1_Test_IH_Params_Service;

--
-- End of file Function_Calls_objC1_Test_IH_Params_Service.adb
--
