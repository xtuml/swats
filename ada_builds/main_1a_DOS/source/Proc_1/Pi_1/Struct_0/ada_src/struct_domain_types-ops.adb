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
--* File Name:               Struct_domain_types.ops.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Type-specific operations on Domain Data Types 
--* Comments:                Header written by header.macro                           *
--*                           
--*                                                                                   *
--*************************************************************************************
--*                            SUPPLEMENTAL INFORMATION                               *
--*                            ------------------------                               *
--*  OVERVIEW                                                                         *
--*  --------                                                                         *
--*  This archetype provides operations on the structure types provided within the domain. 
--*
--*  ERROR HANDLING                                                                   *
--*  --------------                                                                   *
--*  None                                                                             *
--*                                                                                   *
--*  SAFETY         : None                                                            *
--*  ------                                                                           *
--*                                                                                   *
--*  BUILD INFORMATION                                                                *
--* -----------------                                                                 *
--*                                                                                   *
--*  Project Key Letter : TSV2
--*  Project Version    : 0
--*  Build Set          : 0
--*                                                                                   *
--*  Build Target       : Dos
--*  Clock Type         : INTERNAL
--*  Debugging is       : Off
--*  Trace is           : Off
--*                                                                                   *
--*  
--*  
--*  
--*  
--*  
--*************************************************************************************
--*  COMPONENTS CONTAINED WITHIN THIS FILE                                            *
--*  package body Struct_Domain_Types.Ops 
--*
--*************************************************************************************
--  MODIFICATION RECORD
--  --------------------
--    NAME    DATE            ECR No            MODIFICATION
--
--    jmm     03/10/00        PILOT_0000_0600   Changes for issue 3.0.0 in accordance with ATN_037_03_01.
--
--    db      04/07/01        PILOT_0000_0231   Rename package filename to match package definition.
--
--    db      29/08/01        PILOT_0000_0230   Coding Standards
--                                              Naming convention
--
--    db      07/02/02        SRLE100001626     Move checking for the empty set into
--                                              Initialise procedure.
--
--    db      15/03/02        SRLE100002863     Conditionally generate only if Structures 
--                                              exist in this domain.
--
--    db      12/04/02        SRLE100001553     Remove check on null input parameter in Extract function. If
--                                              we are extracting from an empty set, constraint_error.
--
--    db      01/07/02        SRLE100003353     Remove extra check in initialise.
--
--    ANF     04/07/06        001798 9SR056     Archetype language reformatted
--
-- **************************************************************************************

with Ada.Unchecked_Deallocation;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

package body Struct_Domain_Types.Ops is
    
   procedure Append (
      A_A_Defined_IH : in     Root_Object.Object_Access;
      To_Structure : in out Structure_and_IH_Type) is
                       
   Temp_Structure: Structure_and_IH_Type_Node_Access :=
      new Structure_and_IH_Type_Node'(
         A_Defined_IH  => A_A_Defined_IH,
         Next_Structure     => null,
         Previous_Structure => null);
   begin
    
      if To_Structure.First_Entry = null then
         To_Structure.Last_Entry := Temp_Structure;
      else
         To_Structure.First_Entry.Previous_Structure := Temp_Structure;
         Temp_Structure.Next_Structure := To_Structure.First_Entry;
      end if;

      To_Structure.First_Entry := Temp_Structure;
      To_Structure.Number_Of_Entries := To_Structure.Number_Of_Entries + 1;

   end Append;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Extract (
      A_A_Defined_IH :    out  Root_Object.Object_Access ;
      From_Structure : in    Structure_and_IH_Type) is
                            
   begin
      -- SRLE100001553
      -- Remove check on null input parameter, thus if the From_Structure is
      -- empty, an exception will be raised. We know that in order to get here, the structure
      -- has at least one entry in it. Any attempt to extract from an empty structure will 
      -- raise a constraint error exception. You have been warned.

      --
      -- set output parameter to be oldest entry (in time)
      --
      -- extract the parameters
      A_A_Defined_IH := From_Structure.Iterator.all.A_Defined_IH;
      From_Structure.Iterator.all := From_Structure.Iterator.all.Previous_Structure;

   end Extract;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Go_To_Start (Of_Structure : in Structure_and_IH_Type) is
   begin
      if Of_Structure.Last_Entry /= null then
         Of_Structure.Iterator.all := Of_Structure.Last_Entry;
      end if;
   end Go_To_Start;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function Not_Empty (In_Structure : Structure_and_IH_Type) return boolean is
   begin
      return Count_Of (In_Structure) /= 0;
   end Not_Empty;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function  Count_Of    (In_Structure : Structure_and_IH_Type) return Application_Types.Base_Integer_Type is
      Temp_Count: Application_Types.Base_Integer_Type := 0;
   begin
      Temp_Count := In_Structure.Number_Of_Entries;
      return Temp_Count;
   end Count_Of;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Initialise (Object : in out Structure_and_IH_Type) is

      Next:     Structure_and_IH_Type_Node_Access;
      Old_Cell: Structure_and_IH_Type_Node_Access;
     
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Structure_and_IH_Type_Node, 
         Name   => Structure_and_IH_Type_Node_Access);
               
   begin

      if Not_Empty(Object) then

         -- SRLE100003353
         -- Belt and braces approach is no longer appropriate.
         -- First_Entry will always contain data if the structure count is non-zero.
         -- If it doesn't then the data structure has been corrupted somehow; there
         -- is no way back from that.
         -- if Object.First_Entry /= null then

            Next := Object.First_Entry;

            while Next /= null loop
               Old_Cell := Next;
               Next := Next.Next_Structure;
               Free (Old_Cell);
            end loop;

         -- end if;

         Object.Iterator.all := null;
         Object.First_Entry  := null;
         Object.Last_Entry   := null;
         Object.Number_Of_Entries := 0;

      end if;

   end Initialise;
--  --
--  -------------------------------------------------------------------------------------------
--  --
    
   procedure Append (
      A_Basic_Integer : in    Application_Types.Base_Integer_Type;
      To_Structure : in out Very_Simple_Structure_Type) is
                       
   Temp_Structure: Very_Simple_Structure_Type_Node_Access :=
      new Very_Simple_Structure_Type_Node'(
         Basic_Integer  => A_Basic_Integer,
         Next_Structure     => null,
         Previous_Structure => null);
   begin
    
      if To_Structure.First_Entry = null then
         To_Structure.Last_Entry := Temp_Structure;
      else
         To_Structure.First_Entry.Previous_Structure := Temp_Structure;
         Temp_Structure.Next_Structure := To_Structure.First_Entry;
      end if;

      To_Structure.First_Entry := Temp_Structure;
      To_Structure.Number_Of_Entries := To_Structure.Number_Of_Entries + 1;

   end Append;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Extract (
      A_Basic_Integer :    out Application_Types.Base_Integer_Type ;
      From_Structure : in    Very_Simple_Structure_Type) is
                            
   begin
      -- SRLE100001553
      -- Remove check on null input parameter, thus if the From_Structure is
      -- empty, an exception will be raised. We know that in order to get here, the structure
      -- has at least one entry in it. Any attempt to extract from an empty structure will 
      -- raise a constraint error exception. You have been warned.

      --
      -- set output parameter to be oldest entry (in time)
      --
      -- extract the parameters
      A_Basic_Integer := From_Structure.Iterator.all.Basic_Integer;
      From_Structure.Iterator.all := From_Structure.Iterator.all.Previous_Structure;

   end Extract;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Go_To_Start (Of_Structure : in Very_Simple_Structure_Type) is
   begin
      if Of_Structure.Last_Entry /= null then
         Of_Structure.Iterator.all := Of_Structure.Last_Entry;
      end if;
   end Go_To_Start;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function Not_Empty (In_Structure : Very_Simple_Structure_Type) return boolean is
   begin
      return Count_Of (In_Structure) /= 0;
   end Not_Empty;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function  Count_Of    (In_Structure : Very_Simple_Structure_Type) return Application_Types.Base_Integer_Type is
      Temp_Count: Application_Types.Base_Integer_Type := 0;
   begin
      Temp_Count := In_Structure.Number_Of_Entries;
      return Temp_Count;
   end Count_Of;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Initialise (Object : in out Very_Simple_Structure_Type) is

      Next:     Very_Simple_Structure_Type_Node_Access;
      Old_Cell: Very_Simple_Structure_Type_Node_Access;
     
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Very_Simple_Structure_Type_Node, 
         Name   => Very_Simple_Structure_Type_Node_Access);
               
   begin

      if Not_Empty(Object) then

         -- SRLE100003353
         -- Belt and braces approach is no longer appropriate.
         -- First_Entry will always contain data if the structure count is non-zero.
         -- If it doesn't then the data structure has been corrupted somehow; there
         -- is no way back from that.
         -- if Object.First_Entry /= null then

            Next := Object.First_Entry;

            while Next /= null loop
               Old_Cell := Next;
               Next := Next.Next_Structure;
               Free (Old_Cell);
            end loop;

         -- end if;

         Object.Iterator.all := null;
         Object.First_Entry  := null;
         Object.Last_Entry   := null;
         Object.Number_Of_Entries := 0;

      end if;

   end Initialise;
