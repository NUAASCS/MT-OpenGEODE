-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_BasicTypes;
use TASTE_BasicTypes;
with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;



package fce is
   --  Provided interface "Cyclic_HK"
   procedure Cyclic_HK;
   pragma Export(C, cyclic_hk, "fce_PI_cyclic_hk");
   --  Provided interface "Upload_Data"
   procedure Upload_Data(whatever: access asn1SccBool_ty);
   pragma Export(C, upload_data, "fce_PI_upload_data");
   --  Provided interface "Cyclic_FCE"
   procedure Cyclic_FCE;
   pragma Export(C, cyclic_fce, "fce_PI_cyclic_fce");
   --  Provided interface "Attitude_msg"
   procedure Attitude_msg;
   pragma Export(C, attitude_msg, "fce_PI_attitude_msg");
   --  Provided interface "FDIR"
   procedure FDIR;
   pragma Export(C, fdir, "fce_PI_fdir");
   --  Provided interface "Cyclic_Essential"
   procedure Cyclic_Essential;
   pragma Export(C, cyclic_essential, "fce_PI_cyclic_essential");
   --  Provided interface "mmo_sep_check_delay"
   procedure mmo_sep_check_delay;
   pragma Export(C, mmo_sep_check_delay, "fce_PI_mmo_sep_check_delay");
   --  Paramless required interface "Normal_HK_TM"
   procedure RIÜNormal_HK_TM;
   pragma import(C, RIÜNormal_HK_TM, "fce_RI_Normal_HK_TM");
   --  Paramless required interface "Essential_Packets"
   procedure RIÜEssential_Packets;
   pragma import(C, RIÜEssential_Packets, "fce_RI_Essential_Packets");
   --  Sync required interface "get_fce_sgm_eeprom"
   procedure RIÜget_fce_sgm_eeprom(fce_sgm_eeprom: access asn1SccFCE_SGM_EEPROM);
   pragma import(C, RIÜget_fce_sgm_eeprom, "fce_RI_get_fce_sgm_eeprom");
   --  Sync required interface "set_fce_sgm_eeprom"
   procedure RIÜset_fce_sgm_eeprom(fce_sgm_eeprom: access asn1SccFCE_SGM_EEPROM);
   pragma import(C, RIÜset_fce_sgm_eeprom, "fce_RI_set_fce_sgm_eeprom");
   --  Sync required interface "get_fce_status_register"
   procedure RIÜget_fce_status_register(fce_status_register: access asn1SccFCE_RECOVERY_STATUS_REGISTER);
   pragma import(C, RIÜget_fce_status_register, "fce_RI_get_fce_status_register");
   --  Sync required interface "get_fce_ctrl_stat_register"
   procedure RIÜget_fce_ctrl_stat_register(ctrl_stat_reg: access asn1SccFCE_CONTROL_FLAGS_STATUS_REGISTER);
   pragma import(C, RIÜget_fce_ctrl_stat_register, "fce_RI_get_fce_ctrl_stat_register");
   --  Sync required interface "get_fce_sgm_ram"
   procedure RIÜget_fce_sgm_ram(sgm_ram: access asn1SccFCE_SGM_RAM);
   pragma import(C, RIÜget_fce_sgm_ram, "fce_RI_get_fce_sgm_ram");
   --  Sync required interface "set_fce_sgm_ram"
   procedure RIÜset_fce_sgm_ram(sgm_ram: access asn1SccFCE_SGM_RAM);
   pragma import(C, RIÜset_fce_sgm_ram, "fce_RI_set_fce_sgm_ram");
   --  Timer mmo_sep_check_delay SET and RESET functions
   procedure SET_mmo_sep_check_delay(val: access asn1SccT_UInt32);
   pragma import(C, SET_mmo_sep_check_delay, "fce_RI_set_mmo_sep_check_delay");
   procedure RESET_mmo_sep_check_delay;
   pragma import(C, RESET_mmo_sep_check_delay, "fce_RI_reset_mmo_sep_check_delay");
end fce;