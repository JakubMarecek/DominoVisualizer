--Converted by FCBConverter v20221020-2000, author ArmanIII.
--Converted using UnluacNET by Fireboyd78

export = {}
function export:LuaDependencies()
  local luaDepTable = {}
  return luaDepTable
end
function export:Create(cboxRes)
  if cboxRes:ShouldLoadResources() == true then
    cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate_v2.lua")
    cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua")
    cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua")
    cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")
    cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v4.lua")
    cboxRes:RegisterBox("Domino/System/CompareIntegers.lua")
    cboxRes:RegisterBox("Domino/System/Delay_v5.lua")
    cboxRes:RegisterBox("Domino/System/EntityCombatListener.lua")
    cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua")
    cboxRes:RegisterBox("Domino/System/GetStatistic.lua")
    cboxRes:RegisterBox("Domino/System/MultipleOR.lua")
    cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua")
    cboxRes:RegisterBox("Domino/System/Print_v2.lua")
    cboxRes:RegisterBox("Domino/System/SaveOpenWorld.lua")
    cboxRes:RegisterBox("Domino/System/StatisticModifier.lua")
    cboxRes:RegisterBox("Domino/System/SwitchGameMode.lua")
    cboxRes:RegisterBox("Domino/System/UI/CreateModalDialogBox_v3.lua")
    cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua")
    cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua")
  end
end
function export:Init(cbox)
  local l0
  self._name = "LEM0020_SWITCH_WORLD_TO_LEM"
  self._elementPathId = "DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM"
  self.DLC_LEM0020_Left_FC6main = 0
  self.DLC_LEN0020_Left_LEM_World = 0
  self.Player_Host = nil
  self.box_UniversalInteractionListener_28 = cbox:CreateBox_PathID("10234146408315319439")
  l0 = self.box_UniversalInteractionListener_28
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UniversalInteractionListener_28")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|81493525")
  l0:SetConnections({
    [2] = self.f_box_UniversalInteractionListener_28_Interacted
  })
  self.box_Delay_v5_22 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_22
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_22")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|163236252")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_22_TimeElapsed
  })
  self.box_EntityStatusListener_26 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_26
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_26")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|212635166")
  l0:SetConnections({
    [0] = self.f_box_EntityStatusListener_26_Disabled,
    [2] = self.f_box_EntityStatusListener_26_Loaded
  })
  self.box_UniversalInteractionModifier_v2_33 = cbox:CreateBox_PathID("13544820704881371989")
  l0 = self.box_UniversalInteractionModifier_v2_33
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UniversalInteractionModifier_v2_33")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|372496934")
  l0:SetConnections({
    [0] = self.f_box_UniversalInteractionModifier_v2_33_Disabled
  })
  self.box_MultipleOR_2 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_2
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_2")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|515816614")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_2_Out
  })
  self.box_ActivityEnd_7 = cbox:CreateBox_PathID("10339784804570942982")
  l0 = self.box_ActivityEnd_7
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ActivityEnd_7")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|661869778")
  l0:SetConnections({})
  self.box_EntityCombatListener_30 = cbox:CreateBox_PathID("8440356191349182686")
  l0 = self.box_EntityCombatListener_30
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityCombatListener_30")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|682270363")
  l0:SetConnections({
    [2] = self.f_box_EntityCombatListener_30_OnEnteredCombat,
    [3] = self.f_box_EntityCombatListener_30_OnLeftCombat
  })
  self.box_ActivityAcknowledgeGate_v2_4 = cbox:CreateBox_PathID("11524929585773902845")
  l0 = self.box_ActivityAcknowledgeGate_v2_4
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ActivityAcknowledgeGate_v2_4")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|737453506")
  l0:SetConnections({
    [0] = self.f_box_ActivityAcknowledgeGate_v2_4_Acknowledged,
    [1] = self.f_box_ActivityAcknowledgeGate_v2_4_Reloaded
  })
  self.box_CreateModalDialogBox_v3_32 = cbox:CreateBox_PathID("16076316791936168609")
  l0 = self.box_CreateModalDialogBox_v3_32
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_CreateModalDialogBox_v3_32")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|829864030")
  l0:SetConnections({
    [0] = self.f_box_CreateModalDialogBox_v3_32_Accept,
    [1] = self.f_box_CreateModalDialogBox_v3_32_Cancel
  })
  self.box_ActivityInitialized_5 = cbox:CreateBox_PathID("5136111808265235631")
  l0 = self.box_ActivityInitialized_5
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ActivityInitialized_5")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1513652889")
  l0:SetConnections({
    [0] = self.f_box_ActivityInitialized_5_Out
  })
  self.box_UniversalInteractionModifier_v2_25 = cbox:CreateBox_PathID("13544820704881371989")
  l0 = self.box_UniversalInteractionModifier_v2_25
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UniversalInteractionModifier_v2_25")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1570670119")
  l0:SetConnections({
    [1] = self.f_box_UniversalInteractionModifier_v2_25_Enabled
  })
  self.box_UniversalInteractionModifier_v2_36 = cbox:CreateBox_PathID("13544820704881371989")
  l0 = self.box_UniversalInteractionModifier_v2_36
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UniversalInteractionModifier_v2_36")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1645977516")
  l0:SetConnections({
    [1] = self.f_box_UniversalInteractionModifier_v2_36_Enabled
  })
  self.box_MultipleOR_24 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_24
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_24")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1998526733")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_24_Out
  })
  self.box_Delay_v5_13 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_13
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_13")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|2108842962")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_13_TimeElapsed
  })