--  --
--  -------------------------------------------------------------------------------------------
--  --
    
   procedure Append (
      A_Alternative_Colour : in    Struct_Domain_Types.Alternative_Colour_Type;
      A_Extra_Member : in    Application_Types.Base_Integer_Type;
      To_Structure : in out Different_Structure_Type) is
                       
   Temp_Structure: Different_Structure_Type_Node_Access :=
      new Different_Structure_Type_Node'(
         Alternative_Colour  => A_Alternative_Colour,
         Extra_Member  => A_Extra_Member,
         Next_Structure     => null,
         Previous_Structure => null);
   begin
    
      if To_Structure.First_Entry = null then
         To_Structure.Last_Entry := Temp_Structure;
      else
         To_Structure.First_Entry.Previous_Structure := Temp_Structure;
         Temp_Structure.Next_Structure := To_Structure.First_Entry;
      end if;

      To_Structure.First_Entry := Temp_Structure;
      To_Structure.Number_Of_Entries := To_Structure.Number_Of_Entries + 1;

   end Append;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Extract (
      A_Alternative_Colour :    out Struct_Domain_Types.Alternative_Colour_Type ;
      A_Extra_Member :    out Application_Types.Base_Integer_Type ;
      From_Structure : in    Different_Structure_Type) is
                            
   begin
      -- SRLE100001553
      -- Remove check on null input parameter, thus if the From_Structure is
      -- empty, an exception will be raised. We know that in order to get here, the structure
      -- has at least one entry in it. Any attempt to extract from an empty structure will 
      -- raise a constraint error exception. You have been warned.

      --
      -- set output parameter to be oldest entry (in time)
      --
      -- extract the parameters
      A_Alternative_Colour := From_Structure.Iterator.all.Alternative_Colour;
      A_Extra_Member := From_Structure.Iterator.all.Extra_Member;
      From_Structure.Iterator.all := From_Structure.Iterator.all.Previous_Structure;

   end Extract;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Go_To_Start (Of_Structure : in Different_Structure_Type) is
   begin
      if Of_Structure.Last_Entry /= null then
         Of_Structure.Iterator.all := Of_Structure.Last_Entry;
      end if;
   end Go_To_Start;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function Not_Empty (In_Structure : Different_Structure_Type) return boolean is
   begin
      return Count_Of (In_Structure) /= 0;
   end Not_Empty;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function  Count_Of    (In_Structure : Different_Structure_Type) return Application_Types.Base_Integer_Type is
      Temp_Count: Application_Types.Base_Integer_Type := 0;
   begin
      Temp_Count := In_Structure.Number_Of_Entries;
      return Temp_Count;
   end Count_Of;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Initialise (Object : in out Different_Structure_Type) is

      Next:     Different_Structure_Type_Node_Access;
      Old_Cell: Different_Structure_Type_Node_Access;
     
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Different_Structure_Type_Node, 
         Name   => Different_Structure_Type_Node_Access);
               
   begin

      if Not_Empty(Object) then

         -- SRLE100003353
         -- Belt and braces approach is no longer appropriate.
         -- First_Entry will always contain data if the structure count is non-zero.
         -- If it doesn't then the data structure has been corrupted somehow; there
         -- is no way back from that.
         -- if Object.First_Entry /= null then

            Next := Object.First_Entry;

            while Next /= null loop
               Old_Cell := Next;
               Next := Next.Next_Structure;
               Free (Old_Cell);
            end loop;

         -- end if;

         Object.Iterator.all := null;
         Object.First_Entry  := null;
         Object.Last_Entry   := null;
         Object.Number_Of_Entries := 0;

      end if;

   end Initialise;
--  --
--  -------------------------------------------------------------------------------------------
--  --
    
   procedure Append (
      A_An_Integer : in    Struct_Domain_Types.UDT_Integer_Type;
      A_A_Real : in    Struct_Domain_Types.UDT_Real_Type;
      To_Structure : in out UDT_Structure_Type) is
                       
   Temp_Structure: UDT_Structure_Type_Node_Access :=
      new UDT_Structure_Type_Node'(
         An_Integer  => A_An_Integer,
         A_Real  => A_A_Real,
         Next_Structure     => null,
         Previous_Structure => null);
   begin
    
      if To_Structure.First_Entry = null then
         To_Structure.Last_Entry := Temp_Structure;
      else
         To_Structure.First_Entry.Previous_Structure := Temp_Structure;
         Temp_Structure.Next_Structure := To_Structure.First_Entry;
      end if;

      To_Structure.First_Entry := Temp_Structure;
      To_Structure.Number_Of_Entries := To_Structure.Number_Of_Entries + 1;

   end Append;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Extract (
      A_An_Integer :    out Struct_Domain_Types.UDT_Integer_Type ;
      A_A_Real :    out Struct_Domain_Types.UDT_Real_Type ;
      From_Structure : in    UDT_Structure_Type) is
                            
   begin
      -- SRLE100001553
      -- Remove check on null input parameter, thus if the From_Structure is
      -- empty, an exception will be raised. We know that in order to get here, the structure
      -- has at least one entry in it. Any attempt to extract from an empty structure will 
      -- raise a constraint error exception. You have been warned.

      --
      -- set output parameter to be oldest entry (in time)
      --
      -- extract the parameters
      A_An_Integer := From_Structure.Iterator.all.An_Integer;
      A_A_Real := From_Structure.Iterator.all.A_Real;
      From_Structure.Iterator.all := From_Structure.Iterator.all.Previous_Structure;

   end Extract;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Go_To_Start (Of_Structure : in UDT_Structure_Type) is
   begin
      if Of_Structure.Last_Entry /= null then
         Of_Structure.Iterator.all := Of_Structure.Last_Entry;
      end if;
   end Go_To_Start;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function Not_Empty (In_Structure : UDT_Structure_Type) return boolean is
   begin
      return Count_Of (In_Structure) /= 0;
   end Not_Empty;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function  Count_Of    (In_Structure : UDT_Structure_Type) return Application_Types.Base_Integer_Type is
      Temp_Count: Application_Types.Base_Integer_Type := 0;
   begin
      Temp_Count := In_Structure.Number_Of_Entries;
      return Temp_Count;
   end Count_Of;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Initialise (Object : in out UDT_Structure_Type) is

      Next:     UDT_Structure_Type_Node_Access;
      Old_Cell: UDT_Structure_Type_Node_Access;
     
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => UDT_Structure_Type_Node, 
         Name   => UDT_Structure_Type_Node_Access);
               
   begin

      if Not_Empty(Object) then

         -- SRLE100003353
         -- Belt and braces approach is no longer appropriate.
         -- First_Entry will always contain data if the structure count is non-zero.
         -- If it doesn't then the data structure has been corrupted somehow; there
         -- is no way back from that.
         -- if Object.First_Entry /= null then

            Next := Object.First_Entry;

            while Next /= null loop
               Old_Cell := Next;
               Next := Next.Next_Structure;
               Free (Old_Cell);
            end loop;

         -- end if;

         Object.Iterator.all := null;
         Object.First_Entry  := null;
         Object.Last_Entry   := null;
         Object.Number_Of_Entries := 0;

      end if;

   end Initialise;
