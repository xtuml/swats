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
--* File Name:               Struct_domain_types.adb
--* Drawing Number:          Refer to release documentation                           *
--* Version:                 As detailed by Configuration Management System           *
--* Version Date:            As detailed by Configuration Management System           *
--* Creation Date:           As detailed by Configuration Management System           *
--* Section/Unit:            Refer to release documentation                           *
--* Description:             
--*                          Type-specific operations on Domain Data Structure Types
--* Comments:                Header written by header.macro                           *
--*                           
--*                                                                                   *
--*************************************************************************************
--*                            SUPPLEMENTAL INFORMATION                               *
--*                            ------------------------                               *
--*  OVERVIEW                                                                         *
--*  --------                                                                         *
--*  This archetype provides operations on structures defined for this domain
--*  This package body is conditionally generated for domains containing structures only. 
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
--*  package body Struct_Domain_Types 
--*
--*************************************************************************************
--  MODIFICATION RECORD
--  --------------------
--     NAME     DATE             ECR No            MODIFICATION
--
--    jmm     13/03/00        008932/9SR056     Add tests and definitions for structures and sets of structures.
--
--    jmm     05/07/00        PILOT_0000_0381   Rework structures as controlled types.
--
--    jmm     05/07/00        PILOT_0000_0446   Remove dummy procedure Number_Of_Navigates and replace by pragma 
--                                              Elaborate_Body in package spec.
--
--    jmm     03/10/00        PILOT_0000_0600   Changes for issue 3.0.0 in accordance with ATN_037_03_01.
--
--    jmm     26/01/01        PILOT_0000_0714   Extra checks made to enable copy of null structures.
--
--    db      04/07/01        PILOT_0000_0231   Rename package filename to match package definition.
--
--    db      15/03/02        SRLE100002863     Conditionally generate only if Structures 
--                                              exist in this domain.
--
--    db      12/04/02        SRLE100001553     Default values corrected
--
--    ANF     04/07/06        001798 9SR056     Archetype language reformatted
--
-- **************************************************************************************
--

with Ada.Unchecked_Deallocation;

