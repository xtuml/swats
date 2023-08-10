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
--* File Name:               Events_objN1_GO_Creation_Service_Service.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description              
--*                          This Service is automatically created for a Generic Class. It is invoked to
--*                           create the counterpart Generic Class when a Specific Class is created. Onl
--*                          y the action ASL is editable.
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

-- List of domain types used
with Events_Domain_Types;
use type Events_Domain_Types.Specific_Classes_JTT;


with Root_Object;
use type Root_Object.Object_Access;


package body Events_objN1_GO_Creation_Service_Service is
   
   procedure Events_objN1_GO_Creation_Service (
      Specific_Type          : in     Events_Domain_Types.Specific_Classes_JTT;
      Created_Generic_Object :    out Root_Object.Object_Access) is
      
   begin
   -- start of objN1_GO_Creation_Service
      
   end Events_objN1_GO_Creation_Service;
   
end Events_objN1_GO_Creation_Service_Service;

--
-- End of file Events_objN1_GO_Creation_Service_Service.adb
--