--  --
--  -------------------------------------------------------------------------------------------
--  --
    
   procedure Append (
      A_An_Integer : in    Application_Types.Base_Integer_Type;
      A_A_Real : in    Application_Types.Base_Float_Type;
      A_Some_Text : in    Application_Types.Base_Text_Type;
      A_A_Boolean : in     Boolean;
      To_Structure : in out Name_and_Type_Linked_Simple_Structure_Type) is
                       
   Temp_Structure: Name_and_Type_Linked_Simple_Structure_Type_Node_Access :=
      new Name_and_Type_Linked_Simple_Structure_Type_Node'(
         An_Integer  => A_An_Integer,
         A_Real  => A_A_Real,
         Some_Text  => A_Some_Text,
         A_Boolean  => A_A_Boolean,
         Next_Structure     => null,
         Previous_Structure => null);
   begin
    
      if To_Structure.First_Entry = null then
         To_Structure.Last_Entry := Temp_Structure;
      else
         To_Structure.First_Entry.Previous_Structure := Temp_Structure;
         Temp_Structure.Next_Structure := To_Structure.First_Entry;
      end if;

      To_Structure.First_Entry := Temp_Structure;
      To_Structure.Number_Of_Entries := To_Structure.Number_Of_Entries + 1;

   end Append;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Extract (
      A_An_Integer :    out Application_Types.Base_Integer_Type ;
      A_A_Real :    out Application_Types.Base_Float_Type ;
      A_Some_Text :    out Application_Types.Base_Text_Type ;
      A_A_Boolean :    out  Boolean ;
      From_Structure : in    Name_and_Type_Linked_Simple_Structure_Type) is
                            
   begin
      -- SRLE100001553
      -- Remove check on null input parameter, thus if the From_Structure is
      -- empty, an exception will be raised. We know that in order to get here, the structure
      -- has at least one entry in it. Any attempt to extract from an empty structure will 
      -- raise a constraint error exception. You have been warned.

      --
      -- set output parameter to be oldest entry (in time)
      --
      -- extract the parameters
      A_An_Integer := From_Structure.Iterator.all.An_Integer;
      A_A_Real := From_Structure.Iterator.all.A_Real;
      A_Some_Text := From_Structure.Iterator.all.Some_Text;
      A_A_Boolean := From_Structure.Iterator.all.A_Boolean;
      From_Structure.Iterator.all := From_Structure.Iterator.all.Previous_Structure;

   end Extract;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Go_To_Start (Of_Structure : in Name_and_Type_Linked_Simple_Structure_Type) is
   begin
      if Of_Structure.Last_Entry /= null then
         Of_Structure.Iterator.all := Of_Structure.Last_Entry;
      end if;
   end Go_To_Start;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function Not_Empty (In_Structure : Name_and_Type_Linked_Simple_Structure_Type) return boolean is
   begin
      return Count_Of (In_Structure) /= 0;
   end Not_Empty;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function  Count_Of    (In_Structure : Name_and_Type_Linked_Simple_Structure_Type) return Application_Types.Base_Integer_Type is
      Temp_Count: Application_Types.Base_Integer_Type := 0;
   begin
      Temp_Count := In_Structure.Number_Of_Entries;
      return Temp_Count;
   end Count_Of;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Initialise (Object : in out Name_and_Type_Linked_Simple_Structure_Type) is

      Next:     Name_and_Type_Linked_Simple_Structure_Type_Node_Access;
      Old_Cell: Name_and_Type_Linked_Simple_Structure_Type_Node_Access;
     
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Name_and_Type_Linked_Simple_Structure_Type_Node, 
         Name   => Name_and_Type_Linked_Simple_Structure_Type_Node_Access);
               
   begin

      if Not_Empty(Object) then

         -- SRLE100003353
         -- Belt and braces approach is no longer appropriate.
         -- First_Entry will always contain data if the structure count is non-zero.
         -- If it doesn't then the data structure has been corrupted somehow; there
         -- is no way back from that.
         -- if Object.First_Entry /= null then

            Next := Object.First_Entry;

            while Next /= null loop
               Old_Cell := Next;
               Next := Next.Next_Structure;
               Free (Old_Cell);
            end loop;

         -- end if;

         Object.Iterator.all := null;
         Object.First_Entry  := null;
         Object.Last_Entry   := null;
         Object.Number_Of_Entries := 0;

      end if;

   end Initialise;
--  --
--  -------------------------------------------------------------------------------------------
--  --
    
   procedure Append (
      A_TLS_Integer : in    Application_Types.Base_Integer_Type;
      A_TLS_Real : in    Application_Types.Base_Float_Type;
      A_TLS_Text : in    Application_Types.Base_Text_Type;
      A_TLS_Boolean : in     Boolean;
      To_Structure : in out Type_Linked_Simple_Structure_Type) is
                       
   Temp_Structure: Type_Linked_Simple_Structure_Type_Node_Access :=
      new Type_Linked_Simple_Structure_Type_Node'(
         TLS_Integer  => A_TLS_Integer,
         TLS_Real  => A_TLS_Real,
         TLS_Text  => A_TLS_Text,
         TLS_Boolean  => A_TLS_Boolean,
         Next_Structure     => null,
         Previous_Structure => null);
   begin
    
      if To_Structure.First_Entry = null then
         To_Structure.Last_Entry := Temp_Structure;
      else
         To_Structure.First_Entry.Previous_Structure := Temp_Structure;
         Temp_Structure.Next_Structure := To_Structure.First_Entry;
      end if;

      To_Structure.First_Entry := Temp_Structure;
      To_Structure.Number_Of_Entries := To_Structure.Number_Of_Entries + 1;

   end Append;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Extract (
      A_TLS_Integer :    out Application_Types.Base_Integer_Type ;
      A_TLS_Real :    out Application_Types.Base_Float_Type ;
      A_TLS_Text :    out Application_Types.Base_Text_Type ;
      A_TLS_Boolean :    out  Boolean ;
      From_Structure : in    Type_Linked_Simple_Structure_Type) is
                            
   begin
      -- SRLE100001553
      -- Remove check on null input parameter, thus if the From_Structure is
      -- empty, an exception will be raised. We know that in order to get here, the structure
      -- has at least one entry in it. Any attempt to extract from an empty structure will 
      -- raise a constraint error exception. You have been warned.

      --
      -- set output parameter to be oldest entry (in time)
      --
      -- extract the parameters
      A_TLS_Integer := From_Structure.Iterator.all.TLS_Integer;
      A_TLS_Real := From_Structure.Iterator.all.TLS_Real;
      A_TLS_Text := From_Structure.Iterator.all.TLS_Text;
      A_TLS_Boolean := From_Structure.Iterator.all.TLS_Boolean;
      From_Structure.Iterator.all := From_Structure.Iterator.all.Previous_Structure;

   end Extract;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Go_To_Start (Of_Structure : in Type_Linked_Simple_Structure_Type) is
   begin
      if Of_Structure.Last_Entry /= null then
         Of_Structure.Iterator.all := Of_Structure.Last_Entry;
      end if;
   end Go_To_Start;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function Not_Empty (In_Structure : Type_Linked_Simple_Structure_Type) return boolean is
   begin
      return Count_Of (In_Structure) /= 0;
   end Not_Empty;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function  Count_Of    (In_Structure : Type_Linked_Simple_Structure_Type) return Application_Types.Base_Integer_Type is
      Temp_Count: Application_Types.Base_Integer_Type := 0;
   begin
      Temp_Count := In_Structure.Number_Of_Entries;
      return Temp_Count;
   end Count_Of;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Initialise (Object : in out Type_Linked_Simple_Structure_Type) is

      Next:     Type_Linked_Simple_Structure_Type_Node_Access;
      Old_Cell: Type_Linked_Simple_Structure_Type_Node_Access;
     
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Type_Linked_Simple_Structure_Type_Node, 
         Name   => Type_Linked_Simple_Structure_Type_Node_Access);
               
   begin

      if Not_Empty(Object) then

         -- SRLE100003353
         -- Belt and braces approach is no longer appropriate.
         -- First_Entry will always contain data if the structure count is non-zero.
         -- If it doesn't then the data structure has been corrupted somehow; there
         -- is no way back from that.
         -- if Object.First_Entry /= null then

            Next := Object.First_Entry;

            while Next /= null loop
               Old_Cell := Next;
               Next := Next.Next_Structure;
               Free (Old_Cell);
            end loop;

         -- end if;

         Object.Iterator.all := null;
         Object.First_Entry  := null;
         Object.Last_Entry   := null;
         Object.Number_Of_Entries := 0;

      end if;

   end Initialise;
