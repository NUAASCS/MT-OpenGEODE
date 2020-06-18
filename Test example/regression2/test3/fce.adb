-- This file was generated automatically: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

with TASTE_BasicTypes;
use TASTE_BasicTypes;
with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;

with Interfaces;
use Interfaces;

package body fce is
   type States is (fce_test_mode, ready, control, wait_attitude_msg);
   type ctxt_Ty is
      record
      state : States;
      initDone : Boolean := False;
      fce_stat_reg : aliased FCE_RECOVERY_STATUS_REGISTER;
      fce_selected_counter : aliased Counter_ty;
      new_rc : aliased Counter_ty;
      fce_stop_control : aliased Bool_ty := false;
      fce_selected : aliased Bool_ty;
      fdir_enable : aliased Bool_ty;
      fce_ctrl_reg : aliased FCE_CONTROL_FLAGS_STATUS_REGISTER;
      sgm_ram : aliased FCE_SGM_RAM;
      arearraysdeployed : aliased Bool_ty;
      op_param : aliased Bool_ty;
      eeprom : aliased FCE_SGM_EEPROM;
   end record;
   ctxt: aliased ctxt_Ty;
   CS_Only  : constant Integer := 9;
   procedure runTransition(Id: Integer);
   procedure p‹Bootup_actions(eeprom: in out FCE_SGM_EEPROM);
   procedure p‹Bootup_actions(eeprom: in out FCE_SGM_EEPROM) is
      tmp79 : aliased FCE_SGM_EEPROM;
      --  !! stack: _call_external_function line 1271
      begin
         --  eeprom!sit_4!ground_cmd_reset := false (59,17)
         eeprom.sit_4.ground_cmd_reset := false;
         --  set_fce_sgm_eeprom(eeprom) (61,17)
         tmp79 := eeprom;
         RI‹set_fce_sgm_eeprom(tmp79'Access);
         --  get_fce_status_register(fce_stat_reg) (63,17)
         RI‹get_fce_status_register(ctxt.fce_stat_reg'Access);
         --  DECISION fce_stat_reg!l3rec (-1,-1)
         --  COMMENT determine:
         --  - the FDIR trigger level
         --  - the new value of the RC New_RC
         --  - the cause of the boot-up (67,12)
         --  ANSWER false (72,21)
         if (ctxt.fce_stat_reg.l3rec) = false then
            --  DECISION fce_stat_reg!l2rec (-1,-1)
            --  ANSWER false (76,33)
            if (ctxt.fce_stat_reg.l2rec) = false then
               --  COMMENT FCE Switch-on (80,36)
               --  new_rc := eeprom!sit_4!rc (78,41)
               ctxt.new_rc := eeprom.sit_4.rc;
               --  COMMENT TODO - these
               --  actions are in table 6-1 (84,36)
               -- Write in data pool
               --  ANSWER true (87,33)
            elsif (ctxt.fce_stat_reg.l2rec) = true then
               --  COMMENT First Level2 Emergency (91,36)
               --  new_rc := eeprom!sit_4!rc (89,41)
               ctxt.new_rc := eeprom.sit_4.rc;
               --  COMMENT TODO - these
               --  actions are in table 6-1 (100,36)
               -- Write in data pool
               -- clear registers l2rec and
-- r3rec by use of the recovery
-- control register
               -- generate event to store these
-- data in SKEL
            end if;
            --  ANSWER true (104,21)
         elsif (ctxt.fce_stat_reg.l3rec) = true then
            --  COMMENT Level 3 emergency
            --  May have also been
            --  a second Level 2
            --  triggering (108,24)
            --  new_rc := eeprom!sit_4!rc + 1 (106,29)
            ctxt.new_rc := Asn1UInt((eeprom.sit_4.rc + 1));
            --  COMMENT TODO - these
            --  actions are in table 6-1 (121,24)
            -- Add to data pool:
-- status register, new_rc
            -- clear registers l2rec and
-- r3rec by use of the recovery
-- control register
            -- generate event to store these
-- data in SKEL
            --  eeprom!sit_4!rc := new_rc mod 5 (124,29)
            eeprom.sit_4.rc := Asn1UInt((ctxt.new_rc mod 5));
            --  JOIN bootup_label (126,29) at 4168, 805
            goto bootup_label;
         end if;
         --  JOIN bootup_label (None,None) at None, None
         goto bootup_label;
         --  CONNECTION another_label (166,19)
         <<another_label>>
         --  RETURN  (None,None) at 5139, 1041
         return;
         --  CONNECTION bootup_label (129,12)
         <<bootup_label>>
         --  get_fce_ctrl_stat_register(fce_ctrl_reg) (131,17)
         RI‹get_fce_ctrl_stat_register(ctxt.fce_ctrl_reg'Access);
         --  DECISION fce_ctrl_reg!reference_pattern (-1,-1)
         --  ANSWER ok (135,21)
         if (ctxt.fce_ctrl_reg.reference_pattern) = ok then
            --  DECISION fce_ctrl_reg!arr_dep_flag (-1,-1)
            --  ANSWER majority (139,33)
            if (ctxt.fce_ctrl_reg.arr_dep_flag) = majority then
               --  areArraysDeployed :=TRUE (141,41)
               ctxt.areArraysDeployed := true;
               --  ANSWER ELSE (None,None)
            else
               --  areArraysDeployed :=FALSE (145,41)
               ctxt.areArraysDeployed := false;
            end if;
            --  ANSWER nok (148,21)
         elsif (ctxt.fce_ctrl_reg.reference_pattern) = nok then
            --  COMMENT XXX
            --  Not clear what register
            --  we have to read (153,24)
            -- Evaluate arr_dep_flag
-- from the other RM register
            --  JOIN another_label (157,29) at 4643, 1200
            goto another_label;
         end if;
         --  COMMENT XXX Check Data pool specification (162,12)
         -- Provide all results to data pool
         --  RETURN  (None,None) at 4431, 1420
         return;
      end p‹Bootup_actions;
      

   procedure Cyclic_HK is
      begin
         case ctxt.state is
            when fce_test_mode =>
               runTransition(CS_Only);
            when ready =>
               runTransition(2);
            when control =>
               runTransition(6);
            when wait_attitude_msg =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end Cyclic_HK;
      

   procedure Upload_Data(whatever: access Bool_ty) is
      begin
         case ctxt.state is
            when fce_test_mode =>
               ctxt.op_param := whatever.all;
               runTransition(1);
            when ready =>
               runTransition(CS_Only);
            when control =>
               runTransition(CS_Only);
            when wait_attitude_msg =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end Upload_Data;
      

   procedure Cyclic_FCE is
      begin
         case ctxt.state is
            when fce_test_mode =>
               runTransition(CS_Only);
            when ready =>
               runTransition(3);
            when control =>
               runTransition(7);
            when wait_attitude_msg =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end Cyclic_FCE;
      

   procedure Attitude_msg is
      begin
         case ctxt.state is
            when fce_test_mode =>
               runTransition(CS_Only);
            when ready =>
               runTransition(CS_Only);
            when control =>
               runTransition(CS_Only);
            when wait_attitude_msg =>
               runTransition(8);
            when others =>
               runTransition(CS_Only);
         end case;
      end Attitude_msg;
      

   procedure FDIR is
      begin
         case ctxt.state is
            when fce_test_mode =>
               runTransition(CS_Only);
            when ready =>
               runTransition(4);
            when control =>
               runTransition(CS_Only);
            when wait_attitude_msg =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end FDIR;
      

   procedure Cyclic_Essential is
      begin
         case ctxt.state is
            when fce_test_mode =>
               runTransition(CS_Only);
            when ready =>
               runTransition(CS_Only);
            when control =>
               runTransition(5);
            when wait_attitude_msg =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end Cyclic_Essential;
      

   procedure mmo_sep_check_delay is
      begin
         case ctxt.state is
            when fce_test_mode =>
               runTransition(CS_Only);
            when ready =>
               runTransition(CS_Only);
            when control =>
               runTransition(CS_Only);
            when wait_attitude_msg =>
               runTransition(CS_Only);
            when others =>
               runTransition(CS_Only);
         end case;
      end mmo_sep_check_delay;
      

   procedure runTransition(Id: Integer) is
      trId : Integer := Id;
      begin
         while (trId /= -1) loop
            case trId is
               when 0 =>
                  --  JOIN FCE_INIT (None,None) at None, None
                  goto FCE_INIT;
               when 1 =>
                  --  NEXT_STATE FCE_Test_Mode (351,22) at 5401, 549
                  trId := -1;
                  ctxt.state := FCE_Test_Mode;
                  goto next_transition;
               when 2 =>
                  --  Normal_HK_TM (360,19)
                  --  COMMENT To OBC (362,12)
                  RI‹Normal_HK_TM;
                  --  NEXT_STATE Ready (364,22) at 4233, 323
                  trId := -1;
                  ctxt.state := Ready;
                  goto next_transition;
               when 3 =>
                  --  COMMENT As required in Fig 6-4
                  --  but no details given (370,12)
                  -- FCE_SELECTED
                  --  DECISION fce_selected and
                  --  areArraysDeployed (373,34)
                  --  COMMENT ambiguity in fig 6-5: ARR_DEP
                  --  or areArraysDeployed flag?
                  --  (ARR_DEP is a set of flags used 
                  --  to determine areArraysDeployed,
                  --  cf fig 6-1) (376,12)
                  --  ANSWER false (382,21)
                  if ((ctxt.fce_selected and ctxt.areArraysDeployed)) = false then
                     --  fce_selected_counter := 0 (384,29)
                     ctxt.fce_selected_counter := 0;
                     --  NEXT_STATE Ready (386,34) at 3344, 528
                     trId := -1;
                     ctxt.state := Ready;
                     goto next_transition;
                     --  ANSWER true (388,21)
                  elsif ((ctxt.fce_selected and ctxt.areArraysDeployed)) = true then
                     --  fce_selected_counter :=
                     --  (fce_selected_counter + 1) mod 65535 (390,29)
                     ctxt.fce_selected_counter := Asn1UInt(((ctxt.fce_selected_counter + 1) mod 65535));
                     --  DECISION fce_selected_counter
                     --  = 2 (394,0)
                     --  ANSWER true (396,33)
                     if ((ctxt.fce_selected_counter = 2)) = true then
                        --  JOIN ready_to_control (398,41) at 2830, 668
                        goto ready_to_control;
                        --  ANSWER false (400,33)
                     elsif ((ctxt.fce_selected_counter = 2)) = false then
                        --  NEXT_STATE Ready (402,46) at 3188, 668
                        trId := -1;
                        ctxt.state := Ready;
                        goto next_transition;
                     end if;
                  end if;
               when 4 =>
                  --  NEXT_STATE - (413,22) at 3802, 258
                  trId := -1;
                  goto next_transition;
               when 5 =>
                  --  Essential_Packets (422,19)
                  RI‹Essential_Packets;
                  --  NEXT_STATE Control (424,22) at 1697, 333
                  trId := -1;
                  ctxt.state := Control;
                  goto next_transition;
               when 6 =>
                  --  Normal_HK_TM (428,19)
                  --  COMMENT To OBC (430,12)
                  RI‹Normal_HK_TM;
                  --  NEXT_STATE Control (432,22) at 1412, 333
                  trId := -1;
                  ctxt.state := Control;
                  goto next_transition;
               when 7 =>
                  -- Stop control determination
                  --  DECISION FCE_Stop_Control (-1,-1)
                  --  ANSWER true (440,21)
                  if (ctxt.FCE_Stop_Control) = true then
                     -- FCE_AOCS_STOP_CTR
                     --  JOIN control_to_ready (444,29) at 903, 538
                     goto control_to_ready;
                     --  ANSWER false (446,21)
                  elsif (ctxt.FCE_Stop_Control) = false then
                     --  NEXT_STATE Control (448,34) at 1246, 473
                     trId := -1;
                     ctxt.state := Control;
                     goto next_transition;
                  end if;
               when 8 =>
                  --  JOIN cmd_fce_aocs_to_ready (458,17) at 1882, 590
                  goto cmd_fce_aocs_to_ready;
               when CS_Only =>
                  trId := -1;
                  goto next_transition;
               when others =>
                  null;
            end case;
            goto next_transition;
            --  CONNECTION sbm_to_ready (241,15)
            <<sbm_to_ready>>
            --  COMMENT stop both RIU functions ;
            --  stop SpW links to RIUs
            --  XXX check what to do here (245,8)
            -- fce dms initialisation to READY mode
            --  COMMENT Even if it was set to false before?! (251,8)
            --  fdir_enable := true (249,13)
            ctxt.fdir_enable := true;
            --  DECISION eeprom!sit_4!ground_cmd_reset = true
            --  and
            --  fce_stat_reg!l3rec = false (254,0)
            --  ANSWER FALSE (257,17)
            if (((ctxt.eeprom.sit_4.ground_cmd_reset = true) and (ctxt.fce_stat_reg.l3rec = false))) = false then
               --  NEXT_STATE Wait_Attitude_Msg (259,30) at 1831, 455
               trId := -1;
               ctxt.state := Wait_Attitude_Msg;
               goto next_transition;
               --  ANSWER TRUE (261,17)
            elsif (((ctxt.eeprom.sit_4.ground_cmd_reset = true) and (ctxt.fce_stat_reg.l3rec = false))) = true then
               --  JOIN cmd_fce_aocs_to_ready (None,None) at None, None
               goto cmd_fce_aocs_to_ready;
            end if;
            --  CONNECTION to_sbm (283,15)
            <<to_sbm>>
            --  COMMENT In 1.2, but what exactly
            --  has to be done here is not
            --  clearly stated XXX (287,8)
            -- FCE_AOCS_SBM_CMD
            --  DECISION eeprom!sit_4!test_mode_counter = 0 (291,48)
            ctxt.eeprom.sit_4.Exist.test_mode_counter := 1;
            --  ANSWER TRUE (293,17)
            if ((ctxt.eeprom.sit_4.test_mode_counter = 0)) = true then
               --  NEXT_STATE FCE_Test_Mode (295,30) at 4911, 275
               trId := -1;
               ctxt.state := FCE_Test_Mode;
               goto next_transition;
               --  ANSWER FALSE (297,17)
            elsif ((ctxt.eeprom.sit_4.test_mode_counter = 0)) = false then
               --  JOIN sbm_to_ready (299,25) at 4727, 270
               goto sbm_to_ready;
            end if;
            --  CONNECTION ready_to_control (304,15)
            <<ready_to_control>>
            --  COMMENT (in Figure 6-5)
            --  This seems inconsistent
            --  normal HK are sent to OBC
            --  so where should we "continue"
            --  sending them? XXX (310,8)
            -- stop sending packets to OBC, but
-- continue generation of normal HK+AOCS
-- packets
            --  COMMENT what command is that?
            --  (To whom?) XXX (318,8)
            -- Stop TM-TC Reception
            --  fdir_enable := false (321,13)
            ctxt.fdir_enable := false;
            --  areArraysDeployed := true (323,13)
            ctxt.areArraysDeployed := true;
            --  fce_selected := true (325,13)
            ctxt.fce_selected := true;
            --  NEXT_STATE Control (327,18) at 5915, 574
            trId := -1;
            ctxt.state := Control;
            goto next_transition;
            --  CONNECTION control_to_ready (331,15)
            <<control_to_ready>>
            --  COMMENT TODO (Figure 6-7) (335,8)
            -- huge transition
            --  NEXT_STATE Ready (337,18) at 5385, 234
            trId := -1;
            ctxt.state := Ready;
            goto next_transition;
            --  CONNECTION cmd_fce_aocs_to_ready (263,20)
            <<cmd_fce_aocs_to_ready>>
            --  COMMENT Not sure what to do here (Figure 6-4)
            --  Do we need to execute the FCE AOCS branch too? (269,20)
            -- FCE_AOCS_READY_CMD
            -- Start FCE_SELECTED
-- Determination
            --  COMMENT Used to count 2 consecutive checks
            --  of FCE Selected and Arr_Dep=true
            --  (cf. Fig 6-5) (274,20)
            --  fce_selected_counter := 0 (272,25)
            ctxt.fce_selected_counter := 0;
            --  NEXT_STATE Ready (278,30) at 2274, 687
            trId := -1;
            ctxt.state := Ready;
            goto next_transition;
            --  CONNECTION FCE_INIT (175,8)
            <<FCE_INIT>>
            -- FCE internal reconfiguration
-- according to pointer position
            -- Boot-up selected PM
            -- Disable TM/TC reception
            --  COMMENT What to do if validity check fails? (189,8)
            -- Start WD refreshing
            -- Validity check of SGM RAM
            -- Save last boot report to SGM-RAM
            -- OBT validity check/restore with LLOBT
            -- Enable_HW_Sync_to_PPS_for_2_sec
            --  get_fce_sgm_eeprom
            --  (eeprom) (191,13)
            --  COMMENT If read fails for all 4 SGM,
            --  use default SIT (194,8)
            RI‹get_fce_sgm_eeprom(ctxt.eeprom'Access);
            --  Bootup_actions
            --  (eeprom) (197,13)
            --  COMMENT Retrieve RSR, determine FDIR trigger level,
            --  NEW_RC, cause of the boot-up, and perform
            --  the corresponding actions (table 6-1) (200,8)
            p‹Bootup_actions(ctxt.eeprom);
            --  DECISION new_rc >= 5 (204,24)
            --  ANSWER TRUE (206,17)
            if ((ctxt.new_rc >= 5)) = true then
               --  COMMENT FDIR Level 4 (210,20)
               --  fdir_enable := false (208,25)
               ctxt.fdir_enable := false;
               --  get_fce_sgm_ram(sgm_ram) (212,25)
               --  COMMENT According to FI-0011
               --  Use default values if
               --  SGM reads fail (214,20)
               RI‹get_fce_sgm_ram(ctxt.sgm_ram'Access);
               --  ANSWER FALSE (218,17)
            elsif ((ctxt.new_rc >= 5)) = false then
               --  COMMENT No FDIR Level 4 (222,20)
               --  fdir_enable := true (220,25)
               ctxt.fdir_enable := true;
               --  get_fce_sgm_ram(sgm_ram) (224,25)
               --  COMMENT Get LLAT, LLARE (226,20)
               RI‹get_fce_sgm_ram(ctxt.sgm_ram'Access);
            end if;
            -- Start nominal SpW link acc. SIT1
            -- Start normal HK TM generation and routing to OBC
            --  COMMENT details tbd by asf
            --  see 1.2 (234,8)
            -- further FCESW startup activities
            -- Enable_TC_TM_Reception
            --  JOIN to_sbm (239,13) at 301, 1122
            goto to_sbm;
            <<next_transition>>
            null;
         end loop;
      end runTransition;
      

   begin
      runTransition(0);
      ctxt.initDone := True;
end fce;