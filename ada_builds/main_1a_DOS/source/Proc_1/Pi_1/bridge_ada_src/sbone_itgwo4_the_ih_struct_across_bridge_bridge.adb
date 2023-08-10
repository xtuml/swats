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
--* File Name:               SBONE_ITGWO4_The_IH_Struct_Across_Bridge_Bridge.adb
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
with Root_Object.SBONE.VSD;

-- List of services used
with SBONE_SBONE4_Append_IH_To_Struct_Service;

-- List of domain types used
with SBONE_Domain_Types;
with SBONE_Domain_Types.Ops;
use type SBONE_Domain_Types.VSD_Struct;
use type SBONE_Domain_Types.IH_Struct;


with Root_Object;
use type Root_Object.Object_Access;


package body SBONE_ITGWO4_The_IH_Struct_Across_Bridge_Bridge is
   
   procedure SBONE_ITGWO4_The_IH_Struct_Across_Bridge (
      The_IHA           : in     Root_Object.Object_Access;
      The_IHB           : in     Root_Object.Object_Access;
      The_IHC           : in     Root_Object.Object_Access;
      Decomposed_Struct :    out SBONE_Domain_Types.VSD_Struct) is
      
      A_Struct : Root_Object.Object_Access;
      
      Returned_Structure : SBONE_Domain_Types.IH_Struct;
      
   begin
   -- start of ITGWO4_The_IH_Struct_Across_Bridge
      -- {Returned_Structure} is IH_Struct
      SBONE_Domain_Types.Ops.Initialise (Returned_Structure);
      
      
      SBONE_SBONE4_Append_IH_To_Struct_Service.SBONE_SBONE4_Append_IH_To_Struct (
         The_IH           => The_IHA,
         Returning_Struct => Returned_Structure);
      
      SBONE_SBONE4_Append_IH_To_Struct_Service.SBONE_SBONE4_Append_IH_To_Struct (
         The_IH           => The_IHB,
         Returning_Struct => Returned_Structure);
      
      SBONE_SBONE4_Append_IH_To_Struct_Service.SBONE_SBONE4_Append_IH_To_Struct (
         The_IH           => The_IHC,
         Returning_Struct => Returned_Structure);
      
      --
      -- start of unpacking structure
      
      declare
         use type Root_Object.Object_List.Node_Access_Type;
      begin
         SBONE_Domain_Types.Ops.Go_To_Start (Returned_Structure);
         for i in 1 .. SBONE_Domain_Types.Ops.Count_Of (In_Structure => Returned_Structure) loop
            SBONE_Domain_Types.Ops.Extract (
               A_The_VSD_IH     => A_Struct,
               From_Structure   => Returned_Structure);
            
            --
            -- start of append members to structure
            SBONE_Domain_Types.Ops.Append (
               A_Ref_Type     => Root_Object.SBONE.VSD.SBONE_VSD_type(A_Struct.all).Object_Reference_VSD,
               A_Int_Type     => Root_Object.SBONE.VSD.SBONE_VSD_type(A_Struct.all).Object_Simple_Integer,
               A_Real_Type    => Root_Object.SBONE.VSD.SBONE_VSD_type(A_Struct.all).Object_Simple_Real, 
               To_Structure   => Decomposed_Struct);
            -- end of append members to structure
            --
            
         end loop; -- end of i in 1 .. SBONE_Domain_Types.Ops.Count_Of (In_Structure => Returned_Structure) loop
         
      end;
      -- end of unpacking structure
      --
      
      
   end SBONE_ITGWO4_The_IH_Struct_Across_Bridge;
   
end SBONE_ITGWO4_The_IH_Struct_Across_Bridge_Bridge;

--
-- End of file SBONE_ITGWO4_The_IH_Struct_Across_Bridge_Bridge.adb
--