--  --
--  -------------------------------------------------------------------------------------------
--  --
    
   procedure Append (
      A_S_Integer : in    Application_Types.Base_Integer_Type;
      A_S_Real : in    Application_Types.Base_Float_Type;
      A_S_Text : in    Application_Types.Base_Text_Type;
      A_S_Boolean : in     Boolean;
      A_S_Colour : in    Struct_Domain_Types.Colour_Type;
      To_Structure : in out Simple_Structure_Type) is
                       
   Temp_Structure: Simple_Structure_Type_Node_Access :=
      new Simple_Structure_Type_Node'(
         S_Integer  => A_S_Integer,
         S_Real  => A_S_Real,
         S_Text  => A_S_Text,
         S_Boolean  => A_S_Boolean,
         S_Colour  => A_S_Colour,
         Next_Structure     => null,
         Previous_Structure => null);
   begin
    
      if To_Structure.First_Entry = null then
         To_Structure.Last_Entry := Temp_Structure;
      else
         To_Structure.First_Entry.Previous_Structure := Temp_Structure;
         Temp_Structure.Next_Structure := To_Structure.First_Entry;
      end if;

      To_Structure.First_Entry := Temp_Structure;
      To_Structure.Number_Of_Entries := To_Structure.Number_Of_Entries + 1;

   end Append;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Extract (
      A_S_Integer :    out Application_Types.Base_Integer_Type ;
      A_S_Real :    out Application_Types.Base_Float_Type ;
      A_S_Text :    out Application_Types.Base_Text_Type ;
      A_S_Boolean :    out  Boolean ;
      A_S_Colour :    out Struct_Domain_Types.Colour_Type ;
      From_Structure : in    Simple_Structure_Type) is
                            
   begin
      -- SRLE100001553
      -- Remove check on null input parameter, thus if the From_Structure is
      -- empty, an exception will be raised. We know that in order to get here, the structure
      -- has at least one entry in it. Any attempt to extract from an empty structure will 
      -- raise a constraint error exception. You have been warned.

      --
      -- set output parameter to be oldest entry (in time)
      --
      -- extract the parameters
      A_S_Integer := From_Structure.Iterator.all.S_Integer;
      A_S_Real := From_Structure.Iterator.all.S_Real;
      A_S_Text := From_Structure.Iterator.all.S_Text;
      A_S_Boolean := From_Structure.Iterator.all.S_Boolean;
      A_S_Colour := From_Structure.Iterator.all.S_Colour;
      From_Structure.Iterator.all := From_Structure.Iterator.all.Previous_Structure;

   end Extract;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Go_To_Start (Of_Structure : in Simple_Structure_Type) is
   begin
      if Of_Structure.Last_Entry /= null then
         Of_Structure.Iterator.all := Of_Structure.Last_Entry;
      end if;
   end Go_To_Start;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function Not_Empty (In_Structure : Simple_Structure_Type) return boolean is
   begin
      return Count_Of (In_Structure) /= 0;
   end Not_Empty;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function  Count_Of    (In_Structure : Simple_Structure_Type) return Application_Types.Base_Integer_Type is
      Temp_Count: Application_Types.Base_Integer_Type := 0;
   begin
      Temp_Count := In_Structure.Number_Of_Entries;
      return Temp_Count;
   end Count_Of;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Initialise (Object : in out Simple_Structure_Type) is

      Next:     Simple_Structure_Type_Node_Access;
      Old_Cell: Simple_Structure_Type_Node_Access;
     
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Simple_Structure_Type_Node, 
         Name   => Simple_Structure_Type_Node_Access);
               
   begin

      if Not_Empty(Object) then

         -- SRLE100003353
         -- Belt and braces approach is no longer appropriate.
         -- First_Entry will always contain data if the structure count is non-zero.
         -- If it doesn't then the data structure has been corrupted somehow; there
         -- is no way back from that.
         -- if Object.First_Entry /= null then

            Next := Object.First_Entry;

            while Next /= null loop
               Old_Cell := Next;
               Next := Next.Next_Structure;
               Free (Old_Cell);
            end loop;

         -- end if;

         Object.Iterator.all := null;
         Object.First_Entry  := null;
         Object.Last_Entry   := null;
         Object.Number_Of_Entries := 0;

      end if;

   end Initialise;
--  --
--  -------------------------------------------------------------------------------------------
--  --
    
   procedure Append (
      A_SS_Integer : in    Application_Types.Base_Integer_Type;
      A_SS_Real : in    Application_Types.Base_Float_Type;
      A_SS_Text : in    Application_Types.Base_Text_Type;
      A_SS_Boolean : in     Boolean;
      A_SS_Colour : in    Struct_Domain_Types.Colour_Type;
      To_Structure : in out Second_Simple_Structure_Type) is
                       
   Temp_Structure: Second_Simple_Structure_Type_Node_Access :=
      new Second_Simple_Structure_Type_Node'(
         SS_Integer  => A_SS_Integer,
         SS_Real  => A_SS_Real,
         SS_Text  => A_SS_Text,
         SS_Boolean  => A_SS_Boolean,
         SS_Colour  => A_SS_Colour,
         Next_Structure     => null,
         Previous_Structure => null);
   begin
    
      if To_Structure.First_Entry = null then
         To_Structure.Last_Entry := Temp_Structure;
      else
         To_Structure.First_Entry.Previous_Structure := Temp_Structure;
         Temp_Structure.Next_Structure := To_Structure.First_Entry;
      end if;

      To_Structure.First_Entry := Temp_Structure;
      To_Structure.Number_Of_Entries := To_Structure.Number_Of_Entries + 1;

   end Append;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Extract (
      A_SS_Integer :    out Application_Types.Base_Integer_Type ;
      A_SS_Real :    out Application_Types.Base_Float_Type ;
      A_SS_Text :    out Application_Types.Base_Text_Type ;
      A_SS_Boolean :    out  Boolean ;
      A_SS_Colour :    out Struct_Domain_Types.Colour_Type ;
      From_Structure : in    Second_Simple_Structure_Type) is
                            
   begin
      -- SRLE100001553
      -- Remove check on null input parameter, thus if the From_Structure is
      -- empty, an exception will be raised. We know that in order to get here, the structure
      -- has at least one entry in it. Any attempt to extract from an empty structure will 
      -- raise a constraint error exception. You have been warned.

      --
      -- set output parameter to be oldest entry (in time)
      --
      -- extract the parameters
      A_SS_Integer := From_Structure.Iterator.all.SS_Integer;
      A_SS_Real := From_Structure.Iterator.all.SS_Real;
      A_SS_Text := From_Structure.Iterator.all.SS_Text;
      A_SS_Boolean := From_Structure.Iterator.all.SS_Boolean;
      A_SS_Colour := From_Structure.Iterator.all.SS_Colour;
      From_Structure.Iterator.all := From_Structure.Iterator.all.Previous_Structure;

   end Extract;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Go_To_Start (Of_Structure : in Second_Simple_Structure_Type) is
   begin
      if Of_Structure.Last_Entry /= null then
         Of_Structure.Iterator.all := Of_Structure.Last_Entry;
      end if;
   end Go_To_Start;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function Not_Empty (In_Structure : Second_Simple_Structure_Type) return boolean is
   begin
      return Count_Of (In_Structure) /= 0;
   end Not_Empty;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function  Count_Of    (In_Structure : Second_Simple_Structure_Type) return Application_Types.Base_Integer_Type is
      Temp_Count: Application_Types.Base_Integer_Type := 0;
   begin
      Temp_Count := In_Structure.Number_Of_Entries;
      return Temp_Count;
   end Count_Of;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Initialise (Object : in out Second_Simple_Structure_Type) is

      Next:     Second_Simple_Structure_Type_Node_Access;
      Old_Cell: Second_Simple_Structure_Type_Node_Access;
     
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Second_Simple_Structure_Type_Node, 
         Name   => Second_Simple_Structure_Type_Node_Access);
               
   begin

      if Not_Empty(Object) then

         -- SRLE100003353
         -- Belt and braces approach is no longer appropriate.
         -- First_Entry will always contain data if the structure count is non-zero.
         -- If it doesn't then the data structure has been corrupted somehow; there
         -- is no way back from that.
         -- if Object.First_Entry /= null then

            Next := Object.First_Entry;

            while Next /= null loop
               Old_Cell := Next;
               Next := Next.Next_Structure;
               Free (Old_Cell);
            end loop;

         -- end if;

         Object.Iterator.all := null;
         Object.First_Entry  := null;
         Object.Last_Entry   := null;
         Object.Number_Of_Entries := 0;

      end if;

   end Initialise;
