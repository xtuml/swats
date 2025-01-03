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
--* File Name:               Events_objX_4.ada
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
with Root_Object.Events.objZ;
with Root_Object.Events.objX;

with Application_Types;
use type Application_Types.Base_Integer_Type;
use type Application_Types.Base_Float_Type;
use type Application_Types.Base_Text_Type;
use type Application_Types.Time_Unit;

with Root_Object;
use type Root_Object.Object_Access;


separate(Root_Object.Events.objX)
   
   procedure Events_objX_4 (Test_No       : in     Application_Types.Base_Integer_Type;
                            Which_Test    : in     Application_Types.Base_Text_Type;
                            This_Instance : in out Root_Object.Object_Access) is
   
      
      temp_Inst : Root_Object.Object_Access;
      tempZ     : Root_Object.Object_Access;
      
      Returning_No : Application_Types.Base_Integer_Type := 1;
      
   begin
      
      if Which_Test =  "Read_Target_Instance            " then
         
         if Root_Object.Events.objX.Events_objX_type(This_Instance.all).Integer_Att =  100 then
            
            if Root_Object.Events.objX.Events_objX_type(This_Instance.all).Real_Att =  99.9 then
               
               if Root_Object.Events.objX.Events_objX_type(This_Instance.all).Text_Att =  "Test_Data                       " then
                  
                  if (not Root_Object.Events.objX.Events_objX_type(This_Instance.all).Boolean_Att) then
                     Returning_No := -10;
                  else
                     Returning_No := 1;
                  end if;
                  
               else
                  Returning_No := -20;
               end if;
               
            else
               Returning_No := -30;
            end if;
            
         else
            Returning_No := -40;
            
         end if;
         
         
         declare
            Pushed_Event : Root_Object.Root_Event_Access_Type;
         begin
            Pushed_Event := new
            Root_Object.Events.objX.Events_objX2'(Root_Object.Root_Event_Type with
               This_Event_Class => Root_Object.Events.objX.objX2,
               Target_Instance  => This_Instance,
               Test_No          => Test_No,
               The_Test         => "Check_Attributes                ",
               Returning_No     => Returning_No);
            
            Root_Object.Events.objX.Push (
               Event  => Pushed_Event,
               To_Top => True);
         end;
      else
         
         if Which_Test =  "Write_Target_Instance           " then
            
            Root_Object.Events.objX.Events_objX_type(This_Instance.all).Integer_Att := 200;
            Root_Object.Events.objX.Events_objX_type(This_Instance.all).Real_Att    := 199.9;
            Root_Object.Events.objX.Events_objX_type(This_Instance.all).Text_Att    := "New_Data                        ";
            Root_Object.Events.objX.Events_objX_type(This_Instance.all).Boolean_Att := False;
            
            
            declare
               Pushed_Event : Root_Object.Root_Event_Access_Type;
            begin
               Pushed_Event := new
               Root_Object.Events.objX.Events_objX2'(Root_Object.Root_Event_Type with
                  This_Event_Class => Root_Object.Events.objX.objX2,
                  Target_Instance  => This_Instance,
                  Test_No          => Test_No,
                  The_Test         => "Check_New_Attributes            ",
                  Returning_No     => Returning_No);
               
               Root_Object.Events.objX.Push (
                  Event  => Pushed_Event,
                  To_Top => True);
            end;
         else
            
            if Which_Test =  "Read_Other_Instance             " then
               temp_Inst := Root_Object.Events.objX.Conditional_Find_One;
               while (temp_Inst /= null) and then (not (Root_Object.Events.objX.Events_objX_Type(temp_Inst.all).The_Test_No =  Test_No) ) loop
                  
                  temp_Inst := temp_Inst.Next_Object;
               end loop;
               
               
               if temp_Inst /= Null then
                  
                  if Root_Object.Events.objX.Events_objX_type(temp_Inst.all).Integer_Att =  1111 then
                     
                     if Root_Object.Events.objX.Events_objX_type(temp_Inst.all).Real_Att =  11.1 then
                        
                        if Root_Object.Events.objX.Events_objX_type(temp_Inst.all).Text_Att =  "Dummy_Data                      " then
                           
                           if Root_Object.Events.objX.Events_objX_type(temp_Inst.all).Boolean_Att then
                              
                              Returning_No := -10;
                           else
                              Returning_No := 1;
                           end if;
                           
                        else
                           Returning_No := -20;
                        end if;
                        
                     else
                        Returning_No := -30;
                     end if;
                     
                  else
                     Returning_No := -40;
                  end if;
                  
               else
                  Returning_No := -50;
                  
               end if;
               
               
               declare
                  Pushed_Event : Root_Object.Root_Event_Access_Type;
               begin
                  Pushed_Event := new
                  Root_Object.Events.objX.Events_objX2'(Root_Object.Root_Event_Type with
                     This_Event_Class => Root_Object.Events.objX.objX2,
                     Target_Instance  => This_Instance,
                     Test_No          => Test_No,
                     The_Test         => "Check_Inst_Attributes           ",
                     Returning_No     => Returning_No);
                  
                  Root_Object.Events.objX.Push (
                     Event  => Pushed_Event,
                     To_Top => True);
               end;
            else
               
               if Which_Test =  "Write_Other_Instance            " then
                  temp_Inst := Root_Object.Events.objX.Conditional_Find_One;
                  while (temp_Inst /= null) and then (not (Root_Object.Events.objX.Events_objX_Type(temp_Inst.all).The_Test_No =  Test_No) ) loop
                     
                     temp_Inst := temp_Inst.Next_Object;
                  end loop;
                  
                  
                  Root_Object.Events.objX.Events_objX_type(temp_Inst.all).Integer_Att := 300;
                  Root_Object.Events.objX.Events_objX_type(temp_Inst.all).Real_Att    := 299.9;
                  Root_Object.Events.objX.Events_objX_type(temp_Inst.all).Text_Att    := "More_Data                       ";
                  Root_Object.Events.objX.Events_objX_type(temp_Inst.all).Boolean_Att := False;
                  
                  
                  declare
                     Pushed_Event : Root_Object.Root_Event_Access_Type;
                  begin
                     Pushed_Event := new
                     Root_Object.Events.objX.Events_objX2'(Root_Object.Root_Event_Type with
                        This_Event_Class => Root_Object.Events.objX.objX2,
                        Target_Instance  => This_Instance,
                        Test_No          => Test_No,
                        The_Test         => "Check_New_Inst_Attributes       ",
                        Returning_No     => Returning_No);
                     
                     Root_Object.Events.objX.Push (
                        Event  => Pushed_Event,
                        To_Top => True);
                  end;
               else
                  
                  if Which_Test =  "Read_Other_Object               " then
                     tempZ := Root_Object.Events.objZ.Conditional_Find_One;
                     while (tempZ /= null) and then (not (Root_Object.Events.objZ.Events_objZ_Type(tempZ.all).The_Test_No =  Test_No) ) loop
                        
                        tempZ := tempZ.Next_Object;
                     end loop;
                     
                     
                     if Root_Object.Events.objZ.Events_objZ_type(tempZ.all).Int_Att =  1000 then
                        
                        if Root_Object.Events.objZ.Events_objZ_type(tempZ.all).Real_Att =  1000.0 then
                           
                           if Root_Object.Events.objZ.Events_objZ_type(tempZ.all).Text_Att =  "Test_Data                       " then
                              
                              Returning_No := 1;
                           else
                              Returning_No := -10;
                           end if;
                           
                        else
                           Returning_No := -20;
                        end if;
                        
                     else
                        Returning_No := -30;
                        
                     end if;
                     
                     
                     declare
                        Pushed_Event : Root_Object.Root_Event_Access_Type;
                     begin
                        Pushed_Event := new
                        Root_Object.Events.objX.Events_objX2'(Root_Object.Root_Event_Type with
                           This_Event_Class => Root_Object.Events.objX.objX2,
                           Target_Instance  => This_Instance,
                           Test_No          => Test_No,
                           The_Test         => "Check_Other_Object              ",
                           Returning_No     => Returning_No);
                        
                        Root_Object.Events.objX.Push (
                           Event  => Pushed_Event,
                           To_Top => True);
                     end;
                  else
                     
                     if Which_Test =  "Write_Other_Object              " then
                        tempZ := Root_Object.Events.objZ.Conditional_Find_One;
                        while (tempZ /= null) and then (not (Root_Object.Events.objZ.Events_objZ_Type(tempZ.all).The_Test_No =  Test_No) ) loop
                           
                           tempZ := tempZ.Next_Object;
                        end loop;
                        
                        
                        Root_Object.Events.objZ.Events_objZ_type(tempZ.all).Int_Att  := 2000;
                        Root_Object.Events.objZ.Events_objZ_type(tempZ.all).Real_Att := 2000.0;
                        Root_Object.Events.objZ.Events_objZ_type(tempZ.all).Text_Att := "New_Test_Data                   ";
                        
                        
                        declare
                           Pushed_Event : Root_Object.Root_Event_Access_Type;
                        begin
                           Pushed_Event := new
                           Root_Object.Events.objX.Events_objX2'(Root_Object.Root_Event_Type with
                              This_Event_Class => Root_Object.Events.objX.objX2,
                              Target_Instance  => This_Instance,
                              Test_No          => Test_No,
                              The_Test         => "Check_New_Other_Object          ",
                              Returning_No     => Returning_No);
                           
                           Root_Object.Events.objX.Push (
                              Event  => Pushed_Event,
                              To_Top => True);
                        end;
                     else
                        
                        declare
                           Pushed_Event : Root_Object.Root_Event_Access_Type;
                        begin
                           Pushed_Event := new
                           Root_Object.Events.objX.Events_objX2'(Root_Object.Root_Event_Type with
                              This_Event_Class => Root_Object.Events.objX.objX2,
                              Target_Instance  => This_Instance,
                              Test_No          => Test_No,
                              The_Test         => "Unknown_Test                    ",
                              Returning_No     => Returning_No);
                           
                           Root_Object.Events.objX.Push (
                              Event  => Pushed_Event,
                              To_Top => True);
                        end;
                     end if;
                     
                  end if;
                  
               end if;
               
            end if;
            
         end if;
         
      end if;
      
      Root_Object.Events.objX.Process_Queue;
   end Events_objX_4;
   
--
-- End of file Events_objX_4.ada
--
