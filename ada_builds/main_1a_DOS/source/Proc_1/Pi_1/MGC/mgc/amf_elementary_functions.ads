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
-- File Name:                amf.adb
-- Version:                  < as defined in ClearCase >
-- Creation Date:            22 December 1998
-- Last Modified Date:       10 January 2003

with Application_Types;
   
with Ada.Numerics;
with Ada.Numerics.Generic_Elementary_Functions;


-- Instantiate Amf_Elementary_Functions package to provide trigonometric functions
-- with Base_Float_Type parameters.
package Amf_Elementary_Functions is 
   new Ada.Numerics.Generic_Elementary_Functions (Application_Types.Base_Float_Type); 