--  --
--  -------------------------------------------------------------------------------------------
--  --
    
   procedure Append (
      A_A_Top_Integer : in    Struct_Domain_Types.UDT_Integer_Type;
      A_A_Top_Real : in    Struct_Domain_Types.UDT_Real_Type;
      A_A_UDT_Structure : in    Struct_Domain_Types.UDT_Structure_Type;
      A_Basic_Integer : in    Application_Types.Base_Integer_Type;
      A_A_Colour : in    Struct_Domain_Types.Colour_Type;
      To_Structure : in out Complex_UDT_Structure_Type) is
                       
   Temp_Structure: Complex_UDT_Structure_Type_Node_Access :=
      new Complex_UDT_Structure_Type_Node'(
         A_Top_Integer  => A_A_Top_Integer,
         A_Top_Real  => A_A_Top_Real,
         A_UDT_Structure  => A_A_UDT_Structure,
         Basic_Integer  => A_Basic_Integer,
         A_Colour  => A_A_Colour,
         Next_Structure     => null,
         Previous_Structure => null);
   begin
    
      if To_Structure.First_Entry = null then
         To_Structure.Last_Entry := Temp_Structure;
      else
         To_Structure.First_Entry.Previous_Structure := Temp_Structure;
         Temp_Structure.Next_Structure := To_Structure.First_Entry;
      end if;

      To_Structure.First_Entry := Temp_Structure;
      To_Structure.Number_Of_Entries := To_Structure.Number_Of_Entries + 1;

   end Append;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Extract (
      A_A_Top_Integer :    out Struct_Domain_Types.UDT_Integer_Type ;
      A_A_Top_Real :    out Struct_Domain_Types.UDT_Real_Type ;
      A_A_UDT_Structure :    out Struct_Domain_Types.UDT_Structure_Type ;
      A_Basic_Integer :    out Application_Types.Base_Integer_Type ;
      A_A_Colour :    out Struct_Domain_Types.Colour_Type ;
      From_Structure : in    Complex_UDT_Structure_Type) is
                            
   begin
      -- SRLE100001553
      -- Remove check on null input parameter, thus if the From_Structure is
      -- empty, an exception will be raised. We know that in order to get here, the structure
      -- has at least one entry in it. Any attempt to extract from an empty structure will 
      -- raise a constraint error exception. You have been warned.

      --
      -- set output parameter to be oldest entry (in time)
      --
      -- extract the parameters
      A_A_Top_Integer := From_Structure.Iterator.all.A_Top_Integer;
      A_A_Top_Real := From_Structure.Iterator.all.A_Top_Real;
      A_A_UDT_Structure := From_Structure.Iterator.all.A_UDT_Structure;
      A_Basic_Integer := From_Structure.Iterator.all.Basic_Integer;
      A_A_Colour := From_Structure.Iterator.all.A_Colour;
      From_Structure.Iterator.all := From_Structure.Iterator.all.Previous_Structure;

   end Extract;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Go_To_Start (Of_Structure : in Complex_UDT_Structure_Type) is
   begin
      if Of_Structure.Last_Entry /= null then
         Of_Structure.Iterator.all := Of_Structure.Last_Entry;
      end if;
   end Go_To_Start;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function Not_Empty (In_Structure : Complex_UDT_Structure_Type) return boolean is
   begin
      return Count_Of (In_Structure) /= 0;
   end Not_Empty;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function  Count_Of    (In_Structure : Complex_UDT_Structure_Type) return Application_Types.Base_Integer_Type is
      Temp_Count: Application_Types.Base_Integer_Type := 0;
   begin
      Temp_Count := In_Structure.Number_Of_Entries;
      return Temp_Count;
   end Count_Of;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Initialise (Object : in out Complex_UDT_Structure_Type) is

      Next:     Complex_UDT_Structure_Type_Node_Access;
      Old_Cell: Complex_UDT_Structure_Type_Node_Access;
     
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Complex_UDT_Structure_Type_Node, 
         Name   => Complex_UDT_Structure_Type_Node_Access);
               
   begin

      if Not_Empty(Object) then

         -- SRLE100003353
         -- Belt and braces approach is no longer appropriate.
         -- First_Entry will always contain data if the structure count is non-zero.
         -- If it doesn't then the data structure has been corrupted somehow; there
         -- is no way back from that.
         -- if Object.First_Entry /= null then

            Next := Object.First_Entry;

            while Next /= null loop
               Old_Cell := Next;
               Next := Next.Next_Structure;
               Free (Old_Cell);
            end loop;

         -- end if;

         Object.Iterator.all := null;
         Object.First_Entry  := null;
         Object.Last_Entry   := null;
         Object.Number_Of_Entries := 0;

      end if;

   end Initialise;
--  --
--  -------------------------------------------------------------------------------------------
--  --
    
   procedure Append (
      A_Int_Val : in    Application_Types.Base_Integer_Type;
      A_Real_Val : in    Application_Types.Base_Float_Type;
      A_String_Val : in    Application_Types.Base_Text_Type;
      A_Col_Val : in    Struct_Domain_Types.Colour_Type;
      To_Structure : in out My_Second_Structure) is
                       
   Temp_Structure: My_Second_Structure_Node_Access :=
      new My_Second_Structure_Node'(
         Int_Val  => A_Int_Val,
         Real_Val  => A_Real_Val,
         String_Val  => A_String_Val,
         Col_Val  => A_Col_Val,
         Next_Structure     => null,
         Previous_Structure => null);
   begin
    
      if To_Structure.First_Entry = null then
         To_Structure.Last_Entry := Temp_Structure;
      else
         To_Structure.First_Entry.Previous_Structure := Temp_Structure;
         Temp_Structure.Next_Structure := To_Structure.First_Entry;
      end if;

      To_Structure.First_Entry := Temp_Structure;
      To_Structure.Number_Of_Entries := To_Structure.Number_Of_Entries + 1;

   end Append;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Extract (
      A_Int_Val :    out Application_Types.Base_Integer_Type ;
      A_Real_Val :    out Application_Types.Base_Float_Type ;
      A_String_Val :    out Application_Types.Base_Text_Type ;
      A_Col_Val :    out Struct_Domain_Types.Colour_Type ;
      From_Structure : in    My_Second_Structure) is
                            
   begin
      -- SRLE100001553
      -- Remove check on null input parameter, thus if the From_Structure is
      -- empty, an exception will be raised. We know that in order to get here, the structure
      -- has at least one entry in it. Any attempt to extract from an empty structure will 
      -- raise a constraint error exception. You have been warned.

      --
      -- set output parameter to be oldest entry (in time)
      --
      -- extract the parameters
      A_Int_Val := From_Structure.Iterator.all.Int_Val;
      A_Real_Val := From_Structure.Iterator.all.Real_Val;
      A_String_Val := From_Structure.Iterator.all.String_Val;
      A_Col_Val := From_Structure.Iterator.all.Col_Val;
      From_Structure.Iterator.all := From_Structure.Iterator.all.Previous_Structure;

   end Extract;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Go_To_Start (Of_Structure : in My_Second_Structure) is
   begin
      if Of_Structure.Last_Entry /= null then
         Of_Structure.Iterator.all := Of_Structure.Last_Entry;
      end if;
   end Go_To_Start;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function Not_Empty (In_Structure : My_Second_Structure) return boolean is
   begin
      return Count_Of (In_Structure) /= 0;
   end Not_Empty;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function  Count_Of    (In_Structure : My_Second_Structure) return Application_Types.Base_Integer_Type is
      Temp_Count: Application_Types.Base_Integer_Type := 0;
   begin
      Temp_Count := In_Structure.Number_Of_Entries;
      return Temp_Count;
   end Count_Of;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Initialise (Object : in out My_Second_Structure) is

      Next:     My_Second_Structure_Node_Access;
      Old_Cell: My_Second_Structure_Node_Access;
     
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => My_Second_Structure_Node, 
         Name   => My_Second_Structure_Node_Access);
               
   begin

      if Not_Empty(Object) then

         -- SRLE100003353
         -- Belt and braces approach is no longer appropriate.
         -- First_Entry will always contain data if the structure count is non-zero.
         -- If it doesn't then the data structure has been corrupted somehow; there
         -- is no way back from that.
         -- if Object.First_Entry /= null then

            Next := Object.First_Entry;

            while Next /= null loop
               Old_Cell := Next;
               Next := Next.Next_Structure;
               Free (Old_Cell);
            end loop;

         -- end if;

         Object.Iterator.all := null;
         Object.First_Entry  := null;
         Object.Last_Entry   := null;
         Object.Number_Of_Entries := 0;

      end if;

   end Initialise;