package body Struct_Domain_Types is

   procedure Initialize (Object: in out Structure_and_IH_Type) is

   begin
   
      Object.Iterator    := new Structure_and_IH_Type_Node_Access;
      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Initialize;

   --------------------------------------------------------------------------------------------

   procedure Adjust (Object: in out Structure_and_IH_Type) is
    
      Next:        Structure_and_IH_Type_Node_Access := null;
      Header_Cell: Structure_and_IH_Type_Node_Access := null;
      Last_Cell:   Structure_and_IH_Type_Node_Access := null;
      New_Cell:    Structure_and_IH_Type_Node_Access := null;

   begin

      if Object.First_Entry /= null then
      
         Next        := Object.First_Entry;
         Header_Cell := new Structure_and_IH_Type_Node;
         Last_Cell   := Header_Cell;
      
         Header_Cell.A_Defined_IH := Next.A_Defined_IH;
    
         Next := Next.Next_Structure;

         while Next /= null loop

            New_Cell := new Structure_and_IH_Type_Node'(
               A_Defined_IH => Next.A_Defined_IH,
               Next_Structure     => null,
               Previous_Structure => null);

            Last_Cell.Next_Structure                    := New_Cell;
            Last_Cell.Next_Structure.Previous_Structure := Last_Cell;
            Last_Cell                                   := New_Cell;
            Next                                        := Next.Next_Structure;

         end loop;

         Object.First_Entry := Header_Cell;
         Object.Last_Entry  := Last_Cell;

      end if;

      Object.Iterator := new Structure_and_IH_Type_Node_Access;

   end Adjust;

   --------------------------------------------------------------------------------------------

   procedure Finalize (Object: in out Structure_and_IH_Type) is

      Next:     Structure_and_IH_Type_Node_Access := null;
      Old_Cell: Structure_and_IH_Type_Node_Access := null;
    
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Structure_and_IH_Type_Node, 
         Name   => Structure_and_IH_Type_Node_Access);
        
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Structure_and_IH_Type_Node_Access, 
         Name   => Structure_and_IH_Type_Node_Access_Pointer);
              
   begin

      if Object.First_Entry /= null then

         Next := Object.First_Entry;

         while Next /= null loop

            Old_Cell := Next;
            Next     := Next.Next_Structure;

            Free (Old_Cell);

         end loop;

      end if;

      Free (Object.Iterator);

      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Finalize;

   -------------------------------------------------------------------------------------------

   procedure Initialize (Object: in out Very_Simple_Structure_Type) is

   begin
   
      Object.Iterator    := new Very_Simple_Structure_Type_Node_Access;
      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Initialize;

   --------------------------------------------------------------------------------------------

   procedure Adjust (Object: in out Very_Simple_Structure_Type) is
    
      Next:        Very_Simple_Structure_Type_Node_Access := null;
      Header_Cell: Very_Simple_Structure_Type_Node_Access := null;
      Last_Cell:   Very_Simple_Structure_Type_Node_Access := null;
      New_Cell:    Very_Simple_Structure_Type_Node_Access := null;

   begin

      if Object.First_Entry /= null then
      
         Next        := Object.First_Entry;
         Header_Cell := new Very_Simple_Structure_Type_Node;
         Last_Cell   := Header_Cell;
      
         Header_Cell.Basic_Integer := Next.Basic_Integer;
    
         Next := Next.Next_Structure;

         while Next /= null loop

            New_Cell := new Very_Simple_Structure_Type_Node'(
               Basic_Integer => Next.Basic_Integer,
               Next_Structure     => null,
               Previous_Structure => null);

            Last_Cell.Next_Structure                    := New_Cell;
            Last_Cell.Next_Structure.Previous_Structure := Last_Cell;
            Last_Cell                                   := New_Cell;
            Next                                        := Next.Next_Structure;

         end loop;

         Object.First_Entry := Header_Cell;
         Object.Last_Entry  := Last_Cell;

      end if;

      Object.Iterator := new Very_Simple_Structure_Type_Node_Access;

   end Adjust;

   --------------------------------------------------------------------------------------------

   procedure Finalize (Object: in out Very_Simple_Structure_Type) is

      Next:     Very_Simple_Structure_Type_Node_Access := null;
      Old_Cell: Very_Simple_Structure_Type_Node_Access := null;
    
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Very_Simple_Structure_Type_Node, 
         Name   => Very_Simple_Structure_Type_Node_Access);
        
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Very_Simple_Structure_Type_Node_Access, 
         Name   => Very_Simple_Structure_Type_Node_Access_Pointer);
              
   begin

      if Object.First_Entry /= null then

         Next := Object.First_Entry;

         while Next /= null loop

            Old_Cell := Next;
            Next     := Next.Next_Structure;

            Free (Old_Cell);

         end loop;

      end if;

      Free (Object.Iterator);

      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Finalize;

   -------------------------------------------------------------------------------------------

   procedure Initialize (Object: in out Different_Structure_Type) is

   begin
   
      Object.Iterator    := new Different_Structure_Type_Node_Access;
      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Initialize;

   --------------------------------------------------------------------------------------------

   procedure Adjust (Object: in out Different_Structure_Type) is
    
      Next:        Different_Structure_Type_Node_Access := null;
      Header_Cell: Different_Structure_Type_Node_Access := null;
      Last_Cell:   Different_Structure_Type_Node_Access := null;
      New_Cell:    Different_Structure_Type_Node_Access := null;

   begin

      if Object.First_Entry /= null then
      
         Next        := Object.First_Entry;
         Header_Cell := new Different_Structure_Type_Node;
         Last_Cell   := Header_Cell;
      
         Header_Cell.Alternative_Colour := Next.Alternative_Colour;
         Header_Cell.Extra_Member := Next.Extra_Member;
    
         Next := Next.Next_Structure;

         while Next /= null loop

            New_Cell := new Different_Structure_Type_Node'(
               Alternative_Colour => Next.Alternative_Colour,
               Extra_Member => Next.Extra_Member,
               Next_Structure     => null,
               Previous_Structure => null);

            Last_Cell.Next_Structure                    := New_Cell;
            Last_Cell.Next_Structure.Previous_Structure := Last_Cell;
            Last_Cell                                   := New_Cell;
            Next                                        := Next.Next_Structure;

         end loop;

         Object.First_Entry := Header_Cell;
         Object.Last_Entry  := Last_Cell;

      end if;

      Object.Iterator := new Different_Structure_Type_Node_Access;

   end Adjust;

   --------------------------------------------------------------------------------------------

   procedure Finalize (Object: in out Different_Structure_Type) is

      Next:     Different_Structure_Type_Node_Access := null;
      Old_Cell: Different_Structure_Type_Node_Access := null;
    
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Different_Structure_Type_Node, 
         Name   => Different_Structure_Type_Node_Access);
        
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Different_Structure_Type_Node_Access, 
         Name   => Different_Structure_Type_Node_Access_Pointer);
              
   begin

      if Object.First_Entry /= null then

         Next := Object.First_Entry;

         while Next /= null loop

            Old_Cell := Next;
            Next     := Next.Next_Structure;

            Free (Old_Cell);

         end loop;

      end if;

      Free (Object.Iterator);

      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Finalize;

   -------------------------------------------------------------------------------------------

   procedure Initialize (Object: in out UDT_Structure_Type) is

   begin
   
      Object.Iterator    := new UDT_Structure_Type_Node_Access;
      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Initialize;

   --------------------------------------------------------------------------------------------

   procedure Adjust (Object: in out UDT_Structure_Type) is
    
      Next:        UDT_Structure_Type_Node_Access := null;
      Header_Cell: UDT_Structure_Type_Node_Access := null;
      Last_Cell:   UDT_Structure_Type_Node_Access := null;
      New_Cell:    UDT_Structure_Type_Node_Access := null;

   begin

      if Object.First_Entry /= null then
      
         Next        := Object.First_Entry;
         Header_Cell := new UDT_Structure_Type_Node;
         Last_Cell   := Header_Cell;
      
         Header_Cell.An_Integer := Next.An_Integer;
         Header_Cell.A_Real := Next.A_Real;
    
         Next := Next.Next_Structure;

         while Next /= null loop

            New_Cell := new UDT_Structure_Type_Node'(
               An_Integer => Next.An_Integer,
               A_Real => Next.A_Real,
               Next_Structure     => null,
               Previous_Structure => null);

            Last_Cell.Next_Structure                    := New_Cell;
            Last_Cell.Next_Structure.Previous_Structure := Last_Cell;
            Last_Cell                                   := New_Cell;
            Next                                        := Next.Next_Structure;

         end loop;

         Object.First_Entry := Header_Cell;
         Object.Last_Entry  := Last_Cell;

      end if;

      Object.Iterator := new UDT_Structure_Type_Node_Access;

   end Adjust;

   --------------------------------------------------------------------------------------------

   procedure Finalize (Object: in out UDT_Structure_Type) is

      Next:     UDT_Structure_Type_Node_Access := null;
      Old_Cell: UDT_Structure_Type_Node_Access := null;
    
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => UDT_Structure_Type_Node, 
         Name   => UDT_Structure_Type_Node_Access);
        
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => UDT_Structure_Type_Node_Access, 
         Name   => UDT_Structure_Type_Node_Access_Pointer);
              
   begin

      if Object.First_Entry /= null then

         Next := Object.First_Entry;

         while Next /= null loop

            Old_Cell := Next;
            Next     := Next.Next_Structure;

            Free (Old_Cell);

         end loop;

      end if;

      Free (Object.Iterator);

      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Finalize;

   -------------------------------------------------------------------------------------------

   procedure Initialize (Object: in out Name_and_Type_Linked_Simple_Structure_Type) is

   begin
   
      Object.Iterator    := new Name_and_Type_Linked_Simple_Structure_Type_Node_Access;
      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Initialize;

   --------------------------------------------------------------------------------------------

   procedure Adjust (Object: in out Name_and_Type_Linked_Simple_Structure_Type) is
    
      Next:        Name_and_Type_Linked_Simple_Structure_Type_Node_Access := null;
      Header_Cell: Name_and_Type_Linked_Simple_Structure_Type_Node_Access := null;
      Last_Cell:   Name_and_Type_Linked_Simple_Structure_Type_Node_Access := null;
      New_Cell:    Name_and_Type_Linked_Simple_Structure_Type_Node_Access := null;

   begin

      if Object.First_Entry /= null then
      
         Next        := Object.First_Entry;
         Header_Cell := new Name_and_Type_Linked_Simple_Structure_Type_Node;
         Last_Cell   := Header_Cell;
      
         Header_Cell.An_Integer := Next.An_Integer;
         Header_Cell.A_Real := Next.A_Real;
         Header_Cell.Some_Text := Next.Some_Text;
         Header_Cell.A_Boolean := Next.A_Boolean;
    
         Next := Next.Next_Structure;

         while Next /= null loop

            New_Cell := new Name_and_Type_Linked_Simple_Structure_Type_Node'(
               An_Integer => Next.An_Integer,
               A_Real => Next.A_Real,
               Some_Text => Next.Some_Text,
               A_Boolean => Next.A_Boolean,
               Next_Structure     => null,
               Previous_Structure => null);

            Last_Cell.Next_Structure                    := New_Cell;
            Last_Cell.Next_Structure.Previous_Structure := Last_Cell;
            Last_Cell                                   := New_Cell;
            Next                                        := Next.Next_Structure;

         end loop;

         Object.First_Entry := Header_Cell;
         Object.Last_Entry  := Last_Cell;

      end if;

      Object.Iterator := new Name_and_Type_Linked_Simple_Structure_Type_Node_Access;

   end Adjust;

   --------------------------------------------------------------------------------------------

   procedure Finalize (Object: in out Name_and_Type_Linked_Simple_Structure_Type) is

      Next:     Name_and_Type_Linked_Simple_Structure_Type_Node_Access := null;
      Old_Cell: Name_and_Type_Linked_Simple_Structure_Type_Node_Access := null;
    
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Name_and_Type_Linked_Simple_Structure_Type_Node, 
         Name   => Name_and_Type_Linked_Simple_Structure_Type_Node_Access);
        
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Name_and_Type_Linked_Simple_Structure_Type_Node_Access, 
         Name   => Name_and_Type_Linked_Simple_Structure_Type_Node_Access_Pointer);
              
   begin

      if Object.First_Entry /= null then

         Next := Object.First_Entry;

         while Next /= null loop

            Old_Cell := Next;
            Next     := Next.Next_Structure;

            Free (Old_Cell);

         end loop;

      end if;

      Free (Object.Iterator);

      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Finalize;

   -------------------------------------------------------------------------------------------

   procedure Initialize (Object: in out Type_Linked_Simple_Structure_Type) is

   begin
   
      Object.Iterator    := new Type_Linked_Simple_Structure_Type_Node_Access;
      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Initialize;

   --------------------------------------------------------------------------------------------

   procedure Adjust (Object: in out Type_Linked_Simple_Structure_Type) is
    
      Next:        Type_Linked_Simple_Structure_Type_Node_Access := null;
      Header_Cell: Type_Linked_Simple_Structure_Type_Node_Access := null;
      Last_Cell:   Type_Linked_Simple_Structure_Type_Node_Access := null;
      New_Cell:    Type_Linked_Simple_Structure_Type_Node_Access := null;

   begin

      if Object.First_Entry /= null then
      
         Next        := Object.First_Entry;
         Header_Cell := new Type_Linked_Simple_Structure_Type_Node;
         Last_Cell   := Header_Cell;
      
         Header_Cell.TLS_Integer := Next.TLS_Integer;
         Header_Cell.TLS_Real := Next.TLS_Real;
         Header_Cell.TLS_Text := Next.TLS_Text;
         Header_Cell.TLS_Boolean := Next.TLS_Boolean;
    
         Next := Next.Next_Structure;

         while Next /= null loop

            New_Cell := new Type_Linked_Simple_Structure_Type_Node'(
               TLS_Integer => Next.TLS_Integer,
               TLS_Real => Next.TLS_Real,
               TLS_Text => Next.TLS_Text,
               TLS_Boolean => Next.TLS_Boolean,
               Next_Structure     => null,
               Previous_Structure => null);

            Last_Cell.Next_Structure                    := New_Cell;
            Last_Cell.Next_Structure.Previous_Structure := Last_Cell;
            Last_Cell                                   := New_Cell;
            Next                                        := Next.Next_Structure;

         end loop;

         Object.First_Entry := Header_Cell;
         Object.Last_Entry  := Last_Cell;

      end if;

      Object.Iterator := new Type_Linked_Simple_Structure_Type_Node_Access;

   end Adjust;

   --------------------------------------------------------------------------------------------

   procedure Finalize (Object: in out Type_Linked_Simple_Structure_Type) is

      Next:     Type_Linked_Simple_Structure_Type_Node_Access := null;
      Old_Cell: Type_Linked_Simple_Structure_Type_Node_Access := null;
    
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Type_Linked_Simple_Structure_Type_Node, 
         Name   => Type_Linked_Simple_Structure_Type_Node_Access);
        
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Type_Linked_Simple_Structure_Type_Node_Access, 
         Name   => Type_Linked_Simple_Structure_Type_Node_Access_Pointer);
              
   begin

      if Object.First_Entry /= null then

         Next := Object.First_Entry;

         while Next /= null loop

            Old_Cell := Next;
            Next     := Next.Next_Structure;

            Free (Old_Cell);

         end loop;

      end if;

      Free (Object.Iterator);

      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Finalize;

   -------------------------------------------------------------------------------------------

   procedure Initialize (Object: in out Simple_Structure_Type) is

   begin
   
      Object.Iterator    := new Simple_Structure_Type_Node_Access;
      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Initialize;

   --------------------------------------------------------------------------------------------

   procedure Adjust (Object: in out Simple_Structure_Type) is
    
      Next:        Simple_Structure_Type_Node_Access := null;
      Header_Cell: Simple_Structure_Type_Node_Access := null;
      Last_Cell:   Simple_Structure_Type_Node_Access := null;
      New_Cell:    Simple_Structure_Type_Node_Access := null;

   begin

      if Object.First_Entry /= null then
      
         Next        := Object.First_Entry;
         Header_Cell := new Simple_Structure_Type_Node;
         Last_Cell   := Header_Cell;
      
         Header_Cell.S_Integer := Next.S_Integer;
         Header_Cell.S_Real := Next.S_Real;
         Header_Cell.S_Text := Next.S_Text;
         Header_Cell.S_Boolean := Next.S_Boolean;
         Header_Cell.S_Colour := Next.S_Colour;
    
         Next := Next.Next_Structure;

         while Next /= null loop

            New_Cell := new Simple_Structure_Type_Node'(
               S_Integer => Next.S_Integer,
               S_Real => Next.S_Real,
               S_Text => Next.S_Text,
               S_Boolean => Next.S_Boolean,
               S_Colour => Next.S_Colour,
               Next_Structure     => null,
               Previous_Structure => null);

            Last_Cell.Next_Structure                    := New_Cell;
            Last_Cell.Next_Structure.Previous_Structure := Last_Cell;
            Last_Cell                                   := New_Cell;
            Next                                        := Next.Next_Structure;

         end loop;

         Object.First_Entry := Header_Cell;
         Object.Last_Entry  := Last_Cell;

      end if;

      Object.Iterator := new Simple_Structure_Type_Node_Access;

   end Adjust;

   --------------------------------------------------------------------------------------------

   procedure Finalize (Object: in out Simple_Structure_Type) is

      Next:     Simple_Structure_Type_Node_Access := null;
      Old_Cell: Simple_Structure_Type_Node_Access := null;
    
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Simple_Structure_Type_Node, 
         Name   => Simple_Structure_Type_Node_Access);
        
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Simple_Structure_Type_Node_Access, 
         Name   => Simple_Structure_Type_Node_Access_Pointer);
              
   begin

      if Object.First_Entry /= null then

         Next := Object.First_Entry;

         while Next /= null loop

            Old_Cell := Next;
            Next     := Next.Next_Structure;

            Free (Old_Cell);

         end loop;

      end if;

      Free (Object.Iterator);

      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Finalize;

   -------------------------------------------------------------------------------------------

   procedure Initialize (Object: in out Second_Simple_Structure_Type) is

   begin
   
      Object.Iterator    := new Second_Simple_Structure_Type_Node_Access;
      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Initialize;

   --------------------------------------------------------------------------------------------

   procedure Adjust (Object: in out Second_Simple_Structure_Type) is
    
      Next:        Second_Simple_Structure_Type_Node_Access := null;
      Header_Cell: Second_Simple_Structure_Type_Node_Access := null;
      Last_Cell:   Second_Simple_Structure_Type_Node_Access := null;
      New_Cell:    Second_Simple_Structure_Type_Node_Access := null;

   begin

      if Object.First_Entry /= null then
      
         Next        := Object.First_Entry;
         Header_Cell := new Second_Simple_Structure_Type_Node;
         Last_Cell   := Header_Cell;
      
         Header_Cell.SS_Integer := Next.SS_Integer;
         Header_Cell.SS_Real := Next.SS_Real;
         Header_Cell.SS_Text := Next.SS_Text;
         Header_Cell.SS_Boolean := Next.SS_Boolean;
         Header_Cell.SS_Colour := Next.SS_Colour;
    
         Next := Next.Next_Structure;

         while Next /= null loop

            New_Cell := new Second_Simple_Structure_Type_Node'(
               SS_Integer => Next.SS_Integer,
               SS_Real => Next.SS_Real,
               SS_Text => Next.SS_Text,
               SS_Boolean => Next.SS_Boolean,
               SS_Colour => Next.SS_Colour,
               Next_Structure     => null,
               Previous_Structure => null);

            Last_Cell.Next_Structure                    := New_Cell;
            Last_Cell.Next_Structure.Previous_Structure := Last_Cell;
            Last_Cell                                   := New_Cell;
            Next                                        := Next.Next_Structure;

         end loop;

         Object.First_Entry := Header_Cell;
         Object.Last_Entry  := Last_Cell;

      end if;

      Object.Iterator := new Second_Simple_Structure_Type_Node_Access;

   end Adjust;

   --------------------------------------------------------------------------------------------

   procedure Finalize (Object: in out Second_Simple_Structure_Type) is

      Next:     Second_Simple_Structure_Type_Node_Access := null;
      Old_Cell: Second_Simple_Structure_Type_Node_Access := null;
    
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Second_Simple_Structure_Type_Node, 
         Name   => Second_Simple_Structure_Type_Node_Access);
        
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Second_Simple_Structure_Type_Node_Access, 
         Name   => Second_Simple_Structure_Type_Node_Access_Pointer);
              
   begin

      if Object.First_Entry /= null then

         Next := Object.First_Entry;

         while Next /= null loop

            Old_Cell := Next;
            Next     := Next.Next_Structure;

            Free (Old_Cell);

         end loop;

      end if;

      Free (Object.Iterator);

      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Finalize;

   -------------------------------------------------------------------------------------------

   procedure Initialize (Object: in out Complex_UDT_Structure_Type) is

   begin
   
      Object.Iterator    := new Complex_UDT_Structure_Type_Node_Access;
      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Initialize;

   --------------------------------------------------------------------------------------------

   procedure Adjust (Object: in out Complex_UDT_Structure_Type) is
    
      Next:        Complex_UDT_Structure_Type_Node_Access := null;
      Header_Cell: Complex_UDT_Structure_Type_Node_Access := null;
      Last_Cell:   Complex_UDT_Structure_Type_Node_Access := null;
      New_Cell:    Complex_UDT_Structure_Type_Node_Access := null;

   begin

      if Object.First_Entry /= null then
      
         Next        := Object.First_Entry;
         Header_Cell := new Complex_UDT_Structure_Type_Node;
         Last_Cell   := Header_Cell;
      
         Header_Cell.A_Top_Integer := Next.A_Top_Integer;
         Header_Cell.A_Top_Real := Next.A_Top_Real;
         Header_Cell.A_UDT_Structure := Next.A_UDT_Structure;
         Header_Cell.Basic_Integer := Next.Basic_Integer;
         Header_Cell.A_Colour := Next.A_Colour;
    
         Next := Next.Next_Structure;

         while Next /= null loop

            New_Cell := new Complex_UDT_Structure_Type_Node'(
               A_Top_Integer => Next.A_Top_Integer,
               A_Top_Real => Next.A_Top_Real,
               A_UDT_Structure => Next.A_UDT_Structure,
               Basic_Integer => Next.Basic_Integer,
               A_Colour => Next.A_Colour,
               Next_Structure     => null,
               Previous_Structure => null);

            Last_Cell.Next_Structure                    := New_Cell;
            Last_Cell.Next_Structure.Previous_Structure := Last_Cell;
            Last_Cell                                   := New_Cell;
            Next                                        := Next.Next_Structure;

         end loop;

         Object.First_Entry := Header_Cell;
         Object.Last_Entry  := Last_Cell;

      end if;

      Object.Iterator := new Complex_UDT_Structure_Type_Node_Access;

   end Adjust;

   --------------------------------------------------------------------------------------------

   procedure Finalize (Object: in out Complex_UDT_Structure_Type) is

      Next:     Complex_UDT_Structure_Type_Node_Access := null;
      Old_Cell: Complex_UDT_Structure_Type_Node_Access := null;
    
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Complex_UDT_Structure_Type_Node, 
         Name   => Complex_UDT_Structure_Type_Node_Access);
        
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Complex_UDT_Structure_Type_Node_Access, 
         Name   => Complex_UDT_Structure_Type_Node_Access_Pointer);
              
   begin

      if Object.First_Entry /= null then

         Next := Object.First_Entry;

         while Next /= null loop

            Old_Cell := Next;
            Next     := Next.Next_Structure;

            Free (Old_Cell);

         end loop;

      end if;

      Free (Object.Iterator);

      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Finalize;

   -------------------------------------------------------------------------------------------

   procedure Initialize (Object: in out My_Second_Structure) is

   begin
   
      Object.Iterator    := new My_Second_Structure_Node_Access;
      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Initialize;

   --------------------------------------------------------------------------------------------

   procedure Adjust (Object: in out My_Second_Structure) is
    
      Next:        My_Second_Structure_Node_Access := null;
      Header_Cell: My_Second_Structure_Node_Access := null;
      Last_Cell:   My_Second_Structure_Node_Access := null;
      New_Cell:    My_Second_Structure_Node_Access := null;

   begin

      if Object.First_Entry /= null then
      
         Next        := Object.First_Entry;
         Header_Cell := new My_Second_Structure_Node;
         Last_Cell   := Header_Cell;
      
         Header_Cell.Int_Val := Next.Int_Val;
         Header_Cell.Real_Val := Next.Real_Val;
         Header_Cell.String_Val := Next.String_Val;
         Header_Cell.Col_Val := Next.Col_Val;
    
         Next := Next.Next_Structure;

         while Next /= null loop

            New_Cell := new My_Second_Structure_Node'(
               Int_Val => Next.Int_Val,
               Real_Val => Next.Real_Val,
               String_Val => Next.String_Val,
               Col_Val => Next.Col_Val,
               Next_Structure     => null,
               Previous_Structure => null);

            Last_Cell.Next_Structure                    := New_Cell;
            Last_Cell.Next_Structure.Previous_Structure := Last_Cell;
            Last_Cell                                   := New_Cell;
            Next                                        := Next.Next_Structure;

         end loop;

         Object.First_Entry := Header_Cell;
         Object.Last_Entry  := Last_Cell;

      end if;

      Object.Iterator := new My_Second_Structure_Node_Access;

   end Adjust;

   --------------------------------------------------------------------------------------------

   procedure Finalize (Object: in out My_Second_Structure) is

      Next:     My_Second_Structure_Node_Access := null;
      Old_Cell: My_Second_Structure_Node_Access := null;
    
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => My_Second_Structure_Node, 
         Name   => My_Second_Structure_Node_Access);
        
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => My_Second_Structure_Node_Access, 
         Name   => My_Second_Structure_Node_Access_Pointer);
              
   begin

      if Object.First_Entry /= null then

         Next := Object.First_Entry;

         while Next /= null loop

            Old_Cell := Next;
            Next     := Next.Next_Structure;

            Free (Old_Cell);

         end loop;

      end if;

      Free (Object.Iterator);

      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Finalize;

   -------------------------------------------------------------------------------------------

   procedure Initialize (Object: in out My_Simple_Structure) is

   begin
   
      Object.Iterator    := new My_Simple_Structure_Node_Access;
      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Initialize;

   --------------------------------------------------------------------------------------------

   procedure Adjust (Object: in out My_Simple_Structure) is
    
      Next:        My_Simple_Structure_Node_Access := null;
      Header_Cell: My_Simple_Structure_Node_Access := null;
      Last_Cell:   My_Simple_Structure_Node_Access := null;
      New_Cell:    My_Simple_Structure_Node_Access := null;

   begin

      if Object.First_Entry /= null then
      
         Next        := Object.First_Entry;
         Header_Cell := new My_Simple_Structure_Node;
         Last_Cell   := Header_Cell;
      
         Header_Cell.Int_Value := Next.Int_Value;
         Header_Cell.Colour_Value := Next.Colour_Value;
    
         Next := Next.Next_Structure;

         while Next /= null loop

            New_Cell := new My_Simple_Structure_Node'(
               Int_Value => Next.Int_Value,
               Colour_Value => Next.Colour_Value,
               Next_Structure     => null,
               Previous_Structure => null);

            Last_Cell.Next_Structure                    := New_Cell;
            Last_Cell.Next_Structure.Previous_Structure := Last_Cell;
            Last_Cell                                   := New_Cell;
            Next                                        := Next.Next_Structure;

         end loop;

         Object.First_Entry := Header_Cell;
         Object.Last_Entry  := Last_Cell;

      end if;

      Object.Iterator := new My_Simple_Structure_Node_Access;

   end Adjust;

   --------------------------------------------------------------------------------------------

   procedure Finalize (Object: in out My_Simple_Structure) is

      Next:     My_Simple_Structure_Node_Access := null;
      Old_Cell: My_Simple_Structure_Node_Access := null;
    
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => My_Simple_Structure_Node, 
         Name   => My_Simple_Structure_Node_Access);
        
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => My_Simple_Structure_Node_Access, 
         Name   => My_Simple_Structure_Node_Access_Pointer);
              
   begin

      if Object.First_Entry /= null then

         Next := Object.First_Entry;

         while Next /= null loop

            Old_Cell := Next;
            Next     := Next.Next_Structure;

            Free (Old_Cell);

         end loop;

      end if;

      Free (Object.Iterator);

      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Finalize;

   -------------------------------------------------------------------------------------------

   procedure Initialize (Object: in out Third_Nested_Structure_Type) is

   begin
   
      Object.Iterator    := new Third_Nested_Structure_Type_Node_Access;
      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Initialize;

   --------------------------------------------------------------------------------------------

   procedure Adjust (Object: in out Third_Nested_Structure_Type) is
    
      Next:        Third_Nested_Structure_Type_Node_Access := null;
      Header_Cell: Third_Nested_Structure_Type_Node_Access := null;
      Last_Cell:   Third_Nested_Structure_Type_Node_Access := null;
      New_Cell:    Third_Nested_Structure_Type_Node_Access := null;

   begin

      if Object.First_Entry /= null then
      
         Next        := Object.First_Entry;
         Header_Cell := new Third_Nested_Structure_Type_Node;
         Last_Cell   := Header_Cell;
      
         Header_Cell.Third_Nested_Integer := Next.Third_Nested_Integer;
         Header_Cell.The_Holy_Grail := Next.The_Holy_Grail;
    
         Next := Next.Next_Structure;

         while Next /= null loop

            New_Cell := new Third_Nested_Structure_Type_Node'(
               Third_Nested_Integer => Next.Third_Nested_Integer,
               The_Holy_Grail => Next.The_Holy_Grail,
               Next_Structure     => null,
               Previous_Structure => null);

            Last_Cell.Next_Structure                    := New_Cell;
            Last_Cell.Next_Structure.Previous_Structure := Last_Cell;
            Last_Cell                                   := New_Cell;
            Next                                        := Next.Next_Structure;

         end loop;

         Object.First_Entry := Header_Cell;
         Object.Last_Entry  := Last_Cell;

      end if;

      Object.Iterator := new Third_Nested_Structure_Type_Node_Access;

   end Adjust;

   --------------------------------------------------------------------------------------------

   procedure Finalize (Object: in out Third_Nested_Structure_Type) is

      Next:     Third_Nested_Structure_Type_Node_Access := null;
      Old_Cell: Third_Nested_Structure_Type_Node_Access := null;
    
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Third_Nested_Structure_Type_Node, 
         Name   => Third_Nested_Structure_Type_Node_Access);
        
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Third_Nested_Structure_Type_Node_Access, 
         Name   => Third_Nested_Structure_Type_Node_Access_Pointer);
              
   begin

      if Object.First_Entry /= null then

         Next := Object.First_Entry;

         while Next /= null loop

            Old_Cell := Next;
            Next     := Next.Next_Structure;

            Free (Old_Cell);

         end loop;

      end if;

      Free (Object.Iterator);

      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Finalize;

   -------------------------------------------------------------------------------------------

   procedure Initialize (Object: in out Second_Nested_Structure_Type) is

   begin
   
      Object.Iterator    := new Second_Nested_Structure_Type_Node_Access;
      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Initialize;

   --------------------------------------------------------------------------------------------

   procedure Adjust (Object: in out Second_Nested_Structure_Type) is
    
      Next:        Second_Nested_Structure_Type_Node_Access := null;
      Header_Cell: Second_Nested_Structure_Type_Node_Access := null;
      Last_Cell:   Second_Nested_Structure_Type_Node_Access := null;
      New_Cell:    Second_Nested_Structure_Type_Node_Access := null;

   begin

      if Object.First_Entry /= null then
      
         Next        := Object.First_Entry;
         Header_Cell := new Second_Nested_Structure_Type_Node;
         Last_Cell   := Header_Cell;
      
         Header_Cell.Third_Nested_Structure := Next.Third_Nested_Structure;
         Header_Cell.Third_Nested_Integer := Next.Third_Nested_Integer;
    
         Next := Next.Next_Structure;

         while Next /= null loop

            New_Cell := new Second_Nested_Structure_Type_Node'(
               Third_Nested_Structure => Next.Third_Nested_Structure,
               Third_Nested_Integer => Next.Third_Nested_Integer,
               Next_Structure     => null,
               Previous_Structure => null);

            Last_Cell.Next_Structure                    := New_Cell;
            Last_Cell.Next_Structure.Previous_Structure := Last_Cell;
            Last_Cell                                   := New_Cell;
            Next                                        := Next.Next_Structure;

         end loop;

         Object.First_Entry := Header_Cell;
         Object.Last_Entry  := Last_Cell;

      end if;

      Object.Iterator := new Second_Nested_Structure_Type_Node_Access;

   end Adjust;

   --------------------------------------------------------------------------------------------

   procedure Finalize (Object: in out Second_Nested_Structure_Type) is

      Next:     Second_Nested_Structure_Type_Node_Access := null;
      Old_Cell: Second_Nested_Structure_Type_Node_Access := null;
    
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Second_Nested_Structure_Type_Node, 
         Name   => Second_Nested_Structure_Type_Node_Access);
        
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Second_Nested_Structure_Type_Node_Access, 
         Name   => Second_Nested_Structure_Type_Node_Access_Pointer);
              
   begin

      if Object.First_Entry /= null then

         Next := Object.First_Entry;

         while Next /= null loop

            Old_Cell := Next;
            Next     := Next.Next_Structure;

            Free (Old_Cell);

         end loop;

      end if;

      Free (Object.Iterator);

      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Finalize;

   -------------------------------------------------------------------------------------------

   procedure Initialize (Object: in out First_Nested_Structure_Type) is

   begin
   
      Object.Iterator    := new First_Nested_Structure_Type_Node_Access;
      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Initialize;

   --------------------------------------------------------------------------------------------

   procedure Adjust (Object: in out First_Nested_Structure_Type) is
    
      Next:        First_Nested_Structure_Type_Node_Access := null;
      Header_Cell: First_Nested_Structure_Type_Node_Access := null;
      Last_Cell:   First_Nested_Structure_Type_Node_Access := null;
      New_Cell:    First_Nested_Structure_Type_Node_Access := null;

   begin

      if Object.First_Entry /= null then
      
         Next        := Object.First_Entry;
         Header_Cell := new First_Nested_Structure_Type_Node;
         Last_Cell   := Header_Cell;
      
         Header_Cell.Second_Nested_Structure := Next.Second_Nested_Structure;
         Header_Cell.First_Nested_Integer := Next.First_Nested_Integer;
    
         Next := Next.Next_Structure;

         while Next /= null loop

            New_Cell := new First_Nested_Structure_Type_Node'(
               Second_Nested_Structure => Next.Second_Nested_Structure,
               First_Nested_Integer => Next.First_Nested_Integer,
               Next_Structure     => null,
               Previous_Structure => null);

            Last_Cell.Next_Structure                    := New_Cell;
            Last_Cell.Next_Structure.Previous_Structure := Last_Cell;
            Last_Cell                                   := New_Cell;
            Next                                        := Next.Next_Structure;

         end loop;

         Object.First_Entry := Header_Cell;
         Object.Last_Entry  := Last_Cell;

      end if;

      Object.Iterator := new First_Nested_Structure_Type_Node_Access;

   end Adjust;

   --------------------------------------------------------------------------------------------

   procedure Finalize (Object: in out First_Nested_Structure_Type) is

      Next:     First_Nested_Structure_Type_Node_Access := null;
      Old_Cell: First_Nested_Structure_Type_Node_Access := null;
    
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => First_Nested_Structure_Type_Node, 
         Name   => First_Nested_Structure_Type_Node_Access);
        
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => First_Nested_Structure_Type_Node_Access, 
         Name   => First_Nested_Structure_Type_Node_Access_Pointer);
              
   begin

      if Object.First_Entry /= null then

         Next := Object.First_Entry;

         while Next /= null loop

            Old_Cell := Next;
            Next     := Next.Next_Structure;

            Free (Old_Cell);

         end loop;

      end if;

      Free (Object.Iterator);

      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Finalize;

   -------------------------------------------------------------------------------------------

   procedure Initialize (Object: in out Two_Structures_Type) is

   begin
   
      Object.Iterator    := new Two_Structures_Type_Node_Access;
      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Initialize;

   --------------------------------------------------------------------------------------------

   procedure Adjust (Object: in out Two_Structures_Type) is
    
      Next:        Two_Structures_Type_Node_Access := null;
      Header_Cell: Two_Structures_Type_Node_Access := null;
      Last_Cell:   Two_Structures_Type_Node_Access := null;
      New_Cell:    Two_Structures_Type_Node_Access := null;

   begin

      if Object.First_Entry /= null then
      
         Next        := Object.First_Entry;
         Header_Cell := new Two_Structures_Type_Node;
         Last_Cell   := Header_Cell;
      
         Header_Cell.First_Structure := Next.First_Structure;
         Header_Cell.Second_Structure := Next.Second_Structure;
    
         Next := Next.Next_Structure;

         while Next /= null loop

            New_Cell := new Two_Structures_Type_Node'(
               First_Structure => Next.First_Structure,
               Second_Structure => Next.Second_Structure,
               Next_Structure     => null,
               Previous_Structure => null);

            Last_Cell.Next_Structure                    := New_Cell;
            Last_Cell.Next_Structure.Previous_Structure := Last_Cell;
            Last_Cell                                   := New_Cell;
            Next                                        := Next.Next_Structure;

         end loop;

         Object.First_Entry := Header_Cell;
         Object.Last_Entry  := Last_Cell;

      end if;

      Object.Iterator := new Two_Structures_Type_Node_Access;

   end Adjust;

   --------------------------------------------------------------------------------------------

   procedure Finalize (Object: in out Two_Structures_Type) is

      Next:     Two_Structures_Type_Node_Access := null;
      Old_Cell: Two_Structures_Type_Node_Access := null;
    
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Two_Structures_Type_Node, 
         Name   => Two_Structures_Type_Node_Access);
        
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Two_Structures_Type_Node_Access, 
         Name   => Two_Structures_Type_Node_Access_Pointer);
              
   begin

      if Object.First_Entry /= null then

         Next := Object.First_Entry;

         while Next /= null loop

            Old_Cell := Next;
            Next     := Next.Next_Structure;

            Free (Old_Cell);

         end loop;

      end if;

      Free (Object.Iterator);

      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Finalize;

   -------------------------------------------------------------------------------------------

   procedure Initialize (Object: in out Multiple_Structures_Type) is

   begin
   
      Object.Iterator    := new Multiple_Structures_Type_Node_Access;
      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Initialize;

   --------------------------------------------------------------------------------------------

   procedure Adjust (Object: in out Multiple_Structures_Type) is
    
      Next:        Multiple_Structures_Type_Node_Access := null;
      Header_Cell: Multiple_Structures_Type_Node_Access := null;
      Last_Cell:   Multiple_Structures_Type_Node_Access := null;
      New_Cell:    Multiple_Structures_Type_Node_Access := null;

   begin

      if Object.First_Entry /= null then
      
         Next        := Object.First_Entry;
         Header_Cell := new Multiple_Structures_Type_Node;
         Last_Cell   := Header_Cell;
      
         Header_Cell.Initial_Structure := Next.Initial_Structure;
         Header_Cell.Secondary_Structure := Next.Secondary_Structure;
         Header_Cell.Penultimate_Structure := Next.Penultimate_Structure;
         Header_Cell.Buried_Integer := Next.Buried_Integer;
    
         Next := Next.Next_Structure;

         while Next /= null loop

            New_Cell := new Multiple_Structures_Type_Node'(
               Initial_Structure => Next.Initial_Structure,
               Secondary_Structure => Next.Secondary_Structure,
               Penultimate_Structure => Next.Penultimate_Structure,
               Buried_Integer => Next.Buried_Integer,
               Next_Structure     => null,
               Previous_Structure => null);

            Last_Cell.Next_Structure                    := New_Cell;
            Last_Cell.Next_Structure.Previous_Structure := Last_Cell;
            Last_Cell                                   := New_Cell;
            Next                                        := Next.Next_Structure;

         end loop;

         Object.First_Entry := Header_Cell;
         Object.Last_Entry  := Last_Cell;

      end if;

      Object.Iterator := new Multiple_Structures_Type_Node_Access;

   end Adjust;

   --------------------------------------------------------------------------------------------

   procedure Finalize (Object: in out Multiple_Structures_Type) is

      Next:     Multiple_Structures_Type_Node_Access := null;
      Old_Cell: Multiple_Structures_Type_Node_Access := null;
    
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Multiple_Structures_Type_Node, 
         Name   => Multiple_Structures_Type_Node_Access);
        
      procedure Free is new Ada.Unchecked_Deallocation (
         Object => Multiple_Structures_Type_Node_Access, 
         Name   => Multiple_Structures_Type_Node_Access_Pointer);
              
   begin

      if Object.First_Entry /= null then

         Next := Object.First_Entry;

         while Next /= null loop

            Old_Cell := Next;
            Next     := Next.Next_Structure;

            Free (Old_Cell);

         end loop;

      end if;

      Free (Object.Iterator);

      Object.First_Entry := null;
      Object.Last_Entry  := null;

   end Finalize;

   -------------------------------------------------------------------------------------------

end Struct_Domain_Types;

