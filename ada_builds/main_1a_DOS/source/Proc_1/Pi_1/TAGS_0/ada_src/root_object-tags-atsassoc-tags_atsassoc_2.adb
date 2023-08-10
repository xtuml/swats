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
--* File Name:               TAGS_ATSASSOC_2.ada
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
with Root_Object.TAGS.ATMR;
with Root_Object.TAGS.ATML;

-- List of relationships used
with TAGS_rel_R5;

-- List of bridges used
with TAGS_RPT3_Test_Failed_Bridge;
with TAGS_RPT2_Test_Passed_Bridge;
with TAGS_RPT1_Start_Test_Bridge;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Text_Type;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.TAGS.ATSASSOC)
   
   procedure TAGS_ATSASSOC_2 (ATS_ASSOC_Test_No : in     Application_Types.Base_Integer_Type;
                              This_Instance     : in out Root_Object.Object_Access) is
   
      
      The_Left  : Root_Object.Object_Access;
      The_Right : Root_Object.Object_Access;
      
   begin
      
      TAGS_RPT1_Start_Test_Bridge.TAGS_RPT1_Start_Test (
         Test_Number     => ATS_ASSOC_Test_No,
         Requid          => "1241-0000-01-0128               ",
         Invoking_Domain => "Tagging                         ",
         Invoking_Object => "Active Tagged Many              ",
         Purpose         => "generate to ATS_ASSOC           ");
      
      
      TAGS_Rel_R5.Navigate (
         From  => This_Instance,
         Class => Root_Object.TAGS.ATML.TAGS_ATML_type'tag,
         To    => The_Left);
      
      
      TAGS_Rel_R5.Navigate (
         From  => This_Instance,
         Class => Root_Object.TAGS.ATMR.TAGS_ATMR_type'tag,
         To    => The_Right);
      
      
      if The_Left /= Null then
         
         if The_Right /= Null then
            
            --  If the left and right objects were ment to be linked with this
            
            if Root_Object.TAGS.ATMR.TAGS_ATMR_type(The_Right.all).Attribute_Two =  Root_Object.TAGS.ATML.TAGS_ATML_type(The_Left.all).Attribute_One then
               
               if Root_Object.TAGS.ATMR.TAGS_ATMR_type(The_Right.all).Attribute_Two =  
               Root_Object.TAGS.ATSASSOC.TAGS_ATSASSOC_type(This_Instance.all).Attribute_Three then
                  
                  TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
                     Test_Object_Domain => "generate to ATS_ASSOC           ",
                     Test_Number        => ATS_ASSOC_Test_No,
                     Test_Value         => 0);
                  
               else
                  TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
                     Failed_Domain_Object => "generate to ATS_ASSOC           ",
                     Failed_Test_Number   => ATS_ASSOC_Test_No,
                     Failed_Test_Value    => -1);
                  
               end if;
               
               
               --  Else the left and right objects are not the same, therefore
               --  we can't expect the assoc object to share the attribute value.
               --  At least it is linked to a left and a right instance.
            else
               
               TAGS_RPT2_Test_Passed_Bridge.TAGS_RPT2_Test_Passed (
                  Test_Object_Domain => "generate to ATS_ASSOC           ",
                  Test_Number        => ATS_ASSOC_Test_No,
                  Test_Value         => 1);
               
            end if;
            
         else
            TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
               Failed_Domain_Object => "generate to ATS_ASSOC           ",
               Failed_Test_Number   => ATS_ASSOC_Test_No,
               Failed_Test_Value    => -2);
            
         end if;
         
      else
         TAGS_RPT3_Test_Failed_Bridge.TAGS_RPT3_Test_Failed (
            Failed_Domain_Object => "generate to ATS_ASSOC           ",
            Failed_Test_Number   => ATS_ASSOC_Test_No,
            Failed_Test_Value    => -3);
         
      end if;
      
      Root_Object.TAGS.ATSASSOC.Process_Queue;
   end TAGS_ATSASSOC_2;
   
--
-- End of file TAGS_ATSASSOC_2.ada
--