--  --
--  -------------------------------------------------------------------------------------------
--  --
    
   procedure Append (
      A_Int_Value : in    Application_Types.Base_Integer_Type;
      A_Colour_Value : in    Struct_Domain_Types.Colour_Type;
      To_Structure : in out My_Simple_Structure) is
                       
   Temp_Structure: My_Simple_Structure_Node_Access :=
      new My_Simple_Structure_Node'(
         Int_Value  => A_Int_Value,
         Colour_Value  => A_Colour_Value,
         Next_Structure     => null,
         Previous_Structure => null);
   begin
    
      if To_Structure.First_Entry = null then
         To_Structure.Last_Entry := Temp_Structure;
      else
         To_Structure.First_Entry.Previous_Structure := Temp_Structure;
         Temp_Structure.Next_Structure := To_Structure.First_Entry;
      end if;

      To_Structure.First_Entry := Temp_Structure;
      To_Structure.Number_Of_Entries := To_Structure.Number_Of_Entries + 1;

   end Append;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Extract (
      A_Int_Value :    out Application_Types.Base_Integer_Type ;
      A_Colour_Value :    out Struct_Domain_Types.Colour_Type ;
      From_Structure : in    My_Simple_Structure) is
                            
   begin
      -- SRLE100001553
      -- Remove check on null input parameter, thus if the From_Structure is
      -- empty, an exception will be raised. We know that in order to get here, the structure
      -- has at least one entry in it. Any attempt to extract from an empty structure will 
      -- raise a constraint error exception. You have been warned.

      --
      -- set output parameter to be oldest entry (in time)
      --
      -- extract the parameters
      A_Int_Value := From_Structure.Iterator.all.Int_Value;
      A_Colour_Value := From_Structure.Iterator.all.Colour_Value;
      From_Structure.Iterator.all := From_Structure.Iterator.all.Previous_Structure;

   end Extract;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Go_To_Start (Of_Structure : in My_Simple_Structure) is
   begin
      if Of_Structure.Last_Entry /= null then
         Of_Structure.Iterator.all := Of_Structure.Last_Entry;
      end if;
   end Go_To_Start;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function Not_Empty (In_Structure : My_Simple_Structure) return boolean is
   begin
      return Count_Of (In_Structure) /= 0;
   end Not_Empty;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function  Count_Of    (In_Structure : My_Simple_Structure) return Application_Types.Base_Integer_Type is
      Temp_Count: Application_Types.Base_Integer_Type := 0;
   begin
      Temp_Count := In_Structure.Number_Of_Entries;
      return Temp_Count;
   end Count_Of;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Initialise (Object : in out My_Simple_Structure) is

      Next:     My_Simple_Structure_Node_Access;
      Old_Cell: My_Simple_Structure_Node_Access;
     
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => My_Simple_Structure_Node, 
         Name   => My_Simple_Structure_Node_Access);
               
   begin

      if Not_Empty(Object) then

         -- SRLE100003353
         -- Belt and braces approach is no longer appropriate.
         -- First_Entry will always contain data if the structure count is non-zero.
         -- If it doesn't then the data structure has been corrupted somehow; there
         -- is no way back from that.
         -- if Object.First_Entry /= null then

            Next := Object.First_Entry;

            while Next /= null loop
               Old_Cell := Next;
               Next := Next.Next_Structure;
               Free (Old_Cell);
            end loop;

         -- end if;

         Object.Iterator.all := null;
         Object.First_Entry  := null;
         Object.Last_Entry   := null;
         Object.Number_Of_Entries := 0;

      end if;

   end Initialise;
--  --
--  -------------------------------------------------------------------------------------------
--  --
    
   procedure Append (
      A_Third_Nested_Integer : in    Application_Types.Base_Integer_Type;
      A_The_Holy_Grail : in    Struct_Domain_Types.Colour_Type;
      To_Structure : in out Third_Nested_Structure_Type) is
                       
   Temp_Structure: Third_Nested_Structure_Type_Node_Access :=
      new Third_Nested_Structure_Type_Node'(
         Third_Nested_Integer  => A_Third_Nested_Integer,
         The_Holy_Grail  => A_The_Holy_Grail,
         Next_Structure     => null,
         Previous_Structure => null);
   begin
    
      if To_Structure.First_Entry = null then
         To_Structure.Last_Entry := Temp_Structure;
      else
         To_Structure.First_Entry.Previous_Structure := Temp_Structure;
         Temp_Structure.Next_Structure := To_Structure.First_Entry;
      end if;

      To_Structure.First_Entry := Temp_Structure;
      To_Structure.Number_Of_Entries := To_Structure.Number_Of_Entries + 1;

   end Append;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Extract (
      A_Third_Nested_Integer :    out Application_Types.Base_Integer_Type ;
      A_The_Holy_Grail :    out Struct_Domain_Types.Colour_Type ;
      From_Structure : in    Third_Nested_Structure_Type) is
                            
   begin
      -- SRLE100001553
      -- Remove check on null input parameter, thus if the From_Structure is
      -- empty, an exception will be raised. We know that in order to get here, the structure
      -- has at least one entry in it. Any attempt to extract from an empty structure will 
      -- raise a constraint error exception. You have been warned.

      --
      -- set output parameter to be oldest entry (in time)
      --
      -- extract the parameters
      A_Third_Nested_Integer := From_Structure.Iterator.all.Third_Nested_Integer;
      A_The_Holy_Grail := From_Structure.Iterator.all.The_Holy_Grail;
      From_Structure.Iterator.all := From_Structure.Iterator.all.Previous_Structure;

   end Extract;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Go_To_Start (Of_Structure : in Third_Nested_Structure_Type) is
   begin
      if Of_Structure.Last_Entry /= null then
         Of_Structure.Iterator.all := Of_Structure.Last_Entry;
      end if;
   end Go_To_Start;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function Not_Empty (In_Structure : Third_Nested_Structure_Type) return boolean is
   begin
      return Count_Of (In_Structure) /= 0;
   end Not_Empty;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function  Count_Of    (In_Structure : Third_Nested_Structure_Type) return Application_Types.Base_Integer_Type is
      Temp_Count: Application_Types.Base_Integer_Type := 0;
   begin
      Temp_Count := In_Structure.Number_Of_Entries;
      return Temp_Count;
   end Count_Of;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Initialise (Object : in out Third_Nested_Structure_Type) is

      Next:     Third_Nested_Structure_Type_Node_Access;
      Old_Cell: Third_Nested_Structure_Type_Node_Access;
     
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Third_Nested_Structure_Type_Node, 
         Name   => Third_Nested_Structure_Type_Node_Access);
               
   begin

      if Not_Empty(Object) then

         -- SRLE100003353
         -- Belt and braces approach is no longer appropriate.
         -- First_Entry will always contain data if the structure count is non-zero.
         -- If it doesn't then the data structure has been corrupted somehow; there
         -- is no way back from that.
         -- if Object.First_Entry /= null then

            Next := Object.First_Entry;

            while Next /= null loop
               Old_Cell := Next;
               Next := Next.Next_Structure;
               Free (Old_Cell);
            end loop;

         -- end if;

         Object.Iterator.all := null;
         Object.First_Entry  := null;
         Object.Last_Entry   := null;
         Object.Number_Of_Entries := 0;

      end if;

   end Initialise;