end
function export:In()
  local params, l0
  params = self:OnEnter_box_OutputOrder_v2_3()
  l0 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1201644483", "1201644483", "LEM0020_SWITCH_WORLD_TO_LEM", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:OnLeaveZone()
end
function export:f_box_UniversalInteractionListener_28_Interacted()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_34()
  l0 = self.box_UniversalInteractionListener_28
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1073717722", "1073717722", "LEM0020_SWITCH_WORLD_TO_LEM", "box_UniversalInteractionListener_28.Interacted", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Delay_v5_22_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_CreateModalDialogBox_v3_32()
  l0 = self.box_Delay_v5_22
  l1 = self.box_CreateModalDialogBox_v3_32
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|634803780", "634803780", "LEM0020_SWITCH_WORLD_TO_LEM", "box_Delay_v5_22.TimeElapsed", "box_CreateModalDialogBox_v3_32.ShowMessage", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_EntityStatusListener_26_Disabled()
  local params, l0, l1
  params = self:OnEnter_box_UniversalInteractionListener_28()
  l0 = self.box_EntityStatusListener_26
  l1 = self.box_UniversalInteractionListener_28
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1007966199", "1007966199", "LEM0020_SWITCH_WORLD_TO_LEM", "box_EntityStatusListener_26.Disabled", "box_UniversalInteractionListener_28.Disable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_EntityStatusListener_26_Loaded()
  local params, l0, l1
  params = self:OnEnter_box_UniversalInteractionModifier_v2_25()
  l0 = self.box_EntityStatusListener_26
  l1 = self.box_UniversalInteractionModifier_v2_25
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1612361367", "1612361367", "LEM0020_SWITCH_WORLD_TO_LEM", "box_EntityStatusListener_26.Loaded", "box_UniversalInteractionModifier_v2_25.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_ActivityObjectiveMarkerModifier_v3_31_Disabled()
  local params, l0
  l0 = Boxes["12441205433938900539"]
  local clone = l0
  params = self:OnEnter_box_Delay_v5_22()
  l0 = self.box_Delay_v5_22
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|529527404", "529527404", "LEM0020_SWITCH_WORLD_TO_LEM", "box_ActivityObjectiveMarkerModifier_v3_31.Disabled", "box_Delay_v5_22.Start", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
end
function export:f_box_UniversalInteractionModifier_v2_33_Disabled()
  local params, l0, l1
  params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_31()
  l0 = self.box_UniversalInteractionModifier_v2_33
  l1 = Boxes["12441205433938900539"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|439743530", "439743530", "LEM0020_SWITCH_WORLD_TO_LEM", "box_UniversalInteractionModifier_v2_33.Disabled", "box_ActivityObjectiveMarkerModifier_v3_31.Disable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_GetStatistic_14_ValueGot()
  local params, l0
  self:OnExit_box_GetStatistic_14_ValueGot()
  l0 = Boxes["14544726443001098387"]
  local clone = l0
  params = self:OnEnter_box_GetStatistic_17()
  l0 = Boxes["14544726443001098387"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|659526066", "659526066", "LEM0020_SWITCH_WORLD_TO_LEM", "box_GetStatistic_14.ValueGot", "box_GetStatistic_17.GetValue", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  l0 = self.box_MultipleOR_2
  l1 = self.box_ActivityInitialized_5
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|287507776", "287507776", "LEM0020_SWITCH_WORLD_TO_LEM", "box_MultipleOR_2.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, {})
end
function export:f_box_EntityCombatListener_30_OnEnteredCombat()
  local params, l0, l1
  params = self:OnEnter_box_EntityStatusListener_26()
  l0 = self.box_EntityCombatListener_30
  l1 = self.box_EntityStatusListener_26
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|736264994", "736264994", "LEM0020_SWITCH_WORLD_TO_LEM", "box_EntityCombatListener_30.OnEnteredCombat", "box_EntityStatusListener_26.Disable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_EntityCombatListener_30_OnLeftCombat()
  local params, l0, l1
  params = self:OnEnter_box_EntityStatusListener_26()
  l0 = self.box_EntityCombatListener_30
  l1 = self.box_EntityStatusListener_26
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|422677402", "422677402", "LEM0020_SWITCH_WORLD_TO_LEM", "box_EntityCombatListener_30.OnLeftCombat", "box_EntityStatusListener_26.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_ActivityAcknowledgeGate_v2_4_Acknowledged()
  local l0, l1
  l0 = self.box_ActivityAcknowledgeGate_v2_4
  l1 = self.box_MultipleOR_2
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|575761846", "575761846", "LEM0020_SWITCH_WORLD_TO_LEM", "box_ActivityAcknowledgeGate_v2_4.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_ActivityAcknowledgeGate_v2_4_Reloaded()
  local l0, l1
  l0 = self.box_ActivityAcknowledgeGate_v2_4
  l1 = self.box_MultipleOR_2
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1210523181", "1210523181", "LEM0020_SWITCH_WORLD_TO_LEM", "box_ActivityAcknowledgeGate_v2_4.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_CreateModalDialogBox_v3_32_Accept()
  local params, l0, l1
  params = self:OnEnter_box_SwitchGameMode_10()
  l0 = self.box_CreateModalDialogBox_v3_32
  l1 = Boxes["3103179906340493512"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|847885507", "847885507", "LEM0020_SWITCH_WORLD_TO_LEM", "box_CreateModalDialogBox_v3_32.Accept", "box_SwitchGameMode_10.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_CreateModalDialogBox_v3_32_Cancel()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_27()
  l0 = self.box_CreateModalDialogBox_v3_32
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|184901963", "184901963", "LEM0020_SWITCH_WORLD_TO_LEM", "box_CreateModalDialogBox_v3_32.Cancel", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_16_A_gt_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_ActivityEnd_7()
  l0 = self.box_ActivityEnd_7
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|139984167", "139984167", "LEM0020_SWITCH_WORLD_TO_LEM", "box_Compare_Integers_16.A_gt_B", "box_ActivityEnd_7.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_Compare_Integers_16_A_le_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_12()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1679303491", "1679303491", "LEM0020_SWITCH_WORLD_TO_LEM", "box_Compare_Integers_16.A_le_B", "box_Compare_Integers_12.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_GetStatistic_17_ValueGot()
  local params, l0
  self:OnExit_box_GetStatistic_17_ValueGot()
  l0 = Boxes["14544726443001098387"]
  local clone = l0
  params = self:OnEnter_box_OutputOrder_v2_20()
  l0 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|782781123", "782781123", "LEM0020_SWITCH_WORLD_TO_LEM", "box_GetStatistic_17.ValueGot", "box_OutputOrder_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_SaveOpenWorldBox_1_Out()
  local params, l0
  l0 = Boxes["17274682685841934203"]
  local clone = l0
  params = self:OnEnter_box_Delay_v5_13()
  l0 = self.box_Delay_v5_13
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1310455641", "1310455641", "LEM0020_SWITCH_WORLD_TO_LEM", "box_SaveOpenWorldBox_1.Out", "box_Delay_v5_13.Start", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
end
function export:f_box_OutputOrder_v2_27_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_29()
  l0 = Boxes["12441205433938900539"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|134803057", "134803057", "LEM0020_SWITCH_WORLD_TO_LEM", "box_OutputOrder_v2_27.Out", "box_ActivityObjectiveMarkerModifier_v3_29.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_12_A_gt_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_AddActivityObjective_v4_23()
  l0 = Boxes["13549342794267410956"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|715836287", "715836287", "LEM0020_SWITCH_WORLD_TO_LEM", "box_Compare_Integers_12.A_gt_B", "box_AddActivityObjective_v4_23.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_12_A_le_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_StatisticModifier_9()
  l0 = Boxes["15478190047253350759"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|583258633", "583258633", "LEM0020_SWITCH_WORLD_TO_LEM", "box_Compare_Integers_12.A_le_B", "box_StatisticModifier_9.SetDirect", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_34_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_UniversalInteractionModifier_v2_33()
  l0 = self.box_UniversalInteractionModifier_v2_33
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1440993303", "1440993303", "LEM0020_SWITCH_WORLD_TO_LEM", "box_OutputOrder_v2_34.Out", "box_UniversalInteractionModifier_v2_33.Disable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_ActivityInitialized_5_Out()
  local params, l0, l1
  params = self:OnEnter_box_GetStatistic_14()
  l0 = self.box_ActivityInitialized_5
  l1 = Boxes["14544726443001098387"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1390685280", "1390685280", "LEM0020_SWITCH_WORLD_TO_LEM", "box_ActivityInitialized_5.Out", "box_GetStatistic_14.GetValue", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_UniversalInteractionModifier_v2_25_Enabled()
  local params, l0, l1
  params = self:OnEnter_box_UniversalInteractionListener_28()
  l0 = self.box_UniversalInteractionModifier_v2_25
  l1 = self.box_UniversalInteractionListener_28
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1260989476", "1260989476", "LEM0020_SWITCH_WORLD_TO_LEM", "box_UniversalInteractionModifier_v2_25.Enabled", "box_UniversalInteractionListener_28.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_ActivityObjectiveMarkerModifier_v3_29_Enabled()
  local params, l0
  l0 = Boxes["12441205433938900539"]
  local clone = l0
  params = self:OnEnter_box_UniversalInteractionModifier_v2_36()
  l0 = self.box_UniversalInteractionModifier_v2_36
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|61227027", "61227027", "LEM0020_SWITCH_WORLD_TO_LEM", "box_ActivityObjectiveMarkerModifier_v3_29.Enabled", "box_UniversalInteractionModifier_v2_36.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_Print_v2_19_PrintedToScreen()
  local params, l0
  l0 = Boxes["8578475447439923801"]
  local clone = l0
  params = self:OnEnter_box_Print_v2_21()
  l0 = Boxes["8578475447439923801"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1568816433", "1568816433", "LEM0020_SWITCH_WORLD_TO_LEM", "box_Print_v2_19.PrintedToScreen", "box_Print_v2_21.ToScreen", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_UniversalInteractionModifier_v2_36_Enabled()
  local l0, l1
  l0 = self.box_UniversalInteractionModifier_v2_36
  l1 = self.box_MultipleOR_24
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|41740700", "41740700", "LEM0020_SWITCH_WORLD_TO_LEM", "box_UniversalInteractionModifier_v2_36.Enabled", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_ActivityObjectiveMarkerModifier_v3_35_Enabled()
  local l0
  l0 = Boxes["12441205433938900539"]
  local clone = l0
  l0 = self.box_MultipleOR_24
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1109590707", "1109590707", "LEM0020_SWITCH_WORLD_TO_LEM", "box_ActivityObjectiveMarkerModifier_v3_35.Enabled", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_OutputOrder_v2_3_Out_0()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_ActivityAcknowledgeGate_v2_4
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|969869904", "969869904", "LEM0020_SWITCH_WORLD_TO_LEM", "box_OutputOrder_v2_3.Out", "box_ActivityAcknowledgeGate_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, {})
end
function export:f_box_OutputOrder_v2_3_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Print_v2_6()
  l0 = Boxes["8578475447439923801"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|2055222636", "2055222636", "LEM0020_SWITCH_WORLD_TO_LEM", "box_OutputOrder_v2_3.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_StatisticModifier_9_Set()
  local params, l0
  l0 = Boxes["15478190047253350759"]
  local clone = l0
  params = self:OnEnter_box_SaveOpenWorldBox_1()
  l0 = Boxes["17274682685841934203"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1550769382", "1550769382", "LEM0020_SWITCH_WORLD_TO_LEM", "box_StatisticModifier_9.Set", "box_SaveOpenWorldBox_1.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_MultipleOR_24_Out()
  local params, l0, l1
  params = self:OnEnter_box_EntityCombatListener_30()
  l0 = self.box_MultipleOR_24
  l1 = self.box_EntityCombatListener_30
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1920247516", "1920247516", "LEM0020_SWITCH_WORLD_TO_LEM", "box_MultipleOR_24.Out", "box_EntityCombatListener_30.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_OutputOrder_v2_20_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_16()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1129633351", "1129633351", "LEM0020_SWITCH_WORLD_TO_LEM", "box_OutputOrder_v2_20.Out", "box_Compare_Integers_16.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_20_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Print_v2_19()
  l0 = Boxes["8578475447439923801"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|2013428706", "2013428706", "LEM0020_SWITCH_WORLD_TO_LEM", "box_OutputOrder_v2_20.Out", "box_Print_v2_19.ToScreen", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_AddActivityObjective_v4_23_Out()
  local params, l0
  l0 = Boxes["13549342794267410956"]
  local clone = l0
  params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_35()
  l0 = Boxes["12441205433938900539"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|303189794", "303189794", "LEM0020_SWITCH_WORLD_TO_LEM", "box_AddActivityObjective_v4_23.Out", "box_ActivityObjectiveMarkerModifier_v3_35.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Delay_v5_13_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_SwitchGameMode_11()
  l0 = self.box_Delay_v5_13
  l1 = Boxes["3103179906340493512"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|285003362", "285003362", "LEM0020_SWITCH_WORLD_TO_LEM", "box_Delay_v5_13.TimeElapsed", "box_SwitchGameMode_11.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:OnEnter_box_UniversalInteractionListener_28()
  local params
  params = {
    [0] = true,
    [1] = "2122104695844524631"
  }
  return params
end
function export:OnEnter_box_Print_v2_21()
  local params, l0
  l0 = Boxes["8578475447439923801"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Print_v2_21")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|91674297")
  l0:SetConnections({})
  params = {
    [1] = "cyan",
    [3] = 15,
    [6] = self.DLC_LEM0020_Left_FC6main,
    [7] = "C:\\Print.log",
    [8] = "DLC_LEM0020_Left_FC6main = ",
    [9] = true
  }
  return params
end
function export:OnEnter_box_Delay_v5_22()
  local params
  params = {
    [0] = false,
    [2] = 1,8
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_26()
  local params
  params = {
    [0] = false,
    [1] = true,
    [2] = "2122104695844524631"
  }
  return params
end
function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_31()
  local params, l0
  l0 = Boxes["12441205433938900539"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_31")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|250680806")
  l0:SetConnections({
    [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_31_Disabled
  })
  params = {
    [1] = "2121678445105709148",
    [2] = {
      section = "OBJECTIVES",
      item = "LEM0020_B20_OBJ_A",
      id = "1160027"
    }
  }
  return params
end
function export:OnEnter_box_SwitchGameMode_11()
  local params, l0
  DrawTextToScreen("Comment: SWTICH GAME WORLD TO fc6_lem0020", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwitchGameMode')-- Comment: SWTICH GAME WORLD TO fc6_lem0020")
  l0 = Boxes["3103179906340493512"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SwitchGameMode_11")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|328704549")
  l0:SetConnections({})
  params = {
    [0] = "FCXCampaign",
    [1] = "fc6_lem0020"
  }
  return params
end
function export:OnEnter_box_UniversalInteractionModifier_v2_33()
  local params
  params = {
    [4] = "2122104695844524631"
  }
  return params
end
function export:OnEnter_box_GetStatistic_14()
  local params, l0
  l0 = Boxes["14544726443001098387"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetStatistic_14")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|373073662")
  l0:SetConnections({
    [0] = self.f_box_GetStatistic_14_ValueGot
  })
  params = {
    [0] = "DLC_LEM0020_Left_FC6main"
  }
  return params
end
function export:OnEnter_box_ActivityEnd_7()
  local params
  params = {
    [0] = true,
    [1] = true
  }
  return params
end
function export:OnEnter_box_EntityCombatListener_30()
  local params
  params = {
    [0] = true,
    [1] = false,
    [2] = true,
    [3] = true,
    [4] = true,
    [5] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_Print_v2_6()
  local params, l0
  l0 = Boxes["8578475447439923801"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Print_v2_6")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|723826903")
  l0:SetConnections({})
  params = {
    [1] = "green",
    [3] = 3,
    [7] = "C:\\Print.log",
    [8] = "LEM0020_SWITCH_WORLD_TO_LEM script is running.",
    [9] = true
  }
  return params
end
function export:OnEnter_box_CreateModalDialogBox_v3_32()
  local params
  DrawTextToScreen("Comment: Host's Pop up warning", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'CreateModalDialogBox_v3')-- Comment: Host's Pop up warning")
  params = {
    [2] = false,
    [3] = {
      section = "WARNINGS",
      item = "LEM0020_WARNING_LEAVING_YARA_DESC",
      id = "1182669"
    },
    [7] = true,
    [8] = true,
    [9] = "MessageBox",
    [12] = {
      section = "TUTORIAL_WARNING",
      item = "PRM0040_TUT_WARN_01",
      id = "976643"
    },
    [14] = self.Player_Host
  }
  return params
end
function export:OnEnter_box_Compare_Integers_16()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_16")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|854798281")
  l0:SetConnections({
    [2] = self.f_box_Compare_Integers_16_A_gt_B,
    [3] = self.f_box_Compare_Integers_16_A_le_B
  })
  params = {
    [0] = self.DLC_LEN0020_Left_LEM_World,
    [1] = 0
  }
  return params
end
function export:OnEnter_box_GetStatistic_17()
  local params, l0
  l0 = Boxes["14544726443001098387"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetStatistic_17")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|897891561")
  l0:SetConnections({
    [0] = self.f_box_GetStatistic_17_ValueGot
  })
  params = {
    [0] = "DLC_LEM0020_Left_LEM_World"
  }
  return params
end
function export:OnEnter_box_SaveOpenWorldBox_1()
  local params, l0
  l0 = Boxes["17274682685841934203"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SaveOpenWorldBox_1")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1061089816")
  l0:SetConnections({
    [0] = self.f_box_SaveOpenWorldBox_1_Out
  })
  params = {
    [0] = false
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_27()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_27")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1225276878")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [1] = 2
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [1] = {
      connections = {
        [0] = self.f_box_OutputOrder_v2_27_Out_0
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_Compare_Integers_12()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_12")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1318546663")
  l0:SetConnections({
    [2] = self.f_box_Compare_Integers_12_A_gt_B,
    [3] = self.f_box_Compare_Integers_12_A_le_B
  })
  params = {
    [0] = self.DLC_LEM0020_Left_FC6main,
    [1] = 0
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_34()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_34")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1391566851")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [1] = 2
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [1] = {
      connections = {
        [0] = self.f_box_OutputOrder_v2_34_Out_0
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_UniversalInteractionModifier_v2_25()
  local params
  params = {
    [4] = "2122104695844524631"
  }
  return params
end
function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_29()
  local params, l0
  l0 = Boxes["12441205433938900539"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_29")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1621627551")
  l0:SetConnections({
    [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_29_Enabled
  })
  params = {
    [1] = "2121678445105709148",
    [2] = {
      section = "OBJECTIVES",
      item = "LEM0020_B20_OBJ_A",
      id = "1160027"
    }
  }
  return params
end
function export:OnEnter_box_Print_v2_19()
  local params, l0
  l0 = Boxes["8578475447439923801"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Print_v2_19")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1633954120")
  l0:SetConnections({
    [3] = self.f_box_Print_v2_19_PrintedToScreen
  })
  params = {
    [1] = "cyan",
    [3] = 15,
    [6] = self.DLC_LEN0020_Left_LEM_World,
    [7] = "C:\\Print.log",
    [8] = "DLC_LEM0020_Left_LEM_world  = ",
    [9] = true
  }
  return params
end
function export:OnEnter_box_UniversalInteractionModifier_v2_36()
  local params
  params = {
    [4] = "2122104695844524631"
  }
  return params
end
function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_35()
  local params, l0
  l0 = Boxes["12441205433938900539"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_35")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1702399133")
  l0:SetConnections({
    [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_35_Enabled
  })
  params = {
    [1] = "2121678445105709148",
    [2] = {
      section = "OBJECTIVES",
      item = "LEM0020_B20_OBJ_A",
      id = "1160027"
    }
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_3()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_3")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1752910849")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [1] = 2
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [1] = {
      connections = {
        [0] = self.f_box_OutputOrder_v2_3_Out_0,
        [1] = self.f_box_OutputOrder_v2_3_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_StatisticModifier_9()
  local params, l0
  DrawTextToScreen("Comment: set DLC_LEM0020_Left_FC6main = 1", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'StatisticModifier')-- Comment: set DLC_LEM0020_Left_FC6main = 1")
  l0 = Boxes["15478190047253350759"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_StatisticModifier_9")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|1976393475")
  l0:SetConnections({
    [2] = self.f_box_StatisticModifier_9_Set
  })
  params = {
    [0] = "DLC_LEM0020_Left_FC6main",
    [2] = 1
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_20()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_20")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|2051935382")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [1] = 2
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [1] = {
      connections = {
        [0] = self.f_box_OutputOrder_v2_20_Out_0,
        [1] = self.f_box_OutputOrder_v2_20_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_SwitchGameMode_10()
  local params, l0
  DrawTextToScreen("Comment: RETURN TO GAME WORLD TO fc6_lem0020", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwitchGameMode')-- Comment: RETURN TO GAME WORLD TO fc6_lem0020")
  l0 = Boxes["3103179906340493512"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SwitchGameMode_10")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|2062412028")
  l0:SetConnections({})
  params = {
    [0] = "FCXCampaign",
    [1] = "fc6_lem0020"
  }
  return params
end
function export:OnEnter_box_AddActivityObjective_v4_23()
  local params, l0
  l0 = Boxes["13549342794267410956"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_AddActivityObjective_v4_23")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_LEM.domino|@LEM0020_SWITCH_WORLD_TO_LEM|2102995502")
  l0:SetConnections({
    [0] = self.f_box_AddActivityObjective_v4_23_Out
  })
  params = {
    [0] = true,
    [1] = {
      section = "OBJECTIVES",
      item = "LEM0020_B20_OBJ_A",
      id = "1160027"
    },
    [2] = false,
    [3] = 0,
    [4] = "#ED455357",
    [5] = 0
  }
  return params
end
function export:OnEnter_box_Delay_v5_13()
  local params
  params = {
    [0] = false,
    [2] = 1
  }
  return params
end
function export:OnExit_box_GetStatistic_14_ValueGot()
  local l0
  l0 = Boxes["14544726443001098387"]
  self.DLC_LEM0020_Left_FC6main = l0:GetDataOutValue(0)
end
function export:OnExit_box_GetStatistic_17_ValueGot()
  local l0
  l0 = Boxes["14544726443001098387"]
  self.DLC_LEN0020_Left_LEM_World = l0:GetDataOutValue(0)
end
_compilerVersion = 60