--  --
--  -------------------------------------------------------------------------------------------
--  --
    
   procedure Append (
      A_Third_Nested_Structure : in    Struct_Domain_Types.Third_Nested_Structure_Type;
      A_Third_Nested_Integer : in    Application_Types.Base_Integer_Type;
      To_Structure : in out Second_Nested_Structure_Type) is
                       
   Temp_Structure: Second_Nested_Structure_Type_Node_Access :=
      new Second_Nested_Structure_Type_Node'(
         Third_Nested_Structure  => A_Third_Nested_Structure,
         Third_Nested_Integer  => A_Third_Nested_Integer,
         Next_Structure     => null,
         Previous_Structure => null);
   begin
    
      if To_Structure.First_Entry = null then
         To_Structure.Last_Entry := Temp_Structure;
      else
         To_Structure.First_Entry.Previous_Structure := Temp_Structure;
         Temp_Structure.Next_Structure := To_Structure.First_Entry;
      end if;

      To_Structure.First_Entry := Temp_Structure;
      To_Structure.Number_Of_Entries := To_Structure.Number_Of_Entries + 1;

   end Append;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Extract (
      A_Third_Nested_Structure :    out Struct_Domain_Types.Third_Nested_Structure_Type ;
      A_Third_Nested_Integer :    out Application_Types.Base_Integer_Type ;
      From_Structure : in    Second_Nested_Structure_Type) is
                            
   begin
      -- SRLE100001553
      -- Remove check on null input parameter, thus if the From_Structure is
      -- empty, an exception will be raised. We know that in order to get here, the structure
      -- has at least one entry in it. Any attempt to extract from an empty structure will 
      -- raise a constraint error exception. You have been warned.

      --
      -- set output parameter to be oldest entry (in time)
      --
      -- extract the parameters
      A_Third_Nested_Structure := From_Structure.Iterator.all.Third_Nested_Structure;
      A_Third_Nested_Integer := From_Structure.Iterator.all.Third_Nested_Integer;
      From_Structure.Iterator.all := From_Structure.Iterator.all.Previous_Structure;

   end Extract;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Go_To_Start (Of_Structure : in Second_Nested_Structure_Type) is
   begin
      if Of_Structure.Last_Entry /= null then
         Of_Structure.Iterator.all := Of_Structure.Last_Entry;
      end if;
   end Go_To_Start;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function Not_Empty (In_Structure : Second_Nested_Structure_Type) return boolean is
   begin
      return Count_Of (In_Structure) /= 0;
   end Not_Empty;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function  Count_Of    (In_Structure : Second_Nested_Structure_Type) return Application_Types.Base_Integer_Type is
      Temp_Count: Application_Types.Base_Integer_Type := 0;
   begin
      Temp_Count := In_Structure.Number_Of_Entries;
      return Temp_Count;
   end Count_Of;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Initialise (Object : in out Second_Nested_Structure_Type) is

      Next:     Second_Nested_Structure_Type_Node_Access;
      Old_Cell: Second_Nested_Structure_Type_Node_Access;
     
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Second_Nested_Structure_Type_Node, 
         Name   => Second_Nested_Structure_Type_Node_Access);
               
   begin

      if Not_Empty(Object) then

         -- SRLE100003353
         -- Belt and braces approach is no longer appropriate.
         -- First_Entry will always contain data if the structure count is non-zero.
         -- If it doesn't then the data structure has been corrupted somehow; there
         -- is no way back from that.
         -- if Object.First_Entry /= null then

            Next := Object.First_Entry;

            while Next /= null loop
               Old_Cell := Next;
               Next := Next.Next_Structure;
               Free (Old_Cell);
            end loop;

         -- end if;

         Object.Iterator.all := null;
         Object.First_Entry  := null;
         Object.Last_Entry   := null;
         Object.Number_Of_Entries := 0;

      end if;

   end Initialise;
--  --
--  -------------------------------------------------------------------------------------------
--  --
    
   procedure Append (
      A_Second_Nested_Structure : in    Struct_Domain_Types.Second_Nested_Structure_Type;
      A_First_Nested_Integer : in    Application_Types.Base_Integer_Type;
      To_Structure : in out First_Nested_Structure_Type) is
                       
   Temp_Structure: First_Nested_Structure_Type_Node_Access :=
      new First_Nested_Structure_Type_Node'(
         Second_Nested_Structure  => A_Second_Nested_Structure,
         First_Nested_Integer  => A_First_Nested_Integer,
         Next_Structure     => null,
         Previous_Structure => null);
   begin
    
      if To_Structure.First_Entry = null then
         To_Structure.Last_Entry := Temp_Structure;
      else
         To_Structure.First_Entry.Previous_Structure := Temp_Structure;
         Temp_Structure.Next_Structure := To_Structure.First_Entry;
      end if;

      To_Structure.First_Entry := Temp_Structure;
      To_Structure.Number_Of_Entries := To_Structure.Number_Of_Entries + 1;

   end Append;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Extract (
      A_Second_Nested_Structure :    out Struct_Domain_Types.Second_Nested_Structure_Type ;
      A_First_Nested_Integer :    out Application_Types.Base_Integer_Type ;
      From_Structure : in    First_Nested_Structure_Type) is
                            
   begin
      -- SRLE100001553
      -- Remove check on null input parameter, thus if the From_Structure is
      -- empty, an exception will be raised. We know that in order to get here, the structure
      -- has at least one entry in it. Any attempt to extract from an empty structure will 
      -- raise a constraint error exception. You have been warned.

      --
      -- set output parameter to be oldest entry (in time)
      --
      -- extract the parameters
      A_Second_Nested_Structure := From_Structure.Iterator.all.Second_Nested_Structure;
      A_First_Nested_Integer := From_Structure.Iterator.all.First_Nested_Integer;
      From_Structure.Iterator.all := From_Structure.Iterator.all.Previous_Structure;

   end Extract;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Go_To_Start (Of_Structure : in First_Nested_Structure_Type) is
   begin
      if Of_Structure.Last_Entry /= null then
         Of_Structure.Iterator.all := Of_Structure.Last_Entry;
      end if;
   end Go_To_Start;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function Not_Empty (In_Structure : First_Nested_Structure_Type) return boolean is
   begin
      return Count_Of (In_Structure) /= 0;
   end Not_Empty;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function  Count_Of    (In_Structure : First_Nested_Structure_Type) return Application_Types.Base_Integer_Type is
      Temp_Count: Application_Types.Base_Integer_Type := 0;
   begin
      Temp_Count := In_Structure.Number_Of_Entries;
      return Temp_Count;
   end Count_Of;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Initialise (Object : in out First_Nested_Structure_Type) is

      Next:     First_Nested_Structure_Type_Node_Access;
      Old_Cell: First_Nested_Structure_Type_Node_Access;
     
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => First_Nested_Structure_Type_Node, 
         Name   => First_Nested_Structure_Type_Node_Access);
               
   begin

      if Not_Empty(Object) then

         -- SRLE100003353
         -- Belt and braces approach is no longer appropriate.
         -- First_Entry will always contain data if the structure count is non-zero.
         -- If it doesn't then the data structure has been corrupted somehow; there
         -- is no way back from that.
         -- if Object.First_Entry /= null then

            Next := Object.First_Entry;

            while Next /= null loop
               Old_Cell := Next;
               Next := Next.Next_Structure;
               Free (Old_Cell);
            end loop;

         -- end if;

         Object.Iterator.all := null;
         Object.First_Entry  := null;
         Object.Last_Entry   := null;
         Object.Number_Of_Entries := 0;

      end if;

   end Initialise;
--  --
--  -------------------------------------------------------------------------------------------
--  --
    
   procedure Append (
      A_First_Structure : in    Struct_Domain_Types.Simple_Structure_Type;
      A_Second_Structure : in    Struct_Domain_Types.Third_Nested_Structure_Type;
      To_Structure : in out Two_Structures_Type) is
                       
   Temp_Structure: Two_Structures_Type_Node_Access :=
      new Two_Structures_Type_Node'(
         First_Structure  => A_First_Structure,
         Second_Structure  => A_Second_Structure,
         Next_Structure     => null,
         Previous_Structure => null);
   begin
    
      if To_Structure.First_Entry = null then
         To_Structure.Last_Entry := Temp_Structure;
      else
         To_Structure.First_Entry.Previous_Structure := Temp_Structure;
         Temp_Structure.Next_Structure := To_Structure.First_Entry;
      end if;

      To_Structure.First_Entry := Temp_Structure;
      To_Structure.Number_Of_Entries := To_Structure.Number_Of_Entries + 1;

   end Append;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Extract (
      A_First_Structure :    out Struct_Domain_Types.Simple_Structure_Type ;
      A_Second_Structure :    out Struct_Domain_Types.Third_Nested_Structure_Type ;
      From_Structure : in    Two_Structures_Type) is
                            
   begin
      -- SRLE100001553
      -- Remove check on null input parameter, thus if the From_Structure is
      -- empty, an exception will be raised. We know that in order to get here, the structure
      -- has at least one entry in it. Any attempt to extract from an empty structure will 
      -- raise a constraint error exception. You have been warned.

      --
      -- set output parameter to be oldest entry (in time)
      --
      -- extract the parameters
      A_First_Structure := From_Structure.Iterator.all.First_Structure;
      A_Second_Structure := From_Structure.Iterator.all.Second_Structure;
      From_Structure.Iterator.all := From_Structure.Iterator.all.Previous_Structure;

   end Extract;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Go_To_Start (Of_Structure : in Two_Structures_Type) is
   begin
      if Of_Structure.Last_Entry /= null then
         Of_Structure.Iterator.all := Of_Structure.Last_Entry;
      end if;
   end Go_To_Start;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function Not_Empty (In_Structure : Two_Structures_Type) return boolean is
   begin
      return Count_Of (In_Structure) /= 0;
   end Not_Empty;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function  Count_Of    (In_Structure : Two_Structures_Type) return Application_Types.Base_Integer_Type is
      Temp_Count: Application_Types.Base_Integer_Type := 0;
   begin
      Temp_Count := In_Structure.Number_Of_Entries;
      return Temp_Count;
   end Count_Of;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Initialise (Object : in out Two_Structures_Type) is

      Next:     Two_Structures_Type_Node_Access;
      Old_Cell: Two_Structures_Type_Node_Access;
     
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Two_Structures_Type_Node, 
         Name   => Two_Structures_Type_Node_Access);
               
   begin

      if Not_Empty(Object) then

         -- SRLE100003353
         -- Belt and braces approach is no longer appropriate.
         -- First_Entry will always contain data if the structure count is non-zero.
         -- If it doesn't then the data structure has been corrupted somehow; there
         -- is no way back from that.
         -- if Object.First_Entry /= null then

            Next := Object.First_Entry;

            while Next /= null loop
               Old_Cell := Next;
               Next := Next.Next_Structure;
               Free (Old_Cell);
            end loop;

         -- end if;

         Object.Iterator.all := null;
         Object.First_Entry  := null;
         Object.Last_Entry   := null;
         Object.Number_Of_Entries := 0;

      end if;

   end Initialise;
--  --
--  -------------------------------------------------------------------------------------------
--  --
    
   procedure Append (
      A_Initial_Structure : in    Struct_Domain_Types.First_Nested_Structure_Type;
      A_Secondary_Structure : in    Struct_Domain_Types.Second_Nested_Structure_Type;
      A_Penultimate_Structure : in    Struct_Domain_Types.Third_Nested_Structure_Type;
      A_Buried_Integer : in    Application_Types.Base_Integer_Type;
      To_Structure : in out Multiple_Structures_Type) is
                       
   Temp_Structure: Multiple_Structures_Type_Node_Access :=
      new Multiple_Structures_Type_Node'(
         Initial_Structure  => A_Initial_Structure,
         Secondary_Structure  => A_Secondary_Structure,
         Penultimate_Structure  => A_Penultimate_Structure,
         Buried_Integer  => A_Buried_Integer,
         Next_Structure     => null,
         Previous_Structure => null);
   begin
    
      if To_Structure.First_Entry = null then
         To_Structure.Last_Entry := Temp_Structure;
      else
         To_Structure.First_Entry.Previous_Structure := Temp_Structure;
         Temp_Structure.Next_Structure := To_Structure.First_Entry;
      end if;

      To_Structure.First_Entry := Temp_Structure;
      To_Structure.Number_Of_Entries := To_Structure.Number_Of_Entries + 1;

   end Append;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Extract (
      A_Initial_Structure :    out Struct_Domain_Types.First_Nested_Structure_Type ;
      A_Secondary_Structure :    out Struct_Domain_Types.Second_Nested_Structure_Type ;
      A_Penultimate_Structure :    out Struct_Domain_Types.Third_Nested_Structure_Type ;
      A_Buried_Integer :    out Application_Types.Base_Integer_Type ;
      From_Structure : in    Multiple_Structures_Type) is
                            
   begin
      -- SRLE100001553
      -- Remove check on null input parameter, thus if the From_Structure is
      -- empty, an exception will be raised. We know that in order to get here, the structure
      -- has at least one entry in it. Any attempt to extract from an empty structure will 
      -- raise a constraint error exception. You have been warned.

      --
      -- set output parameter to be oldest entry (in time)
      --
      -- extract the parameters
      A_Initial_Structure := From_Structure.Iterator.all.Initial_Structure;
      A_Secondary_Structure := From_Structure.Iterator.all.Secondary_Structure;
      A_Penultimate_Structure := From_Structure.Iterator.all.Penultimate_Structure;
      A_Buried_Integer := From_Structure.Iterator.all.Buried_Integer;
      From_Structure.Iterator.all := From_Structure.Iterator.all.Previous_Structure;

   end Extract;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Go_To_Start (Of_Structure : in Multiple_Structures_Type) is
   begin
      if Of_Structure.Last_Entry /= null then
         Of_Structure.Iterator.all := Of_Structure.Last_Entry;
      end if;
   end Go_To_Start;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function Not_Empty (In_Structure : Multiple_Structures_Type) return boolean is
   begin
      return Count_Of (In_Structure) /= 0;
   end Not_Empty;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   function  Count_Of    (In_Structure : Multiple_Structures_Type) return Application_Types.Base_Integer_Type is
      Temp_Count: Application_Types.Base_Integer_Type := 0;
   begin
      Temp_Count := In_Structure.Number_Of_Entries;
      return Temp_Count;
   end Count_Of;
--  --
--  -------------------------------------------------------------------------------------------
--  --
   procedure Initialise (Object : in out Multiple_Structures_Type) is

      Next:     Multiple_Structures_Type_Node_Access;
      Old_Cell: Multiple_Structures_Type_Node_Access;
     
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Multiple_Structures_Type_Node, 
         Name   => Multiple_Structures_Type_Node_Access);
               
   begin

      if Not_Empty(Object) then

         -- SRLE100003353
         -- Belt and braces approach is no longer appropriate.
         -- First_Entry will always contain data if the structure count is non-zero.
         -- If it doesn't then the data structure has been corrupted somehow; there
         -- is no way back from that.
         -- if Object.First_Entry /= null then

            Next := Object.First_Entry;

            while Next /= null loop
               Old_Cell := Next;
               Next := Next.Next_Structure;
               Free (Old_Cell);
            end loop;

         -- end if;

         Object.Iterator.all := null;
         Object.First_Entry  := null;
         Object.Last_Entry   := null;
         Object.Number_Of_Entries := 0;

      end if;

   end Initialise;
--  --
--  -------------------------------------------------------------------------------------------
--  --
----------------------------------------------------------------------------------------------
end Struct_Domain_Types.Ops;

