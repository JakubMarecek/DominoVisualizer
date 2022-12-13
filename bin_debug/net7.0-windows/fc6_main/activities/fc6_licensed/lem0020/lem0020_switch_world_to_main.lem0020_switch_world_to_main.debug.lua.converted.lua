--Converted by FCBConverter v20221020-2000, author ArmanIII.
--Converted using UnluacNET by Fireboyd78

export = {}
function export:LuaDependencies()
  local luaDepTable = {}
  return luaDepTable
end
function export:Create(cboxRes)
  if cboxRes:ShouldLoadResources() == true then
    cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.GetPlayersID.debug.lua")
    cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate_v2.lua")
    cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua")
    cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")
    cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua")
    cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua")
    cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua")
    cboxRes:RegisterBox("Domino/System/AI/GetPreconditionState.lua")
    cboxRes:RegisterBox("Domino/System/AI/PreconditionListener.lua")
    cboxRes:RegisterBox("Domino/System/BonusPlanModifier_v3.lua")
    cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua")
    cboxRes:RegisterBox("Domino/System/CompareIntegers.lua")
    cboxRes:RegisterBox("Domino/System/ConsoleCommand_v3.lua")
    cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua")
    cboxRes:RegisterBox("Domino/System/Delay_v5.lua")
    cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua")
    cboxRes:RegisterBox("Domino/System/Gate_v3.lua")
    cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua")
    cboxRes:RegisterBox("Domino/System/GetStatistic.lua")
    cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua")
    cboxRes:RegisterBox("Domino/System/HeroVehicleLock.lua")
    cboxRes:RegisterBox("Domino/System/IndexList_v2.lua")
    cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua")
    cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua")
    cboxRes:RegisterBox("Domino/System/MultipleOR.lua")
    cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua")
    cboxRes:RegisterBox("Domino/System/Operations/ModifyCoopLeashRange.lua")
    cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua")
    cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua")
    cboxRes:RegisterBox("Domino/System/Player/IgnoreSignal_v2.lua")
    cboxRes:RegisterBox("Domino/System/Player/RestrictedRpgFeatureModifier.lua")
    cboxRes:RegisterBox("Domino/System/Print_v2.lua")
    cboxRes:RegisterBox("Domino/System/RestrictedItemModifier.lua")
    cboxRes:RegisterBox("Domino/System/RpgGadgetSocketOverride.lua")
    cboxRes:RegisterBox("Domino/System/RpgSkinOverride.lua")
    cboxRes:RegisterBox("Domino/System/SaveOpenWorld.lua")
    cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua")
    cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua")
    cboxRes:RegisterBox("Domino/System/SimpleNode.lua")
    cboxRes:RegisterBox("Domino/System/StatisticModifier.lua")
    cboxRes:RegisterBox("Domino/System/SwitchGameMode.lua")
    cboxRes:RegisterBox("Domino/System/TeleportPawns.lua")
    cboxRes:RegisterBox("Domino/System/Wolfskin/OverrideWolfskin.lua")
    cboxRes:RegisterBox("Domino/System/Wolfskin/RevertOverriddenWolfskin.lua")
    cboxRes:RegisterBox("Domino/user/fc6_Main/Activities/FC6_Licensed/LEM0020/LEM0020_SWITCH_WORLD_TO_MAIN.LEM0020_Inventory_Add.debug.lua")
    cboxRes:RegisterBox("Domino/user/fc6_Main/Activities/FC6_Licensed/LEM0020/LEM0020_SWITCH_WORLD_TO_MAIN.LEM0020_Inventory_setup.debug.lua")
    cboxRes:RegisterBox("Domino/user/fc6_Main/Activities/FC6_Licensed/LEM0020/LEM0020_SWITCH_WORLD_TO_MAIN.LEM0020_RemoveAmmo.debug.lua")
    cboxRes:RegisterBox("Domino/user/fc6_Main/Activities/FC6_Licensed/LEM0020/LEM0020_SWITCH_WORLD_TO_MAIN.LEM0020_RestrictedItemModifiers.debug.lua")
  end
end
function export:Init(cbox)
  local l0
  self._name = "LEM0020_SWITCH_WORLD_TO_MAIN"
  self._elementPathId = "DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN"
  self.DLC_LEM0020_Left_FC6main = 0
  self.DLC_LEN0020_Left_LEM_World = 0
  self.DLC_LEM0020_World_FlowTracker = 0
  self.Plare_Group = nil
  self.Local_Player = nil
  self.Player_Host = nil
  self.Player_Client = nil
  self.B30_NoWeapon = 0
  self.CurrentLootPool = 0
  self.IsCOOP = false
  self.box_CoopActivePlayers_153 = cbox:CreateBox_PathID("7893821626131184135")
  l0 = self.box_CoopActivePlayers_153
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_CoopActivePlayers_153")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1967380")
  l0:SetConnections({
    [1] = self.f_box_CoopActivePlayers_153_PlayerAdded,
    [3] = self.f_box_CoopActivePlayers_153_TwoPlayers
  })
  self.box_LEM0020_RestrictedItemModifiers_152 = cbox:CreateBox_PathID("13126294374832138078")
  l0 = self.box_LEM0020_RestrictedItemModifiers_152
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_LEM0020_RestrictedItemModifiers_152")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2459445")
  l0:SetConnections({
    [0] = self.f_box_LEM0020_RestrictedItemModifiers_152_Out
  })
  self.box_Delay_v5_10 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_10
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_10")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|12484652")
  l0:SetConnections({
    [3] = self.f_box_Delay_v5_10_Started,
    [5] = self.f_box_Delay_v5_10_TimeElapsed
  })
  self.box_MultipleOR_14 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_14
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_14")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|18020562")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 4
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_14_Out
  })
  self.box_MultipleOR_57 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_57
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_57")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|37892684")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_57_Out
  })
  self.box_BonusPlanModifier_v3_28 = cbox:CreateBox_PathID("10216311432074939711")
  l0 = self.box_BonusPlanModifier_v3_28
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_BonusPlanModifier_v3_28")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|116582752")
  l0:SetConnections({
    [0] = self.f_box_BonusPlanModifier_v3_28_Added,
    [1] = self.f_box_BonusPlanModifier_v3_28_AlreadyAdded,
    [2] = self.f_box_BonusPlanModifier_v3_28_AlreadyRemoved,
    [3] = self.f_box_BonusPlanModifier_v3_28_Removed
  })
  self.box_BonusPlanModifier_v3_27 = cbox:CreateBox_PathID("10216311432074939711")
  l0 = self.box_BonusPlanModifier_v3_27
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_BonusPlanModifier_v3_27")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|125048277")
  l0:SetConnections({
    [0] = self.f_box_BonusPlanModifier_v3_27_Added,
    [1] = self.f_box_BonusPlanModifier_v3_27_AlreadyAdded,
    [2] = self.f_box_BonusPlanModifier_v3_27_AlreadyRemoved,
    [3] = self.f_box_BonusPlanModifier_v3_27_Removed
  })
  self.box_LEM0020_Inventory_Add_98 = cbox:CreateBox_PathID("17568122592594799526")
  l0 = self.box_LEM0020_Inventory_Add_98
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_LEM0020_Inventory_Add_98")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|156921434")
  l0:SetConnections({})
  self.box_PreconditionListener_42 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_42
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_42")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|161093597")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_42_PreconditionMet
  })
  self.box_Delay_v5_32 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_32
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_32")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|260084802")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_32_TimeElapsed
  })
  self.box_Gate_v3_103 = cbox:CreateBox_PathID("8949819059580457070")
  l0 = self.box_Gate_v3_103
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Gate_v3_103")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|280599002")
  l0:SetConnections({
    [1] = self.f_box_Gate_v3_103_Opened,
    [2] = self.f_box_Gate_v3_103_Out
  })
  self.box_RpgGadgetSocketOverride_222 = cbox:CreateBox_PathID("5130581529783365457")
  l0 = self.box_RpgGadgetSocketOverride_222
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RpgGadgetSocketOverride_222")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|307674959")
  l0:SetConnections({
    [0] = self.f_box_RpgGadgetSocketOverride_222_Out
  })
  self.box_MultipleOR_157 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_157
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_157")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|316642883")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_157_Out
  })
  self.box_MultipleOR_30 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_30
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_30")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|388129824")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_30_Out
  })
  self.box_LEM0020_RestrictedItemModifiers_58 = cbox:CreateBox_PathID("13126294374832138078")
  l0 = self.box_LEM0020_RestrictedItemModifiers_58
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_LEM0020_RestrictedItemModifiers_58")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|418783328")
  l0:SetConnections({
    [0] = self.f_box_LEM0020_RestrictedItemModifiers_58_Out
  })
  self.box_RpgGadgetSocketOverride_214 = cbox:CreateBox_PathID("5130581529783365457")
  l0 = self.box_RpgGadgetSocketOverride_214
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RpgGadgetSocketOverride_214")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|458028310")
  l0:SetConnections({
    [0] = self.f_box_RpgGadgetSocketOverride_214_Out
  })
  self.box_PreconditionListener_89 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_89
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_89")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|470539465")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_89_PreconditionMet
  })
  self.box_PreconditionListener_126 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_126
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_126")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|500958749")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_126_PreconditionMet
  })
  self.box_MultipleOR_2 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_2
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_2")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|515816614")
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
  self.box_MultipleOR_149 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_149
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_149")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|549046460")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_149_Out
  })
  self.box_Gate_v3_99 = cbox:CreateBox_PathID("8949819059580457070")
  l0 = self.box_Gate_v3_99
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Gate_v3_99")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|563029686")
  l0:SetConnections({
    [1] = self.f_box_Gate_v3_99_Opened,
    [2] = self.f_box_Gate_v3_99_Out
  })
  self.box_GunsForHireSystemModifier_24 = cbox:CreateBox_PathID("14663611095538087271")
  l0 = self.box_GunsForHireSystemModifier_24
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GunsForHireSystemModifier_24")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|573135295")
  l0:SetConnections({
    [0] = self.f_box_GunsForHireSystemModifier_24_Disabled,
    [1] = self.f_box_GunsForHireSystemModifier_24_Enabled
  })
  self.box_MessageListener_v3_109 = cbox:CreateBox_PathID("8576786676075923417")
  l0 = self.box_MessageListener_v3_109
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MessageListener_v3_109")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|590387578")
  l0:SetConnections({
    [2] = self.f_box_MessageListener_v3_109_Received
  })
  self.box_PreconditionListener_15 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_15
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_15")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|598920868")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_15_PreconditionMet
  })
  self.box_MultipleOR_31 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_31
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_31")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|602113676")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_31_Out
  })
  self.box_Delay_v5_215 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_215
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_215")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|623283389")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_215_TimeElapsed
  })
  self.box_MultipleOR_66 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_66
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_66")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|638756724")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_66_Out
  })
  self.box_RpgGadgetSocketOverride_226 = cbox:CreateBox_PathID("5130581529783365457")
  l0 = self.box_RpgGadgetSocketOverride_226
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RpgGadgetSocketOverride_226")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|681671352")
  l0:SetConnections({
    [0] = self.f_box_RpgGadgetSocketOverride_226_Out
  })
  self.box_LEM0020_Inventory_Add_111 = cbox:CreateBox_PathID("17568122592594799526")
  l0 = self.box_LEM0020_Inventory_Add_111
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_LEM0020_Inventory_Add_111")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|690965270")
  l0:SetConnections({
    [0] = self.f_box_LEM0020_Inventory_Add_111_Out
  })
  self.box_ActivityAcknowledgeGate_v2_4 = cbox:CreateBox_PathID("11524929585773902845")
  l0 = self.box_ActivityAcknowledgeGate_v2_4
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ActivityAcknowledgeGate_v2_4")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|737453506")
  l0:SetConnections({
    [0] = self.f_box_ActivityAcknowledgeGate_v2_4_Acknowledged,
    [1] = self.f_box_ActivityAcknowledgeGate_v2_4_Reloaded
  })
  self.box_LEM0020_RemoveAmmo_21 = cbox:CreateBox_PathID("6498612531887672172")
  l0 = self.box_LEM0020_RemoveAmmo_21
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_LEM0020_RemoveAmmo_21")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|756050905")
  l0:SetConnections({})
  self.box_PreconditionListener_147 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_147
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_147")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|765637925")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_147_PreconditionMet
  })
  self.box_MessageListener_v3_74 = cbox:CreateBox_PathID("8576786676075923417")
  l0 = self.box_MessageListener_v3_74
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MessageListener_v3_74")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|775623539")
  l0:SetConnections({
    [1] = self.f_box_MessageListener_v3_74_Enabled,
    [2] = self.f_box_MessageListener_v3_74_Received
  })
  self.box_PreconditionListener_145 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_145
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_145")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|804536418")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_145_PreconditionMet
  })
  self.box_PreconditionListener_127 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_127
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_127")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|846034929")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_127_PreconditionMet
  })
  self.box_RpgSkinOverride_229 = cbox:CreateBox_PathID("14551266578186009559")
  l0 = self.box_RpgSkinOverride_229
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RpgSkinOverride_229")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|911649560")
  l0:SetConnections({})
  self.box_RestrictedItemModifier_212 = cbox:CreateBox_PathID("17298141324189586564")
  l0 = self.box_RestrictedItemModifier_212
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RestrictedItemModifier_212")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|952613713")
  l0:SetConnections({
    [0] = self.f_box_RestrictedItemModifier_212_Out
  })
  self.box_IgnoreSignal_v2_29 = cbox:CreateBox_PathID("11223399058475648144")
  l0 = self.box_IgnoreSignal_v2_29
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_IgnoreSignal_v2_29")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|961294189")
  l0:SetConnections({
    [0] = self.f_box_IgnoreSignal_v2_29_Disabled,
    [1] = self.f_box_IgnoreSignal_v2_29_Enabled
  })
  self.box_MessageListener_v3_102 = cbox:CreateBox_PathID("8576786676075923417")
  l0 = self.box_MessageListener_v3_102
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MessageListener_v3_102")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|980985990")
  l0:SetConnections({
    [2] = self.f_box_MessageListener_v3_102_Received
  })
  self.box_LEM0020_Inventory_Add_115 = cbox:CreateBox_PathID("17568122592594799526")
  l0 = self.box_LEM0020_Inventory_Add_115
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_LEM0020_Inventory_Add_115")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1019580201")
  l0:SetConnections({
    [0] = self.f_box_LEM0020_Inventory_Add_115_Out
  })
  self.box_GetPlayersID_48 = cbox:CreateBox_PathID("18241613277576598574")
  l0 = self.box_GetPlayersID_48
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetPlayersID_48")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1036946298")
  l0:SetConnections({
    [0] = self.f_box_GetPlayersID_48_OnePlayer,
    [1] = self.f_box_GetPlayersID_48_PlayerAdded,
    [2] = self.f_box_GetPlayersID_48_PlayerRemoved,
    [3] = self.f_box_GetPlayersID_48_TwoPlayers
  })
  self.box_EntityStatusListener_158 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_158
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_158")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1041884822")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_158_Loaded
  })
  self.box_EntityStatusListener_161 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_161
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_161")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1095551196")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_161_Loaded
  })
  self.box_RpgGadgetSocketOverride_224 = cbox:CreateBox_PathID("5130581529783365457")
  l0 = self.box_RpgGadgetSocketOverride_224
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RpgGadgetSocketOverride_224")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1118953174")
  l0:SetConnections({
    [0] = self.f_box_RpgGadgetSocketOverride_224_Out
  })
  self.box_MultipleOR_86 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_86
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_86")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1129020419")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_86_Out
  })
  self.box_Delay_v5_151 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_151
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_151")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1163461791")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_151_TimeElapsed
  })
  self.box_MessageListener_v3_93 = cbox:CreateBox_PathID("8576786676075923417")
  l0 = self.box_MessageListener_v3_93
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MessageListener_v3_93")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1189572349")
  l0:SetConnections({
    [2] = self.f_box_MessageListener_v3_93_Received
  })
  self.box_PreconditionListener_130 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_130
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_130")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1200378524")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_130_PreconditionMet
  })
  self.box_CoopActivePlayers_85 = cbox:CreateBox_PathID("7893821626131184135")
  l0 = self.box_CoopActivePlayers_85
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_CoopActivePlayers_85")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1256782154")
  l0:SetConnections({
    [1] = self.f_box_CoopActivePlayers_85_PlayerAdded,
    [3] = self.f_box_CoopActivePlayers_85_TwoPlayers
  })
  self.box_RpgSkinOverride_228 = cbox:CreateBox_PathID("14551266578186009559")
  l0 = self.box_RpgSkinOverride_228
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RpgSkinOverride_228")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1258333675")
  l0:SetConnections({})
  self.box_Delay_v5_33 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_33
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_33")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1288676374")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_33_TimeElapsed
  })
  self.box_RestrictedItemModifier_52 = cbox:CreateBox_PathID("17298141324189586564")
  l0 = self.box_RestrictedItemModifier_52
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RestrictedItemModifier_52")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1315652847")
  l0:SetConnections({})
  self.box_Delay_v5_166 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_166
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_166")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1325084574")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_166_TimeElapsed
  })
  self.box_LEM0020_Inventory_setup_45 = cbox:CreateBox_PathID("13658185453328794257")
  l0 = self.box_LEM0020_Inventory_setup_45
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_LEM0020_Inventory_setup_45")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1329303949")
  l0:SetConnections({})
  self.box_LEM0020_Inventory_Add_106 = cbox:CreateBox_PathID("17568122592594799526")
  l0 = self.box_LEM0020_Inventory_Add_106
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_LEM0020_Inventory_Add_106")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1329482817")
  l0:SetConnections({})
  self.box_MultipleOR_37 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_37
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_37")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1337534343")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_37_Out
  })
  self.box_Delay_v5_175 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_175
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_175")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1358202341")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_175_TimeElapsed
  })
  self.box_MultipleOR_90 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_90
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_90")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1372623248")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_90_Out
  })
  self.box_LEM0020_Inventory_Add_78 = cbox:CreateBox_PathID("17568122592594799526")
  l0 = self.box_LEM0020_Inventory_Add_78
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_LEM0020_Inventory_Add_78")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1381404061")
  l0:SetConnections({
    [0] = self.f_box_LEM0020_Inventory_Add_78_Out
  })
  self.box_RestrictedItemModifier_213 = cbox:CreateBox_PathID("17298141324189586564")
  l0 = self.box_RestrictedItemModifier_213
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RestrictedItemModifier_213")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1406501879")
  l0:SetConnections({
    [0] = self.f_box_RestrictedItemModifier_213_Out
  })
  self.box_OnceOnly_v3_165 = cbox:CreateBox_PathID("3070349782511854479")
  l0 = self.box_OnceOnly_v3_165
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OnceOnly_v3_165")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1413020684")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {
      [0] = 2
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = {
      connections = {
        [0] = self.f_box_OnceOnly_v3_165_Out_0
      },
      count = 2
    }
  })
  self.box_RpgGadgetSocketOverride_227 = cbox:CreateBox_PathID("5130581529783365457")
  l0 = self.box_RpgGadgetSocketOverride_227
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RpgGadgetSocketOverride_227")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1422505208")
  l0:SetConnections({})
  self.box_Gate_v3_60 = cbox:CreateBox_PathID("8949819059580457070")
  l0 = self.box_Gate_v3_60
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Gate_v3_60")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1469287177")
  l0:SetConnections({
    [1] = self.f_box_Gate_v3_60_Opened,
    [2] = self.f_box_Gate_v3_60_Out
  })
  self.box_MultipleOR_159 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_159
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_159")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1475273308")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_159_Out
  })
  self.box_ConsoleCommand_v3_138 = cbox:CreateBox_PathID("7069784758800058057")
  l0 = self.box_ConsoleCommand_v3_138
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ConsoleCommand_v3_138")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1479382234")
  l0:SetConnections({
    [1] = self.f_box_ConsoleCommand_v3_138_Enabled,
    [2] = self.f_box_ConsoleCommand_v3_138_Execute
  })
  self.box_ActivityInitialized_5 = cbox:CreateBox_PathID("5136111808265235631")
  l0 = self.box_ActivityInitialized_5
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ActivityInitialized_5")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1513652889")
  l0:SetConnections({
    [0] = self.f_box_ActivityInitialized_5_Out
  })
  self.box_OnceOnly_v3_164 = cbox:CreateBox_PathID("3070349782511854479")
  l0 = self.box_OnceOnly_v3_164
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OnceOnly_v3_164")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1570733515")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {
      [0] = 2
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = {
      connections = {
        [0] = self.f_box_OnceOnly_v3_164_Out_0
      },
      count = 2
    }
  })
  self.box_RpgGadgetSocketOverride_223 = cbox:CreateBox_PathID("5130581529783365457")
  l0 = self.box_RpgGadgetSocketOverride_223
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RpgGadgetSocketOverride_223")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1587491390")
  l0:SetConnections({})
  self.box_RpgGadgetSocketOverride_225 = cbox:CreateBox_PathID("5130581529783365457")
  l0 = self.box_RpgGadgetSocketOverride_225
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RpgGadgetSocketOverride_225")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1599499533")
  l0:SetConnections({
    [0] = self.f_box_RpgGadgetSocketOverride_225_Out
  })
  self.box_MultipleOR_38 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_38
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_38")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1621408739")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_38_Out
  })
  self.box_OnceOnly_v3_168 = cbox:CreateBox_PathID("3070349782511854479")
  l0 = self.box_OnceOnly_v3_168
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OnceOnly_v3_168")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1630891214")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {
      [0] = 2
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = {
      connections = {
        [0] = self.f_box_OnceOnly_v3_168_Out_0
      },
      count = 2
    }
  })
  self.box_OnceOnly_v3_169 = cbox:CreateBox_PathID("3070349782511854479")
  l0 = self.box_OnceOnly_v3_169
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OnceOnly_v3_169")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1647476237")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {
      [0] = 2
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = {
      connections = {
        [0] = self.f_box_OnceOnly_v3_169_Out_0
      },
      count = 2
    }
  })
  self.box_TeleportPawns_13 = cbox:CreateBox_PathID("14392291592142814452")
  l0 = self.box_TeleportPawns_13
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_TeleportPawns_13")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1650517015")
  l0:SetConnections({
    [0] = self.f_box_TeleportPawns_13_Out
  })
  self.box_MultipleOR_9 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_9
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_9")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1655296433")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_9_Out
  })
  self.box_Gate_v3_113 = cbox:CreateBox_PathID("8949819059580457070")
  l0 = self.box_Gate_v3_113
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Gate_v3_113")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1717163949")
  l0:SetConnections({
    [1] = self.f_box_Gate_v3_113_Opened,
    [2] = self.f_box_Gate_v3_113_Out
  })
  self.box_ConsoleCommand_v3_140 = cbox:CreateBox_PathID("7069784758800058057")
  l0 = self.box_ConsoleCommand_v3_140
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ConsoleCommand_v3_140")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1722047011")
  l0:SetConnections({
    [2] = self.f_box_ConsoleCommand_v3_140_Execute
  })
  self.box_RpgGadgetSocketOverride_221 = cbox:CreateBox_PathID("5130581529783365457")
  l0 = self.box_RpgGadgetSocketOverride_221
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RpgGadgetSocketOverride_221")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1724990270")
  l0:SetConnections({
    [0] = self.f_box_RpgGadgetSocketOverride_221_Out
  })
  self.box_LEM0020_Inventory_Add_97 = cbox:CreateBox_PathID("17568122592594799526")
  l0 = self.box_LEM0020_Inventory_Add_97
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_LEM0020_Inventory_Add_97")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1731386197")
  l0:SetConnections({})
  self.box_MultipleOR_179 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_179
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_179")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1746685800")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_179_Out
  })
  self.box_LEM0020_Inventory_Add_80 = cbox:CreateBox_PathID("17568122592594799526")
  l0 = self.box_LEM0020_Inventory_Add_80
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_LEM0020_Inventory_Add_80")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1754753052")
  l0:SetConnections({
    [0] = self.f_box_LEM0020_Inventory_Add_80_Out
  })
  self.box_LEM0020_Inventory_setup_50 = cbox:CreateBox_PathID("13658185453328794257")
  l0 = self.box_LEM0020_Inventory_setup_50
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_LEM0020_Inventory_setup_50")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1756147778")
  l0:SetConnections({})
  self.box_LEM0020_Inventory_Add_104 = cbox:CreateBox_PathID("17568122592594799526")
  l0 = self.box_LEM0020_Inventory_Add_104
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_LEM0020_Inventory_Add_104")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1759263442")
  l0:SetConnections({})
  self.box_IgnoreSignal_v2_26 = cbox:CreateBox_PathID("11223399058475648144")
  l0 = self.box_IgnoreSignal_v2_26
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_IgnoreSignal_v2_26")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1788675737")
  l0:SetConnections({})
  self.box_PreconditionListener_87 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_87
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_87")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1871830028")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_87_PreconditionMet
  })
  self.box_MultipleOR_154 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_154
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_154")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1885127640")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_154_Out
  })
  self.box_MultipleOR_49 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_49
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_49")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1890256471")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_49_Out
  })
  self.box_PreconditionListener_139 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_139
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_139")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1924449271")
  l0:SetConnections({
    [1] = self.f_box_PreconditionListener_139_Enabled,
    [2] = self.f_box_PreconditionListener_139_PreconditionMet
  })
  self.box_MessageListener_v3_77 = cbox:CreateBox_PathID("8576786676075923417")
  l0 = self.box_MessageListener_v3_77
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MessageListener_v3_77")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1964145903")
  l0:SetConnections({
    [2] = self.f_box_MessageListener_v3_77_Received
  })
  self.box_IndexList_v2_68 = cbox:CreateBox_PathID("4508412005739610157")
  l0 = self.box_IndexList_v2_68
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_IndexList_v2_68")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1968100149")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [0] = 5
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = {
      connections = {
        [0] = self.f_box_IndexList_v2_68_Output_0,
        [1] = self.f_box_IndexList_v2_68_Output_1,
        [2] = self.f_box_IndexList_v2_68_Output_2,
        [3] = self.f_box_IndexList_v2_68_Output_3,
        [4] = self.f_box_IndexList_v2_68_Output_4
      },
      count = 5
    }
  })
  self.box_MessageListener_v3_65 = cbox:CreateBox_PathID("8576786676075923417")
  l0 = self.box_MessageListener_v3_65
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MessageListener_v3_65")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1981238725")
  l0:SetConnections({
    [2] = self.f_box_MessageListener_v3_65_Received
  })
  self.box_LEM0020_RemoveAmmo_22 = cbox:CreateBox_PathID("6498612531887672172")
  l0 = self.box_LEM0020_RemoveAmmo_22
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_LEM0020_RemoveAmmo_22")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1992205231")
  l0:SetConnections({})
  self.box_OnceOnly_v3_44 = cbox:CreateBox_PathID("3070349782511854479")
  l0 = self.box_OnceOnly_v3_44
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OnceOnly_v3_44")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2033098025")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {
      [0] = 2
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = {
      connections = {
        [0] = self.f_box_OnceOnly_v3_44_Out_0
      },
      count = 2
    }
  })
  self.box_CoopActivePlayers_41 = cbox:CreateBox_PathID("7893821626131184135")
  l0 = self.box_CoopActivePlayers_41
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_CoopActivePlayers_41")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2043567043")
  l0:SetConnections({
    [1] = self.f_box_CoopActivePlayers_41_PlayerAdded,
    [3] = self.f_box_CoopActivePlayers_41_TwoPlayers
  })
  self.box_MultipleOR_72 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_72
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_72")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2058547153")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 5
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_72_Out
  })
  self.box_PreconditionListener_129 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_129
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_129")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2124589256")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_129_PreconditionMet
  })
end
function export:In()
  local params, l0
  params = self:OnEnter_box_OutputOrder_v2_3()
  l0 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1201644483", "1201644483", "LEM0020_SWITCH_WORLD_TO_MAIN", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:OnLeaveZone()
end
function export:f_box_Simple_Node_163_Out()
  local l0
  l0 = Boxes["11682720508110024183"]
  local clone = l0
  l0 = self.box_OnceOnly_v3_164
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|332085471", "332085471", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_163.Out", "box_OnceOnly_v3_164.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_Simple_Node_76_Out()
  local l0
  l0 = Boxes["11682720508110024183"]
  local clone = l0
  l0 = self.box_MultipleOR_66
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1198073836", "1198073836", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_76.Out", "box_MultipleOR_66.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_Simple_Node_40_Out()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  local clone = l0
  params = self:OnEnter_box_ModifyCoopLeashRange_219()
  l0 = Boxes["18082559299092487593"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1424989699", "1424989699", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_40.Out", "box_ModifyCoopLeashRange_219.RemoveCustomLeash", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
  l0 = self.box_MultipleOR_57
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|876204758", "876204758", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_40.Out", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
  params = self:OnEnter_box_ModifyCoopLeashRange_150()
  l0 = Boxes["18082559299092487593"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1462541549", "1462541549", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_40.Out", "box_ModifyCoopLeashRange_150.RemoveCustomLeash", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
  params = self:OnEnter_box_OutputOrder_v2_39()
  l0 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1533323404", "1533323404", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_40.Out", "box_OutputOrder_v2_39.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
  l0 = self.box_CoopActivePlayers_153
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2096122481", "2096122481", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_40.Out", "box_CoopActivePlayers_153.Disable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, {})
  l0 = self.box_MultipleOR_149
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1347738104", "1347738104", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_40.Out", "box_MultipleOR_149.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
  params = self:OnEnter_box_ModifyCoopLeashRange_83()
  l0 = Boxes["18082559299092487593"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1943152409", "1943152409", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_40.Out", "box_ModifyCoopLeashRange_83.RemoveCustomLeash", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
  l0 = self.box_MultipleOR_90
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|833979603", "833979603", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_40.Out", "box_MultipleOR_90.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_Simple_Node_155_Out()
  local l0
  l0 = Boxes["11682720508110024183"]
  local clone = l0
  l0 = self.box_MultipleOR_157
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1925482885", "1925482885", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_155.Out", "box_MultipleOR_157.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_Simple_Node_75_Out()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  local clone = l0
  params = self:OnEnter_box_IndexList_v2_68()
  l0 = self.box_IndexList_v2_68
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1270498907", "1270498907", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_75.Out", "box_IndexList_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_Simple_Node_170_Out()
  local l0
  l0 = Boxes["11682720508110024183"]
  local clone = l0
  l0 = self.box_OnceOnly_v3_44
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|99042797", "99042797", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_170.Out", "box_OnceOnly_v3_44.Reset", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, {})
  l0 = self.box_OnceOnly_v3_168
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|732706654", "732706654", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_170.Out", "box_OnceOnly_v3_168.Reset", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, {})
  l0 = self.box_OnceOnly_v3_165
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|645609978", "645609978", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_170.Out", "box_OnceOnly_v3_165.Reset", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, {})
  l0 = self.box_OnceOnly_v3_169
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1296104346", "1296104346", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_170.Out", "box_OnceOnly_v3_169.Reset", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, {})
end
function export:f_box_Simple_Node_23_Out()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  local clone = l0
  params = self:OnEnter_box_MessageListener_v3_74()
  l0 = self.box_MessageListener_v3_74
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1003035458", "1003035458", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_23.Out", "box_MessageListener_v3_74.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_Simple_Node_162_Out()
  local l0
  l0 = Boxes["11682720508110024183"]
  local clone = l0
  l0 = self.box_MultipleOR_157
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|786773244", "786773244", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_162.Out", "box_MultipleOR_157.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_CoopActivePlayers_153_PlayerAdded()
  local l0, l1
  l0 = self.box_CoopActivePlayers_153
  l1 = self.box_MultipleOR_154
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2045497354", "2045497354", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_CoopActivePlayers_153.PlayerAdded", "box_MultipleOR_154.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_CoopActivePlayers_153_TwoPlayers()
  local l0, l1
  l0 = self.box_CoopActivePlayers_153
  l1 = self.box_MultipleOR_154
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1420656382", "1420656382", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_CoopActivePlayers_153.TwoPlayers", "box_MultipleOR_154.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_LEM0020_RestrictedItemModifiers_152_Out()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_167()
  l0 = self.box_LEM0020_RestrictedItemModifiers_152
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|506069001", "506069001", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_LEM0020_RestrictedItemModifiers_152.Out", "box_OutputOrder_v2_167.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Delay_v5_10_Started()
  local params, l0, l1
  params = self:OnEnter_box_Simple_Node_40()
  l0 = self.box_Delay_v5_10
  l1 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1917987876", "1917987876", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Delay_v5_10.Started", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Delay_v5_10_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_SwitchGameMode_12()
  l0 = self.box_Delay_v5_10
  l1 = Boxes["3103179906340493512"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|117577531", "117577531", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Delay_v5_10.TimeElapsed", "box_SwitchGameMode_12.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_SetInteger_v2_94_Out()
  local l0
  self:OnExit_box_SetInteger_v2_94_Out()
  l0 = Boxes["9056014709740594453"]
  local clone = l0
  l0 = self.box_MultipleOR_72
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1079222940", "1079222940", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_SetInteger_v2_94.Out", "box_MultipleOR_72.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 2)
end
function export:f_box_MultipleOR_14_Out()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_15()
  l0 = self.box_MultipleOR_14
  l1 = self.box_PreconditionListener_15
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1050089920", "1050089920", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MultipleOR_14.Out", "box_PreconditionListener_15.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_MultipleOR_57_Out()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_54()
  l0 = self.box_MultipleOR_57
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1646732686", "1646732686", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MultipleOR_57.Out", "box_OutputOrder_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_SetInteger_v2_124_Out()
  local params, l0
  self:OnExit_box_SetInteger_v2_124_Out()
  l0 = Boxes["9056014709740594453"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_75()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1949153971", "1949153971", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_SetInteger_v2_124.Out", "box_Simple_Node_75.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_156_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_170()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|366748158", "366748158", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_156.Out", "box_Simple_Node_170.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_156_Out_1()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_MultipleOR_49
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1312038358", "1312038358", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_156.Out", "box_MultipleOR_49.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_ModifyCoopLeashRange_83_Out()
  local params, l0
  l0 = Boxes["18082559299092487593"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_163()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1029609161", "1029609161", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_ModifyCoopLeashRange_83.Out", "box_Simple_Node_163.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_SetActivityFact_64_Out()
  local params, l0
  l0 = Boxes["13904165977888905445"]
  local clone = l0
  params = self:OnEnter_box_SetInteger_v2_84()
  l0 = Boxes["9056014709740594453"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2052613072", "2052613072", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_SetActivityFact_64.Out", "box_SetInteger_v2_84.FromInteger", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OverrideWolfskin_132_Out()
  local params, l0
  l0 = Boxes["6901310923662649845"]
  local clone = l0
  params = self:OnEnter_box_LEM0020_Inventory_setup_45()
  l0 = self.box_LEM0020_Inventory_setup_45
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|596056012", "596056012", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OverrideWolfskin_132.Out", "box_LEM0020_Inventory_setup_45.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_BonusPlanModifier_v3_28_Added()
  local l0, l1
  l0 = self.box_BonusPlanModifier_v3_28
  l1 = self.box_MultipleOR_37
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|379734661", "379734661", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_BonusPlanModifier_v3_28.Added", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_BonusPlanModifier_v3_28_AlreadyAdded()
  local l0, l1
  l0 = self.box_BonusPlanModifier_v3_28
  l1 = self.box_MultipleOR_37
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|780333110", "780333110", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_BonusPlanModifier_v3_28.AlreadyAdded", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_BonusPlanModifier_v3_28_AlreadyRemoved()
  local l0, l1
  l0 = self.box_BonusPlanModifier_v3_28
  l1 = self.box_MultipleOR_30
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|142547265", "142547265", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_BonusPlanModifier_v3_28.AlreadyRemoved", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_BonusPlanModifier_v3_28_Removed()
  local l0, l1
  l0 = self.box_BonusPlanModifier_v3_28
  l1 = self.box_MultipleOR_30
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|688884325", "688884325", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_BonusPlanModifier_v3_28.Removed", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_BonusPlanModifier_v3_27_Added()
  local l0, l1
  l0 = self.box_BonusPlanModifier_v3_27
  l1 = self.box_MultipleOR_38
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|663609057", "663609057", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_BonusPlanModifier_v3_27.Added", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_BonusPlanModifier_v3_27_AlreadyAdded()
  local l0, l1
  l0 = self.box_BonusPlanModifier_v3_27
  l1 = self.box_MultipleOR_38
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2110285484", "2110285484", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_BonusPlanModifier_v3_27.AlreadyAdded", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_BonusPlanModifier_v3_27_AlreadyRemoved()
  local l0, l1
  l0 = self.box_BonusPlanModifier_v3_27
  l1 = self.box_MultipleOR_31
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1792911487", "1792911487", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_BonusPlanModifier_v3_27.AlreadyRemoved", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_BonusPlanModifier_v3_27_Removed()
  local l0, l1
  l0 = self.box_BonusPlanModifier_v3_27
  l1 = self.box_MultipleOR_31
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|532584397", "532584397", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_BonusPlanModifier_v3_27.Removed", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_OutputOrder_v2_51_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_OverrideWolfskin_218()
  l0 = Boxes["6901310923662649845"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|240469958", "240469958", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_51.Out", "box_OverrideWolfskin_218.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_51_Out_1()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_MultipleOR_66
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1828440689", "1828440689", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_51.Out", "box_MultipleOR_66.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_PreconditionListener_42_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_88()
  l0 = self.box_PreconditionListener_42
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1822680431", "1822680431", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_PreconditionListener_42.PreconditionMet", "box_OutputOrder_v2_88.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_131_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_42()
  l0 = self.box_PreconditionListener_42
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|398316095", "398316095", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_131.Out", "box_PreconditionListener_42.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_131_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_147()
  l0 = self.box_PreconditionListener_147
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|859944221", "859944221", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_131.Out", "box_PreconditionListener_147.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_142_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_MissionBlockLayer_141()
  l0 = Boxes["11012833455539521930"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|410172957", "410172957", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_142.Out", "box_MissionBlockLayer_141.Activate", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_142_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_MissionBlockLayer_143()
  l0 = Boxes["11012833455539521930"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|58801066", "58801066", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_142.Out", "box_MissionBlockLayer_143.Disable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_20_A_eq_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_GetPreconditionState_135()
  l0 = Boxes["7636177805574943300"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|576093044", "576093044", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Compare_Integers_20.A_eq_B", "box_GetPreconditionState_135.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_20_A_gt_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_7()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|360055311", "360055311", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Compare_Integers_20.A_gt_B", "box_Simple_Node_7.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_107_Out_0()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_OnceOnly_v3_165
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1308169706", "1308169706", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_107.Out", "box_OnceOnly_v3_165.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_OutputOrder_v2_107_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Gate_v3_103()
  l0 = self.box_Gate_v3_103
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1557945730", "1557945730", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_107.Out", "box_Gate_v3_103.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_Delay_v5_32_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_LEM0020_Inventory_Add_80()
  l0 = self.box_Delay_v5_32
  l1 = self.box_LEM0020_Inventory_Add_80
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1340398126", "1340398126", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Delay_v5_32.TimeElapsed", "box_LEM0020_Inventory_Add_80.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_SetBoolean_v2_216_Out()
  local params, l0
  self:OnExit_box_SetBoolean_v2_216_Out()
  l0 = Boxes["1494047278363574789"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_155()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|384556366", "384556366", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_SetBoolean_v2_216.Out", "box_Simple_Node_155.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Gate_v3_103_Opened()
  local params, l0, l1
  params = self:OnEnter_box_Simple_Node_76()
  l0 = self.box_Gate_v3_103
  l1 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|39477606", "39477606", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Gate_v3_103.Opened", "box_Simple_Node_76.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Gate_v3_103_Out()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_114()
  l0 = self.box_Gate_v3_103
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1759791729", "1759791729", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Gate_v3_103.Out", "box_OutputOrder_v2_114.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_SetInteger_v2_146_Out()
  local params, l0
  self:OnExit_box_SetInteger_v2_146_Out()
  l0 = Boxes["9056014709740594453"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_75()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1338068522", "1338068522", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_SetInteger_v2_146.Out", "box_Simple_Node_75.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_RpgGadgetSocketOverride_222_Out()
  local params, l0, l1
  params = self:OnEnter_box_RpgGadgetSocketOverride_223()
  l0 = self.box_RpgGadgetSocketOverride_222
  l1 = self.box_RpgGadgetSocketOverride_223
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1549691095", "1549691095", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_RpgGadgetSocketOverride_222.Out", "box_RpgGadgetSocketOverride_223.Override", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_MultipleOR_157_Out()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_131()
  l0 = self.box_MultipleOR_157
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1052574893", "1052574893", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MultipleOR_157.Out", "box_OutputOrder_v2_131.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_119_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_75()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|139496235", "139496235", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_119.Out", "box_Simple_Node_75.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_119_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_127()
  l0 = self.box_PreconditionListener_127
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1665833893", "1665833893", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_119.Out", "box_PreconditionListener_127.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OverrideWolfskin_218_Out()
  local params, l0
  l0 = Boxes["6901310923662649845"]
  local clone = l0
  params = self:OnEnter_box_LEM0020_Inventory_setup_50()
  l0 = self.box_LEM0020_Inventory_setup_50
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|751254210", "751254210", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OverrideWolfskin_218.Out", "box_LEM0020_Inventory_setup_50.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_148_Out_0()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_MultipleOR_149
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2075185908", "2075185908", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_148.Out", "box_MultipleOR_149.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_OutputOrder_v2_148_Out_1()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_CoopActivePlayers_153
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2026221829", "2026221829", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_148.Out", "box_CoopActivePlayers_153.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, {})
end
function export:f_box_SetInteger_v2_100_Out()
  local l0
  self:OnExit_box_SetInteger_v2_100_Out()
  l0 = Boxes["9056014709740594453"]
  local clone = l0
  l0 = self.box_MultipleOR_72
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1858955093", "1858955093", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_SetInteger_v2_100.Out", "box_MultipleOR_72.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 3)
end
function export:f_box_MultipleOR_30_Out()
  local params, l0, l1
  params = self:OnEnter_box_BonusPlanModifier_v3_27()
  l0 = self.box_MultipleOR_30
  l1 = self.box_BonusPlanModifier_v3_27
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1550624982", "1550624982", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MultipleOR_30.Out", "box_BonusPlanModifier_v3_27.Remove", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_LEM0020_RestrictedItemModifiers_58_Out()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_34()
  l0 = self.box_LEM0020_RestrictedItemModifiers_58
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|381234136", "381234136", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_LEM0020_RestrictedItemModifiers_58.Out", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_StatisticModifier_35_Set()
  local params, l0
  l0 = Boxes["15478190047253350759"]
  local clone = l0
  params = self:OnEnter_box_SaveOpenWorldBox_1()
  l0 = Boxes["17274682685841934203"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1734379218", "1734379218", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_StatisticModifier_35.Set", "box_SaveOpenWorldBox_1.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_173_Out_0()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_MultipleOR_14
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1436715545", "1436715545", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_173.Out", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 2)
end
function export:f_box_OutputOrder_v2_173_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Delay_v5_175()
  l0 = self.box_Delay_v5_175
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|651275122", "651275122", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_173.Out", "box_Delay_v5_175.Start", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
end
function export:f_box_RpgGadgetSocketOverride_214_Out()
  local params, l0, l1
  params = self:OnEnter_box_RpgGadgetSocketOverride_221()
  l0 = self.box_RpgGadgetSocketOverride_214
  l1 = self.box_RpgGadgetSocketOverride_221
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|13154902", "13154902", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_RpgGadgetSocketOverride_214.Out", "box_RpgGadgetSocketOverride_221.Override", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_PreconditionListener_89_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_91()
  l0 = self.box_PreconditionListener_89
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1249529374", "1249529374", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_PreconditionListener_89.PreconditionMet", "box_OutputOrder_v2_91.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_122_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_75()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1081866087", "1081866087", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_122.Out", "box_Simple_Node_75.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_122_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_129()
  l0 = self.box_PreconditionListener_129
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2121095449", "2121095449", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_122.Out", "box_PreconditionListener_129.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_PreconditionListener_126_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityFact_79()
  l0 = self.box_PreconditionListener_126
  l1 = Boxes["13904194869060163813"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1491394932", "1491394932", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_PreconditionListener_126.PreconditionMet", "box_GetActivityFact_79.GetFact", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  l0 = self.box_MultipleOR_2
  l1 = self.box_ActivityInitialized_5
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|287507776", "287507776", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MultipleOR_2.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, {})
end
function export:f_box_MultipleOR_149_Out()
  local l0, l1
  l0 = self.box_MultipleOR_149
  l1 = self.box_CoopActivePlayers_85
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|62221246", "62221246", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MultipleOR_149.Out", "box_CoopActivePlayers_85.Disable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, {})
end
function export:f_box_SetInteger_v2_117_Out()
  local params, l0
  self:OnExit_box_SetInteger_v2_117_Out()
  l0 = Boxes["9056014709740594453"]
  local clone = l0
  params = self:OnEnter_box_OutputOrder_v2_122()
  l0 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1884956793", "1884956793", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_SetInteger_v2_117.Out", "box_OutputOrder_v2_122.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Gate_v3_99_Opened()
  local params, l0, l1
  params = self:OnEnter_box_Simple_Node_76()
  l0 = self.box_Gate_v3_99
  l1 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|206247191", "206247191", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Gate_v3_99.Opened", "box_Simple_Node_76.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Gate_v3_99_Out()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_107()
  l0 = self.box_Gate_v3_99
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|327835508", "327835508", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Gate_v3_99.Out", "box_OutputOrder_v2_107.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_54_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_RestrictedItemModifier_52()
  l0 = self.box_RestrictedItemModifier_52
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1402201905", "1402201905", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_54.Out", "box_RestrictedItemModifier_52.Clear", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_54_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_RestrictedRpgFeatureModifier_53()
  l0 = Boxes["529627268808749847"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1829948338", "1829948338", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_54.Out", "box_RestrictedRpgFeatureModifier_53.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_54_Out_2()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_RevertOverriddenWolfskin_133()
  l0 = Boxes["3093078890824966294"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2143995912", "2143995912", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_54.Out", "box_RevertOverriddenWolfskin_133.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_54_Out_3()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_RevertOverriddenWolfskin_134()
  l0 = Boxes["3093078890824966294"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1497307142", "1497307142", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_54.Out", "box_RevertOverriddenWolfskin_134.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_91_Out_0()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_MultipleOR_90
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1570011969", "1570011969", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_91.Out", "box_MultipleOR_90.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_OutputOrder_v2_91_Out_1()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_CoopActivePlayers_85
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1411864987", "1411864987", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_91.Out", "box_CoopActivePlayers_85.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, {})
end
function export:f_box_GunsForHireSystemModifier_24_Disabled()
  local params, l0, l1
  params = self:OnEnter_box_ActivityMiscInfoModifier_v2_172()
  l0 = self.box_GunsForHireSystemModifier_24
  l1 = Boxes["15980983063889923268"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2101142370", "2101142370", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_GunsForHireSystemModifier_24.Disabled", "box_ActivityMiscInfoModifier_v2_172.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_GunsForHireSystemModifier_24_Enabled()
  local params, l0, l1
  params = self:OnEnter_box_ActivityMiscInfoModifier_v2_171()
  l0 = self.box_GunsForHireSystemModifier_24
  l1 = Boxes["15980983063889923268"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|173477646", "173477646", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_GunsForHireSystemModifier_24.Enabled", "box_ActivityMiscInfoModifier_v2_171.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MessageListener_v3_109_Received()
  local params, l0, l1
  params = self:OnEnter_box_SetActivityFact_108()
  l0 = self.box_MessageListener_v3_109
  l1 = Boxes["13904165977888905445"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1346471433", "1346471433", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MessageListener_v3_109.Received", "box_SetActivityFact_108.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_PreconditionListener_15_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_StatisticModifier_11()
  l0 = self.box_PreconditionListener_15
  l1 = Boxes["15478190047253350759"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|916588559", "916588559", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_PreconditionListener_15.PreconditionMet", "box_StatisticModifier_11.SetDirect", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_31_Out()
  local params, l0, l1
  params = self:OnEnter_box_IgnoreSignal_v2_29()
  l0 = self.box_MultipleOR_31
  l1 = self.box_IgnoreSignal_v2_29
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1232450332", "1232450332", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MultipleOR_31.Out", "box_IgnoreSignal_v2_29.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_Delay_v5_215_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_RpgGadgetSocketOverride_214()
  l0 = self.box_Delay_v5_215
  l1 = self.box_RpgGadgetSocketOverride_214
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1476596296", "1476596296", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Delay_v5_215.TimeElapsed", "box_RpgGadgetSocketOverride_214.Override", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_GetStatistic_18_ValueGot()
  local params, l0
  self:OnExit_box_GetStatistic_18_ValueGot()
  l0 = Boxes["14544726443001098387"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_20()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1776755802", "1776755802", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_GetStatistic_18.ValueGot", "box_Compare_Integers_20.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_SetInteger_v2_73_Out()
  local params, l0
  self:OnExit_box_SetInteger_v2_73_Out()
  l0 = Boxes["9056014709740594453"]
  local clone = l0
  params = self:OnEnter_box_OutputOrder_v2_119()
  l0 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|646667341", "646667341", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_SetInteger_v2_73.Out", "box_OutputOrder_v2_119.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_MultipleOR_66_Out()
  local l0, l1
  l0 = self.box_MultipleOR_66
  l1 = self.box_GetPlayersID_48
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1060423520", "1060423520", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MultipleOR_66.Out", "box_GetPlayersID_48.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, {})
end
function export:f_box_OutputOrder_v2_144_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_MissionBlockLayer_143()
  l0 = Boxes["11012833455539521930"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|557974722", "557974722", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_144.Out", "box_MissionBlockLayer_143.Activate", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_144_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_MissionBlockLayer_141()
  l0 = Boxes["11012833455539521930"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1138345454", "1138345454", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_144.Out", "box_MissionBlockLayer_141.Disable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
  l0:SetParentGraph(nil)
end
function export:f_box_RpgGadgetSocketOverride_226_Out()
  local params, l0, l1
  params = self:OnEnter_box_RpgGadgetSocketOverride_227()
  l0 = self.box_RpgGadgetSocketOverride_226
  l1 = self.box_RpgGadgetSocketOverride_227
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|692152277", "692152277", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_RpgGadgetSocketOverride_226.Out", "box_RpgGadgetSocketOverride_227.Override", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_SaveOpenWorldBox_1_Out()
  local params, l0
  l0 = Boxes["17274682685841934203"]
  local clone = l0
  params = self:OnEnter_box_Delay_v5_10()
  l0 = self.box_Delay_v5_10
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1811578522", "1811578522", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_SaveOpenWorldBox_1.Out", "box_Delay_v5_10.Start", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
end
function export:f_box_LEM0020_Inventory_Add_111_Out()
  local params, l0, l1
  params = self:OnEnter_box_RpgSkinOverride_229()
  l0 = self.box_LEM0020_Inventory_Add_111
  l1 = self.box_RpgSkinOverride_229
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1044982808", "1044982808", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_LEM0020_Inventory_Add_111.Out", "box_RpgSkinOverride_229.Override", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_ActivityAcknowledgeGate_v2_4_Acknowledged()
  local l0, l1
  l0 = self.box_ActivityAcknowledgeGate_v2_4
  l1 = self.box_MultipleOR_2
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|575761846", "575761846", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_ActivityAcknowledgeGate_v2_4.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_ActivityAcknowledgeGate_v2_4_Reloaded()
  local l0, l1
  l0 = self.box_ActivityAcknowledgeGate_v2_4
  l1 = self.box_MultipleOR_2
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1345432295", "1345432295", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_ActivityAcknowledgeGate_v2_4.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_Simple_Node_7_Out()
  local l0
  l0 = Boxes["11682720508110024183"]
  local clone = l0
  l0 = self.box_MultipleOR_14
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1924111729", "1924111729", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_7.Out", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 3)
end
function export:f_box_PreconditionListener_147_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_148()
  l0 = self.box_PreconditionListener_147
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|673605929", "673605929", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_PreconditionListener_147.PreconditionMet", "box_OutputOrder_v2_148.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MessageListener_v3_74_Enabled()
  local params, l0, l1
  params = self:OnEnter_box_BroadcastMessage_43()
  l0 = self.box_MessageListener_v3_74
  l1 = Boxes["17797273709721114288"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2083535641", "2083535641", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MessageListener_v3_74.Enabled", "box_BroadcastMessage_43.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MessageListener_v3_74_Received()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityState_v2_178()
  l0 = self.box_MessageListener_v3_74
  l1 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|794539573", "794539573", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MessageListener_v3_74.Received", "box_GetActivityState_v2_178.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_SetInteger_v2_84_Out()
  local l0
  self:OnExit_box_SetInteger_v2_84_Out()
  l0 = Boxes["9056014709740594453"]
  local clone = l0
  l0 = self.box_MultipleOR_72
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1013511743", "1013511743", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_SetInteger_v2_84.Out", "box_MultipleOR_72.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_StatisticModifier_11_Set()
  local params, l0
  l0 = Boxes["15478190047253350759"]
  local clone = l0
  params = self:OnEnter_box_StatisticModifier_35()
  l0 = Boxes["15478190047253350759"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|984955976", "984955976", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_StatisticModifier_11.Set", "box_StatisticModifier_35.SetDirect", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
  l0:SetParentGraph(nil)
end
function export:f_box_PreconditionListener_145_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityFact_59()
  l0 = self.box_PreconditionListener_145
  l1 = Boxes["13904194869060163813"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1615890850", "1615890850", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_PreconditionListener_145.PreconditionMet", "box_GetActivityFact_59.GetFact", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_25_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_GetStatistic_19()
  l0 = Boxes["14544726443001098387"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2001132823", "2001132823", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_25.Out", "box_GetStatistic_19.GetValue", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_25_Out_2()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_BonusPlanModifier_v3_28()
  l0 = self.box_BonusPlanModifier_v3_28
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1964221095", "1964221095", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_25.Out", "box_BonusPlanModifier_v3_28.Remove", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_25_Out_3()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_GunsForHireSystemModifier_24()
  l0 = self.box_GunsForHireSystemModifier_24
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1606549261", "1606549261", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_25.Out", "box_GunsForHireSystemModifier_24.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_25_Out_4()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_HeroVehicleLock_36()
  l0 = Boxes["12045624560217704534"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2145999855", "2145999855", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_25.Out", "box_HeroVehicleLock_36.Lock", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_25_Out_5()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_GetLocalPlayer_v2_46()
  l0 = Boxes["238599533382071246"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1277923704", "1277923704", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_25.Out", "box_GetLocalPlayer_v2_46.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_25_Out_6()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_139()
  l0 = self.box_PreconditionListener_139
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1360972267", "1360972267", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_25.Out", "box_PreconditionListener_139.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_112_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_RestrictedItemModifier_213()
  l0 = self.box_RestrictedItemModifier_213
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1052174870", "1052174870", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_112.Out", "box_RestrictedItemModifier_213.AddItem", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_112_Out_2()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Gate_v3_113()
  l0 = self.box_Gate_v3_113
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|122474654", "122474654", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_112.Out", "box_Gate_v3_113.Open", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
end
function export:f_box_OutputOrder_v2_61_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_LEM0020_RestrictedItemModifiers_58()
  l0 = self.box_LEM0020_RestrictedItemModifiers_58
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|100413370", "100413370", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_61.Out", "box_LEM0020_RestrictedItemModifiers_58.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_61_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Gate_v3_60()
  l0 = self.box_Gate_v3_60
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1935785385", "1935785385", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_61.Out", "box_Gate_v3_60.Open", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
end
function export:f_box_Compare_Integers_16_A_gt_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_GetStatistic_18()
  l0 = Boxes["14544726443001098387"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|257900379", "257900379", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Compare_Integers_16.A_gt_B", "box_GetStatistic_18.GetValue", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_16_A_le_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_17()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|100214020", "100214020", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Compare_Integers_16.A_le_B", "box_Simple_Node_17.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_PreconditionListener_127_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityFact_118()
  l0 = self.box_PreconditionListener_127
  l1 = Boxes["13904194869060163813"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1398999284", "1398999284", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_PreconditionListener_127.PreconditionMet", "box_GetActivityFact_118.GetFact", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_ModifyCoopLeashRange_219_Out()
  local params, l0
  l0 = Boxes["18082559299092487593"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_163()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1034128824", "1034128824", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_ModifyCoopLeashRange_219.Out", "box_Simple_Node_163.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_SetActivityFact_108_Out()
  local params, l0
  l0 = Boxes["13904165977888905445"]
  local clone = l0
  params = self:OnEnter_box_SetInteger_v2_110()
  l0 = Boxes["9056014709740594453"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|974307881", "974307881", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_SetActivityFact_108.Out", "box_SetInteger_v2_110.FromInteger", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_box_RestrictedItemModifier_212_Out()
  local params, l0, l1
  params = self:OnEnter_box_LEM0020_Inventory_Add_111()
  l0 = self.box_RestrictedItemModifier_212
  l1 = self.box_LEM0020_Inventory_Add_111
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|519999281", "519999281", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_RestrictedItemModifier_212.Out", "box_LEM0020_Inventory_Add_111.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_IgnoreSignal_v2_29_Disabled()
  local params, l0, l1
  params = self:OnEnter_box_IgnoreSignal_v2_26()
  l0 = self.box_IgnoreSignal_v2_29
  l1 = self.box_IgnoreSignal_v2_26
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|491676572", "491676572", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_IgnoreSignal_v2_29.Disabled", "box_IgnoreSignal_v2_26.Disable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_IgnoreSignal_v2_29_Enabled()
  local params, l0, l1
  params = self:OnEnter_box_IgnoreSignal_v2_26()
  l0 = self.box_IgnoreSignal_v2_29
  l1 = self.box_IgnoreSignal_v2_26
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|685884355", "685884355", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_IgnoreSignal_v2_29.Enabled", "box_IgnoreSignal_v2_26.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_MessageListener_v3_102_Received()
  local params, l0, l1
  params = self:OnEnter_box_SetActivityFact_101()
  l0 = self.box_MessageListener_v3_102
  l1 = Boxes["13904165977888905445"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|570974838", "570974838", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MessageListener_v3_102.Received", "box_SetActivityFact_101.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_GetPreconditionState_135_NotValid()
  local params, l0
  l0 = Boxes["7636177805574943300"]
  local clone = l0
  params = self:OnEnter_box_TeleportPawns_13()
  l0 = self.box_TeleportPawns_13
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|704451865", "704451865", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_GetPreconditionState_135.NotValid", "box_TeleportPawns_13.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_GetPreconditionState_135_Valid()
  local l0
  l0 = Boxes["7636177805574943300"]
  local clone = l0
  l0 = self.box_MultipleOR_14
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1589324861", "1589324861", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_GetPreconditionState_135.Valid", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_LEM0020_Inventory_Add_115_Out()
  local params, l0, l1
  params = self:OnEnter_box_RpgSkinOverride_228()
  l0 = self.box_LEM0020_Inventory_Add_115
  l1 = self.box_RpgSkinOverride_228
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|904726740", "904726740", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_LEM0020_Inventory_Add_115.Out", "box_RpgSkinOverride_228.Override", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_OutputOrder_v2_105_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_LEM0020_Inventory_Add_97()
  l0 = self.box_LEM0020_Inventory_Add_97
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|487983461", "487983461", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_105.Out", "box_LEM0020_Inventory_Add_97.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_105_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Gate_v3_103()
  l0 = self.box_Gate_v3_103
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|615078560", "615078560", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_105.Out", "box_Gate_v3_103.Open", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
end
function export:f_box_OutputOrder_v2_128_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_126()
  l0 = self.box_PreconditionListener_126
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1267485343", "1267485343", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_128.Out", "box_PreconditionListener_126.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_128_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_145()
  l0 = self.box_PreconditionListener_145
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|150384735", "150384735", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_128.Out", "box_PreconditionListener_145.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_GetPlayersID_48_OnePlayer()
  self:OnExit_box_GetPlayersID_48_OnePlayer()
end
function export:f_box_GetPlayersID_48_PlayerAdded()
  local params, l0, l1
  self:OnExit_box_GetPlayersID_48_PlayerAdded()
  params = self:OnEnter_box_OutputOrder_v2_156()
  l0 = self.box_GetPlayersID_48
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|339360442", "339360442", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_GetPlayersID_48.PlayerAdded", "box_OutputOrder_v2_156.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_GetPlayersID_48_PlayerRemoved()
  self:OnExit_box_GetPlayersID_48_PlayerRemoved()
end
function export:f_box_GetPlayersID_48_TwoPlayers()
  local l0, l1
  self:OnExit_box_GetPlayersID_48_TwoPlayers()
  l0 = self.box_GetPlayersID_48
  l1 = self.box_MultipleOR_49
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|508571912", "508571912", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_GetPlayersID_48.TwoPlayers", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_EntityStatusListener_158_Loaded()
  local l0, l1
  l0 = self.box_EntityStatusListener_158
  l1 = self.box_MultipleOR_159
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1335580741", "1335580741", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_EntityStatusListener_158.Loaded", "box_MultipleOR_159.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_SetInteger_v2_120_Out()
  local params, l0
  self:OnExit_box_SetInteger_v2_120_Out()
  l0 = Boxes["9056014709740594453"]
  local clone = l0
  params = self:OnEnter_box_OutputOrder_v2_125()
  l0 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1101138929", "1101138929", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_SetInteger_v2_120.Out", "box_OutputOrder_v2_125.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_95_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_LEM0020_Inventory_Add_106()
  l0 = self.box_LEM0020_Inventory_Add_106
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|800132797", "800132797", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_95.Out", "box_LEM0020_Inventory_Add_106.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_95_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Gate_v3_99()
  l0 = self.box_Gate_v3_99
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|949809463", "949809463", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_95.Out", "box_Gate_v3_99.Open", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
end
function export:f_box_GetStatistic_19_ValueGot()
  local params, l0
  self:OnExit_box_GetStatistic_19_ValueGot()
  l0 = Boxes["14544726443001098387"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_16()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1694605370", "1694605370", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_GetStatistic_19.ValueGot", "box_Compare_Integers_16.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_EntityStatusListener_161_Loaded()
  local l0, l1
  l0 = self.box_EntityStatusListener_161
  l1 = self.box_MultipleOR_159
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1707157591", "1707157591", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_EntityStatusListener_161.Loaded", "box_MultipleOR_159.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_GetActivityFact_121_FactSet()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  local clone = l0
  params = self:OnEnter_box_SetInteger_v2_120()
  l0 = Boxes["9056014709740594453"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1714528339", "1714528339", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_GetActivityFact_121.FactSet", "box_SetInteger_v2_120.FromInteger", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_box_SetActivityFact_92_Out()
  local params, l0
  l0 = Boxes["13904165977888905445"]
  local clone = l0
  params = self:OnEnter_box_SetInteger_v2_94()
  l0 = Boxes["9056014709740594453"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1418841466", "1418841466", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_SetActivityFact_92.Out", "box_SetInteger_v2_94.FromInteger", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_box_RpgGadgetSocketOverride_224_Out()
  local params, l0, l1
  params = self:OnEnter_box_RpgGadgetSocketOverride_225()
  l0 = self.box_RpgGadgetSocketOverride_224
  l1 = self.box_RpgGadgetSocketOverride_225
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1826339947", "1826339947", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_RpgGadgetSocketOverride_224.Out", "box_RpgGadgetSocketOverride_225.Override", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_MultipleOR_86_Out()
  local params, l0, l1
  params = self:OnEnter_box_ModifyCoopLeashRange_83()
  l0 = self.box_MultipleOR_86
  l1 = Boxes["18082559299092487593"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|100191851", "100191851", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MultipleOR_86.Out", "box_ModifyCoopLeashRange_83.CreateCustomLeash", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Delay_v5_151_TimeElapsed()
  local l0, l1
  l0 = self.box_Delay_v5_151
  l1 = self.box_MultipleOR_179
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|856670264", "856670264", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Delay_v5_151.TimeElapsed", "box_MultipleOR_179.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_OutputOrder_v2_114_Out_0()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_OnceOnly_v3_168
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|650661330", "650661330", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_114.Out", "box_OnceOnly_v3_168.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_OutputOrder_v2_114_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Gate_v3_113()
  l0 = self.box_Gate_v3_113
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|937494125", "937494125", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_114.Out", "box_Gate_v3_113.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_MessageListener_v3_93_Received()
  local params, l0, l1
  params = self:OnEnter_box_SetActivityFact_92()
  l0 = self.box_MessageListener_v3_93
  l1 = Boxes["13904165977888905445"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|761891847", "761891847", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MessageListener_v3_93.Received", "box_SetActivityFact_92.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_PreconditionListener_130_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityFact_123()
  l0 = self.box_PreconditionListener_130
  l1 = Boxes["13904194869060163813"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|143011793", "143011793", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_PreconditionListener_130.PreconditionMet", "box_GetActivityFact_123.GetFact", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_SetActivityFact_101_Out()
  local params, l0
  l0 = Boxes["13904165977888905445"]
  local clone = l0
  params = self:OnEnter_box_SetInteger_v2_100()
  l0 = Boxes["9056014709740594453"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1648740590", "1648740590", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_SetActivityFact_101.Out", "box_SetInteger_v2_100.FromInteger", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_116_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_75()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|837968229", "837968229", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_116.Out", "box_Simple_Node_75.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_116_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_GetActivityFact_63()
  l0 = Boxes["13904194869060163813"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1100824484", "1100824484", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_116.Out", "box_GetActivityFact_63.GetFact", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_CoopActivePlayers_85_PlayerAdded()
  local l0, l1
  l0 = self.box_CoopActivePlayers_85
  l1 = self.box_MultipleOR_86
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1523744766", "1523744766", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_CoopActivePlayers_85.PlayerAdded", "box_MultipleOR_86.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_CoopActivePlayers_85_TwoPlayers()
  local l0, l1
  l0 = self.box_CoopActivePlayers_85
  l1 = self.box_MultipleOR_86
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|712527626", "712527626", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_CoopActivePlayers_85.TwoPlayers", "box_MultipleOR_86.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_OutputOrder_v2_167_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_LEM0020_RemoveAmmo_22()
  l0 = self.box_LEM0020_RemoveAmmo_22
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|125301834", "125301834", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_167.Out", "box_LEM0020_RemoveAmmo_22.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_167_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Delay_v5_33()
  l0 = self.box_Delay_v5_33
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|163858587", "163858587", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_167.Out", "box_Delay_v5_33.Start", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
end
function export:f_box_Delay_v5_33_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_LEM0020_Inventory_Add_78()
  l0 = self.box_Delay_v5_33
  l1 = self.box_LEM0020_Inventory_Add_78
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|505398737", "505398737", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Delay_v5_33.TimeElapsed", "box_LEM0020_Inventory_Add_78.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_SetInteger_v2_67_Out()
  local params, l0
  self:OnExit_box_SetInteger_v2_67_Out()
  l0 = Boxes["9056014709740594453"]
  local clone = l0
  params = self:OnEnter_box_OutputOrder_v2_116()
  l0 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|705957174", "705957174", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_SetInteger_v2_67.Out", "box_OutputOrder_v2_116.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_SetInteger_v2_110_Out()
  local l0
  self:OnExit_box_SetInteger_v2_110_Out()
  l0 = Boxes["9056014709740594453"]
  local clone = l0
  l0 = self.box_MultipleOR_72
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|148325960", "148325960", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_SetInteger_v2_110.Out", "box_MultipleOR_72.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 4)
end
function export:f_box_GetPlayerGroup_v2_47_Out()
  local params, l0
  self:OnExit_box_GetPlayerGroup_v2_47_Out()
  l0 = Boxes["9581874586206389174"]
  local clone = l0
  params = self:OnEnter_box_OutputOrder_v2_70()
  l0 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1799725037", "1799725037", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_GetPlayerGroup_v2_47.Out", "box_OutputOrder_v2_70.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Delay_v5_166_TimeElapsed()
  local l0, l1
  l0 = self.box_Delay_v5_166
  l1 = self.box_OnceOnly_v3_44
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|417244642", "417244642", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Delay_v5_166.TimeElapsed", "box_OnceOnly_v3_44.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_MultipleOR_37_Out()
  local params, l0, l1
  params = self:OnEnter_box_BonusPlanModifier_v3_27()
  l0 = self.box_MultipleOR_37
  l1 = self.box_BonusPlanModifier_v3_27
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|985368393", "985368393", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MultipleOR_37.Out", "box_BonusPlanModifier_v3_27.Add", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_Delay_v5_175_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_BroadcastMessage_174()
  l0 = self.box_Delay_v5_175
  l1 = Boxes["17797273709721114288"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|248535995", "248535995", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Delay_v5_175.TimeElapsed", "box_BroadcastMessage_174.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_90_Out()
  local l0, l1
  l0 = self.box_MultipleOR_90
  l1 = self.box_CoopActivePlayers_41
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1622826583", "1622826583", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MultipleOR_90.Out", "box_CoopActivePlayers_41.Disable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, {})
end
function export:f_box_LEM0020_Inventory_Add_78_Out()
  local params, l0, l1
  params = self:OnEnter_box_Delay_v5_215()
  l0 = self.box_LEM0020_Inventory_Add_78
  l1 = self.box_Delay_v5_215
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1055037102", "1055037102", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_LEM0020_Inventory_Add_78.Out", "box_Delay_v5_215.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_OutputOrder_v2_34_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_LEM0020_RemoveAmmo_21()
  l0 = self.box_LEM0020_RemoveAmmo_21
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|499346669", "499346669", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_34.Out", "box_LEM0020_RemoveAmmo_21.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_34_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Delay_v5_32()
  l0 = self.box_Delay_v5_32
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|583850045", "583850045", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_34.Out", "box_Delay_v5_32.Start", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
end
function export:f_box_GetActivityFact_118_FactSet()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  local clone = l0
  params = self:OnEnter_box_SetInteger_v2_117()
  l0 = Boxes["9056014709740594453"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2103436801", "2103436801", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_GetActivityFact_118.FactSet", "box_SetInteger_v2_117.FromInteger", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_box_RestrictedItemModifier_213_Out()
  local params, l0, l1
  params = self:OnEnter_box_LEM0020_Inventory_Add_115()
  l0 = self.box_RestrictedItemModifier_213
  l1 = self.box_LEM0020_Inventory_Add_115
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1839119708", "1839119708", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_RestrictedItemModifier_213.Out", "box_LEM0020_Inventory_Add_115.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_OnceOnly_v3_165_Out_0()
  local params, l0, l1
  params = self:OnEnter_box_LEM0020_Inventory_Add_104()
  l0 = self.box_OnceOnly_v3_165
  l1 = self.box_LEM0020_Inventory_Add_104
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1392538875", "1392538875", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OnceOnly_v3_165.Out", "box_LEM0020_Inventory_Add_104.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_ModifyCoopLeashRange_150_Out()
  local params, l0
  l0 = Boxes["18082559299092487593"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_163()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|762774552", "762774552", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_ModifyCoopLeashRange_150.Out", "box_Simple_Node_163.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_GetActivityFact_63_FactSet()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  local clone = l0
  params = self:OnEnter_box_SetInteger_v2_73()
  l0 = Boxes["9056014709740594453"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|21616766", "21616766", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_GetActivityFact_63.FactSet", "box_SetInteger_v2_73.FromInteger", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Gate_v3_60_Opened()
  local params, l0, l1
  params = self:OnEnter_box_Simple_Node_76()
  l0 = self.box_Gate_v3_60
  l1 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|807208411", "807208411", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Gate_v3_60.Opened", "box_Simple_Node_76.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Gate_v3_60_Out()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_96()
  l0 = self.box_Gate_v3_60
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1563817743", "1563817743", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Gate_v3_60.Out", "box_OutputOrder_v2_96.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_159_Out()
  local params, l0, l1
  params = self:OnEnter_box_Simple_Node_162()
  l0 = self.box_MultipleOR_159
  l1 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1199907209", "1199907209", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MultipleOR_159.Out", "box_Simple_Node_162.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_ConsoleCommand_v3_138_Enabled()
  local params, l0, l1
  params = self:OnEnter_box_ConsoleCommand_v3_140()
  l0 = self.box_ConsoleCommand_v3_138
  l1 = self.box_ConsoleCommand_v3_140
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1734683799", "1734683799", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_ConsoleCommand_v3_138.Enabled", "box_ConsoleCommand_v3_140.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_ConsoleCommand_v3_138_Execute()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_142()
  l0 = self.box_ConsoleCommand_v3_138
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|289083280", "289083280", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_ConsoleCommand_v3_138.Execute", "box_OutputOrder_v2_142.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_ActivityInitialized_5_Out()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_25()
  l0 = self.box_ActivityInitialized_5
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|692860231", "692860231", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_ActivityInitialized_5.Out", "box_OutputOrder_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_OnceOnly_v3_164_Out_0()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_160()
  l0 = self.box_OnceOnly_v3_164
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|549956001", "549956001", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OnceOnly_v3_164.Out", "box_OutputOrder_v2_160.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_RpgGadgetSocketOverride_225_Out()
  local params, l0, l1
  params = self:OnEnter_box_RpgGadgetSocketOverride_226()
  l0 = self.box_RpgGadgetSocketOverride_225
  l1 = self.box_RpgGadgetSocketOverride_226
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|448740028", "448740028", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_RpgGadgetSocketOverride_225.Out", "box_RpgGadgetSocketOverride_226.Override", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_MultipleOR_38_Out()
  local params, l0, l1
  params = self:OnEnter_box_IgnoreSignal_v2_29()
  l0 = self.box_MultipleOR_38
  l1 = self.box_IgnoreSignal_v2_29
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1522792784", "1522792784", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MultipleOR_38.Out", "box_IgnoreSignal_v2_29.Disable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_SetActivityFact_71_Out()
  local params, l0
  l0 = Boxes["13904165977888905445"]
  local clone = l0
  params = self:OnEnter_box_SetInteger_v2_69()
  l0 = Boxes["9056014709740594453"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|301762091", "301762091", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_SetActivityFact_71.Out", "box_SetInteger_v2_69.FromInteger", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_70_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_MessageListener_v3_77()
  l0 = self.box_MessageListener_v3_77
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1293156090", "1293156090", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_70.Out", "box_MessageListener_v3_77.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_70_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_MessageListener_v3_65()
  l0 = self.box_MessageListener_v3_65
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|972344199", "972344199", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_70.Out", "box_MessageListener_v3_65.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_70_Out_2()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_MessageListener_v3_93()
  l0 = self.box_MessageListener_v3_93
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|706459712", "706459712", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_70.Out", "box_MessageListener_v3_93.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_70_Out_3()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_MessageListener_v3_102()
  l0 = self.box_MessageListener_v3_102
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1544650034", "1544650034", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_70.Out", "box_MessageListener_v3_102.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_70_Out_4()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_MessageListener_v3_109()
  l0 = self.box_MessageListener_v3_109
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1695281492", "1695281492", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_70.Out", "box_MessageListener_v3_109.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_70_Out_5()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_23()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|412401700", "412401700", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_70.Out", "box_Simple_Node_23.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OnceOnly_v3_168_Out_0()
  local params, l0, l1
  params = self:OnEnter_box_LEM0020_Inventory_Add_98()
  l0 = self.box_OnceOnly_v3_168
  l1 = self.box_LEM0020_Inventory_Add_98
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1397681415", "1397681415", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OnceOnly_v3_168.Out", "box_LEM0020_Inventory_Add_98.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_OnceOnly_v3_169_Out_0()
  local params, l0, l1
  params = self:OnEnter_box_RestrictedItemModifier_212()
  l0 = self.box_OnceOnly_v3_169
  l1 = self.box_RestrictedItemModifier_212
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|569150082", "569150082", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OnceOnly_v3_169.Out", "box_RestrictedItemModifier_212.AddItem", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_TeleportPawns_13_Out()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_173()
  l0 = self.box_TeleportPawns_13
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1754397112", "1754397112", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_TeleportPawns_13.Out", "box_OutputOrder_v2_173.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_9_Out()
  local params, l0, l1
  params = self:OnEnter_box_ModifyCoopLeashRange_219()
  l0 = self.box_MultipleOR_9
  l1 = Boxes["18082559299092487593"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1200014844", "1200014844", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MultipleOR_9.Out", "box_ModifyCoopLeashRange_219.CreateCustomLeash", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_GetActivityFact_123_FactSet()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  local clone = l0
  params = self:OnEnter_box_SetInteger_v2_124()
  l0 = Boxes["9056014709740594453"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|781445444", "781445444", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_GetActivityFact_123.FactSet", "box_SetInteger_v2_124.FromInteger", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_box_GetActivityFact_79_FactSet()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  local clone = l0
  params = self:OnEnter_box_SetInteger_v2_67()
  l0 = Boxes["9056014709740594453"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1750815128", "1750815128", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_GetActivityFact_79.FactSet", "box_SetInteger_v2_67.FromInteger", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_box_GetLocalPlayer_v2_46_Out()
  local params, l0
  self:OnExit_box_GetLocalPlayer_v2_46_Out()
  l0 = Boxes["238599533382071246"]
  local clone = l0
  params = self:OnEnter_box_GetPlayerGroup_v2_47()
  l0 = Boxes["9581874586206389174"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|217121145", "217121145", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_GetLocalPlayer_v2_46.Out", "box_GetPlayerGroup_v2_47.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
  l0:SetParentGraph(nil)
end
function export:f_box_GetActivityFact_59_FactSet()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  local clone = l0
  params = self:OnEnter_box_SetInteger_v2_146()
  l0 = Boxes["9056014709740594453"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1353537128", "1353537128", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_GetActivityFact_59.FactSet", "box_SetInteger_v2_146.FromInteger", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_39_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_BonusPlanModifier_v3_28()
  l0 = self.box_BonusPlanModifier_v3_28
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|751459024", "751459024", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_39.Out", "box_BonusPlanModifier_v3_28.Add", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_39_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_GunsForHireSystemModifier_24()
  l0 = self.box_GunsForHireSystemModifier_24
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|101495518", "101495518", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_39.Out", "box_GunsForHireSystemModifier_24.EnableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_39_Out_2()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_HeroVehicleLock_36()
  l0 = Boxes["12045624560217704534"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1601836458", "1601836458", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_39.Out", "box_HeroVehicleLock_36.Unlock", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Gate_v3_113_Opened()
  local params, l0, l1
  params = self:OnEnter_box_Simple_Node_76()
  l0 = self.box_Gate_v3_113
  l1 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|454851849", "454851849", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Gate_v3_113.Opened", "box_Simple_Node_76.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Gate_v3_113_Out()
  local l0, l1
  l0 = self.box_Gate_v3_113
  l1 = self.box_OnceOnly_v3_169
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1428566842", "1428566842", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Gate_v3_113.Out", "box_OnceOnly_v3_169.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_OutputOrder_v2_62_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_OverrideWolfskin_132()
  l0 = Boxes["6901310923662649845"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2116007182", "2116007182", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_62.Out", "box_OverrideWolfskin_132.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_62_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Gate_v3_60()
  l0 = self.box_Gate_v3_60
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1437273382", "1437273382", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_62.Out", "box_Gate_v3_60.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_62_Out_2()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_SetBoolean_v2_216()
  l0 = Boxes["1494047278363574789"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1562381793", "1562381793", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_62.Out", "box_SetBoolean_v2_216.True", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_ConsoleCommand_v3_140_Execute()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_144()
  l0 = self.box_ConsoleCommand_v3_140
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|937828922", "937828922", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_ConsoleCommand_v3_140.Execute", "box_OutputOrder_v2_144.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_RpgGadgetSocketOverride_221_Out()
  local params, l0, l1
  params = self:OnEnter_box_RpgGadgetSocketOverride_222()
  l0 = self.box_RpgGadgetSocketOverride_221
  l1 = self.box_RpgGadgetSocketOverride_222
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1996874638", "1996874638", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_RpgGadgetSocketOverride_221.Out", "box_RpgGadgetSocketOverride_222.Override", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_MultipleOR_179_Out()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_128()
  l0 = self.box_MultipleOR_179
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1304997236", "1304997236", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MultipleOR_179.Out", "box_OutputOrder_v2_128.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_3_Out_0()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_ActivityAcknowledgeGate_v2_4
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|969869904", "969869904", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_3.Out", "box_ActivityAcknowledgeGate_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, {})
end
function export:f_box_OutputOrder_v2_3_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Print_v2_6()
  l0 = Boxes["8578475447439923801"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2055222636", "2055222636", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_3.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_LEM0020_Inventory_Add_80_Out()
  local params, l0, l1
  params = self:OnEnter_box_RpgGadgetSocketOverride_224()
  l0 = self.box_LEM0020_Inventory_Add_80
  l1 = self.box_RpgGadgetSocketOverride_224
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1297363779", "1297363779", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_LEM0020_Inventory_Add_80.Out", "box_RpgGadgetSocketOverride_224.Override", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_OutputOrder_v2_96_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Delay_v5_166()
  l0 = self.box_Delay_v5_166
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1161649363", "1161649363", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_96.Out", "box_Delay_v5_166.Start", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
end
function export:f_box_OutputOrder_v2_96_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Gate_v3_99()
  l0 = self.box_Gate_v3_99
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|342608095", "342608095", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_96.Out", "box_Gate_v3_99.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_125_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_75()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2041652938", "2041652938", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_125.Out", "box_Simple_Node_75.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_125_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_130()
  l0 = self.box_PreconditionListener_130
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1189700307", "1189700307", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_125.Out", "box_PreconditionListener_130.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_PreconditionListener_87_PreconditionMet()
  local l0, l1
  l0 = self.box_PreconditionListener_87
  l1 = self.box_CoopActivePlayers_41
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|732115883", "732115883", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_PreconditionListener_87.PreconditionMet", "box_CoopActivePlayers_41.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, {})
end
function export:f_box_MultipleOR_154_Out()
  local params, l0, l1
  params = self:OnEnter_box_ModifyCoopLeashRange_150()
  l0 = self.box_MultipleOR_154
  l1 = Boxes["18082559299092487593"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|214508730", "214508730", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MultipleOR_154.Out", "box_ModifyCoopLeashRange_150.CreateCustomLeash", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_49_Out()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_62()
  l0 = self.box_MultipleOR_49
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1832124491", "1832124491", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MultipleOR_49.Out", "box_OutputOrder_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_PreconditionListener_139_Enabled()
  local params, l0, l1
  params = self:OnEnter_box_ConsoleCommand_v3_138()
  l0 = self.box_PreconditionListener_139
  l1 = self.box_ConsoleCommand_v3_138
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|205654527", "205654527", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_PreconditionListener_139.Enabled", "box_ConsoleCommand_v3_138.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_PreconditionListener_139_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_MissionBlockLayer_136()
  l0 = self.box_PreconditionListener_139
  l1 = Boxes["11012833455539521930"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1243017064", "1243017064", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_PreconditionListener_139.PreconditionMet", "box_MissionBlockLayer_136.Disable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
  l1:SetParentGraph(nil)
end
function export:f_box_SetInteger_v2_69_Out()
  local l0
  self:OnExit_box_SetInteger_v2_69_Out()
  l0 = Boxes["9056014709740594453"]
  local clone = l0
  l0 = self.box_MultipleOR_72
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1865211981", "1865211981", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_SetInteger_v2_69.Out", "box_MultipleOR_72.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_MessageListener_v3_77_Received()
  local params, l0, l1
  params = self:OnEnter_box_SetActivityFact_64()
  l0 = self.box_MessageListener_v3_77
  l1 = Boxes["13904165977888905445"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1164714042", "1164714042", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MessageListener_v3_77.Received", "box_SetActivityFact_64.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_IndexList_v2_68_Output_0()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_51()
  l0 = self.box_IndexList_v2_68
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|782987381", "782987381", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_IndexList_v2_68.Output", "box_OutputOrder_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_IndexList_v2_68_Output_1()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_61()
  l0 = self.box_IndexList_v2_68
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|768467079", "768467079", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_IndexList_v2_68.Output", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_IndexList_v2_68_Output_2()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_95()
  l0 = self.box_IndexList_v2_68
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1782708137", "1782708137", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_IndexList_v2_68.Output", "box_OutputOrder_v2_95.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_IndexList_v2_68_Output_3()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_105()
  l0 = self.box_IndexList_v2_68
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1542740417", "1542740417", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_IndexList_v2_68.Output", "box_OutputOrder_v2_105.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_IndexList_v2_68_Output_4()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_112()
  l0 = self.box_IndexList_v2_68
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1682177267", "1682177267", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_IndexList_v2_68.Output", "box_OutputOrder_v2_112.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MessageListener_v3_65_Received()
  local params, l0, l1
  params = self:OnEnter_box_SetActivityFact_71()
  l0 = self.box_MessageListener_v3_65
  l1 = Boxes["13904165977888905445"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1236147099", "1236147099", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MessageListener_v3_65.Received", "box_SetActivityFact_71.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Simple_Node_17_Out()
  local l0
  l0 = Boxes["11682720508110024183"]
  local clone = l0
  l0 = self.box_MultipleOR_14
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1071671896", "1071671896", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_Simple_Node_17.Out", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_OnceOnly_v3_44_Out_0()
  local params, l0, l1
  params = self:OnEnter_box_LEM0020_RestrictedItemModifiers_152()
  l0 = self.box_OnceOnly_v3_44
  l1 = self.box_LEM0020_RestrictedItemModifiers_152
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1749924058", "1749924058", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OnceOnly_v3_44.Out", "box_LEM0020_RestrictedItemModifiers_152.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_CoopActivePlayers_41_PlayerAdded()
  local l0, l1
  l0 = self.box_CoopActivePlayers_41
  l1 = self.box_MultipleOR_9
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|967700632", "967700632", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_CoopActivePlayers_41.PlayerAdded", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_CoopActivePlayers_41_TwoPlayers()
  local l0, l1
  l0 = self.box_CoopActivePlayers_41
  l1 = self.box_MultipleOR_9
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1887180716", "1887180716", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_CoopActivePlayers_41.TwoPlayers", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_MultipleOR_72_Out()
  local params, l0, l1
  params = self:OnEnter_box_Simple_Node_75()
  l0 = self.box_MultipleOR_72
  l1 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1911618188", "1911618188", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MultipleOR_72.Out", "box_Simple_Node_75.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_88_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_87()
  l0 = self.box_PreconditionListener_87
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|158976676", "158976676", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_88.Out", "box_PreconditionListener_87.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_88_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_89()
  l0 = self.box_PreconditionListener_89
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|929504604", "929504604", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_88.Out", "box_PreconditionListener_89.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_160_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_EntityStatusListener_161()
  l0 = self.box_EntityStatusListener_161
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|236586488", "236586488", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_160.Out", "box_EntityStatusListener_161.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_160_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_EntityStatusListener_158()
  l0 = self.box_EntityStatusListener_158
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1789549738", "1789549738", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_OutputOrder_v2_160.Out", "box_EntityStatusListener_158.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_GetActivityState_v2_178_Active()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  params = self:OnEnter_box_Delay_v5_151()
  l0 = self.box_Delay_v5_151
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|591952161", "591952161", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_GetActivityState_v2_178.Active", "box_Delay_v5_151.Start", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
end
function export:f_box_GetActivityState_v2_178_Completed()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_179
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1026659394", "1026659394", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_GetActivityState_v2_178.Completed", "box_MultipleOR_179.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_MissionBlockLayer_136_Disabled()
  local params, l0
  l0 = Boxes["11012833455539521930"]
  local clone = l0
  params = self:OnEnter_box_MissionBlockLayer_137()
  l0 = Boxes["11012833455539521930"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|262047975", "262047975", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_MissionBlockLayer_136.Disabled", "box_MissionBlockLayer_137.Activate", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_PreconditionListener_129_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityFact_121()
  l0 = self.box_PreconditionListener_129
  l1 = Boxes["13904194869060163813"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|636549369", "636549369", "LEM0020_SWITCH_WORLD_TO_MAIN", "box_PreconditionListener_129.PreconditionMet", "box_GetActivityFact_121.GetFact", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:OnEnter_box_Simple_Node_163()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_163")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|@CheckPlayersAlive")
  l0:SetConnections({
    [0] = self.f_box_Simple_Node_163_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_Simple_Node_76()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_76")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|@CheckPlayerTwo")
  l0:SetConnections({
    [0] = self.f_box_Simple_Node_76_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_Simple_Node_40()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_40")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|@cleanup")
  l0:SetConnections({
    [0] = self.f_box_Simple_Node_40_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_Simple_Node_155()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_155")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|@CoopLeash")
  l0:SetConnections({
    [0] = self.f_box_Simple_Node_155_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_Simple_Node_75()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_75")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|@DetermineLootPool")
  l0:SetConnections({
    [0] = self.f_box_Simple_Node_75_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_Simple_Node_170()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_170")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|@PlayerAdded")
  l0:SetConnections({
    [0] = self.f_box_Simple_Node_170_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_Simple_Node_23()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_23")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|@Reload_Check")
  l0:SetConnections({
    [0] = self.f_box_Simple_Node_23_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_Simple_Node_162()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_162")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|@Reset Leash")
  l0:SetConnections({
    [0] = self.f_box_Simple_Node_162_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_LEM0020_RestrictedItemModifiers_152()
  local params
  params = {
    [0] = self.Player_Client
  }
  return params
end
function export:OnEnter_box_Delay_v5_10()
  local params
  params = {
    [0] = false,
    [2] = 1
  }
  return params
end
function export:OnEnter_box_SetInteger_v2_94()
  local params, l0
  l0 = Boxes["9056014709740594453"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetInteger_v2_94")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|15268915")
  l0:SetConnections({
    [0] = self.f_box_SetInteger_v2_94_Out
  })
  params = {
    [1] = 3,
    [3] = false
  }
  return params
end
function export:OnEnter_box_SetInteger_v2_124()
  local params, l0
  l0 = Boxes["9056014709740594453"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetInteger_v2_124")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|45309821")
  l0:SetConnections({
    [0] = self.f_box_SetInteger_v2_124_Out
  })
  params = {
    [1] = 5,
    [3] = false
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_156()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_156")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|67079729")
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
        [0] = self.f_box_OutputOrder_v2_156_Out_0,
        [1] = self.f_box_OutputOrder_v2_156_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_ModifyCoopLeashRange_83()
  local params, l0
  l0 = Boxes["18082559299092487593"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ModifyCoopLeashRange_83")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|87877704")
  l0:SetConnections({
    [0] = self.f_box_ModifyCoopLeashRange_83_Out
  })
  params = {
    [0] = 65,
    [1] = 55,
    [2] = 50
  }
  return params
end
function export:OnEnter_box_SetActivityFact_64()
  local params, l0
  l0 = Boxes["13904165977888905445"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetActivityFact_64")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|91491651")
  l0:SetConnections({
    [0] = self.f_box_SetActivityFact_64_Out
  })
  params = {
    [0] = "LootPool_Empty"
  }
  return params
end
function export:OnEnter_box_OverrideWolfskin_132()
  local params, l0
  l0 = Boxes["6901310923662649845"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OverrideWolfskin_132")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|110478913")
  l0:SetConnections({
    [0] = self.f_box_OverrideWolfskin_132_Out
  })
  params = {
    [0] = self.Player_Client,
    [1] = "9015589810634885"
  }
  return params
end
function export:OnEnter_box_BonusPlanModifier_v3_28()
  local params
  params = {
    [0] = "tetra_coreskillitem_wingsuit",
    [1] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_BonusPlanModifier_v3_27()
  local params
  params = {
    [0] = "tetra_coreskillitem_parachute",
    [1] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_LEM0020_Inventory_Add_98()
  local params
  params = {
    [0] = "9015566994452610",
    [1] = "9015543500542632",
    [2] = self.Player_Client,
    [3] = self.Plare_Group
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_51()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_51")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|160282664")
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
        [0] = self.f_box_OutputOrder_v2_51_Out_0,
        [1] = self.f_box_OutputOrder_v2_51_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_PreconditionListener_42()
  local params
  params = {
    [0] = true,
    [1] = "9015527766189885",
    [2] = true
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_131()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_131")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|166431812")
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
        [0] = self.f_box_OutputOrder_v2_131_Out_0,
        [1] = self.f_box_OutputOrder_v2_131_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_OutputOrder_v2_142()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_142")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|178288674")
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
        [0] = self.f_box_OutputOrder_v2_142_Out_0,
        [1] = self.f_box_OutputOrder_v2_142_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_Compare_Integers_20()
  local params, l0
  DrawTextToScreen("Comment: check lem 0020  missionflow", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Compare Integers')-- Comment: check lem 0020  missionflow")
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_20")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|189292447")
  l0:SetConnections({
    [0] = self.f_box_Compare_Integers_20_A_eq_B,
    [2] = self.f_box_Compare_Integers_20_A_gt_B
  })
  params = {
    [0] = self.DLC_LEM0020_World_FlowTracker,
    [1] = 0
  }
  return params
end
function export:OnEnter_box_MissionBlockLayer_143()
  local params, l0
  l0 = Boxes["11012833455539521930"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MissionBlockLayer_143")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|219632212")
  l0:SetConnections({})
  params = {
    [0] = "27160518699155998",
    [1] = "45174917208714378"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_107()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_107")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|222126361")
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
        [0] = self.f_box_OutputOrder_v2_107_Out_0,
        [1] = self.f_box_OutputOrder_v2_107_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_RestrictedRpgFeatureModifier_53()
  local params, l0
  l0 = Boxes["529627268808749847"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RestrictedRpgFeatureModifier_53")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|231051356")
  l0:SetConnections({})
  params = {
    [0] = true,
    [1] = "#ED455357",
    [2] = "Backpack"
  }
  return params
end
function export:OnEnter_box_Delay_v5_32()
  local params
  params = {
    [0] = false,
    [2] = 0,1
  }
  return params
end
function export:OnEnter_box_SetBoolean_v2_216()
  local params, l0
  l0 = Boxes["1494047278363574789"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetBoolean_v2_216")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|273860142")
  l0:SetConnections({
    [0] = self.f_box_SetBoolean_v2_216_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_Gate_v3_103()
  local params
  params = {
    [0] = false
  }
  return params
end
function export:OnEnter_box_SetInteger_v2_146()
  local params, l0
  l0 = Boxes["9056014709740594453"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetInteger_v2_146")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|305329428")
  l0:SetConnections({
    [0] = self.f_box_SetInteger_v2_146_Out
  })
  params = {
    [1] = 1,
    [3] = false
  }
  return params
end
function export:OnEnter_box_RpgGadgetSocketOverride_222()
  local params
  params = {
    [0] = "GadgetC",
    [1] = "9015460312658318",
    [2] = self.Player_Client
  }
  return params
end
function export:OnEnter_box_ActivityMiscInfoModifier_v2_172()
  local params, l0
  l0 = Boxes["15980983063889923268"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ActivityMiscInfoModifier_v2_172")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|311399757")
  l0:SetConnections({})
  params = {
    [0] = true,
    [1] = true
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_119()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_119")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|326767989")
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
        [0] = self.f_box_OutputOrder_v2_119_Out_0,
        [1] = self.f_box_OutputOrder_v2_119_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_OverrideWolfskin_218()
  local params, l0
  l0 = Boxes["6901310923662649845"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OverrideWolfskin_218")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|331237603")
  l0:SetConnections({
    [0] = self.f_box_OverrideWolfskin_218_Out
  })
  params = {
    [0] = self.Local_Player,
    [1] = "9015589810634885"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_148()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_148")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|373937500")
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
        [0] = self.f_box_OutputOrder_v2_148_Out_0,
        [1] = self.f_box_OutputOrder_v2_148_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_SetInteger_v2_100()
  local params, l0
  l0 = Boxes["9056014709740594453"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetInteger_v2_100")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|379125118")
  l0:SetConnections({
    [0] = self.f_box_SetInteger_v2_100_Out
  })
  params = {
    [1] = 4,
    [3] = false
  }
  return params
end
function export:OnEnter_box_LEM0020_RestrictedItemModifiers_58()
  local params
  params = {
    [0] = self.Player_Host
  }
  return params
end
function export:OnEnter_box_StatisticModifier_35()
  local params, l0
  DrawTextToScreen("Comment: set DLC_LEM0020_Left_FC6main = 1", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'StatisticModifier')-- Comment: set DLC_LEM0020_Left_FC6main = 1")
  l0 = Boxes["15478190047253350759"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_StatisticModifier_35")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|426112388")
  l0:SetConnections({
    [2] = self.f_box_StatisticModifier_35_Set
  })
  params = {
    [0] = "DLC_LEM0020_Left_FC6main",
    [2] = 1
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_173()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_173")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|434303334")
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
        [0] = self.f_box_OutputOrder_v2_173_Out_0,
        [1] = self.f_box_OutputOrder_v2_173_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_RpgGadgetSocketOverride_214()
  local params
  params = {
    [0] = "GadgetA",
    [1] = "9015460312658254",
    [2] = self.Player_Client
  }
  return params
end
function export:OnEnter_box_PreconditionListener_89()
  local params
  params = {
    [0] = true,
    [1] = "9015527766212048",
    [2] = true
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_122()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_122")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|498609913")
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
        [0] = self.f_box_OutputOrder_v2_122_Out_0,
        [1] = self.f_box_OutputOrder_v2_122_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_PreconditionListener_126()
  local params
  params = {
    [0] = true,
    [1] = "9015527766176864",
    [2] = true
  }
  return params
end
function export:OnEnter_box_BroadcastMessage_174()
  local params, l0
  l0 = Boxes["17797273709721114288"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_BroadcastMessage_174")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|553110889")
  l0:SetConnections({})
  params = {
    [0] = "teleported_lem0020_startpos"
  }
  return params
end
function export:OnEnter_box_SetInteger_v2_117()
  local params, l0
  l0 = Boxes["9056014709740594453"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetInteger_v2_117")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|558524602")
  l0:SetConnections({
    [0] = self.f_box_SetInteger_v2_117_Out
  })
  params = {
    [1] = 3,
    [3] = false
  }
  return params
end
function export:OnEnter_box_Gate_v3_99()
  local params
  params = {
    [0] = false
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_54()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_54")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|563889831")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [1] = 4
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [1] = {
      connections = {
        [0] = self.f_box_OutputOrder_v2_54_Out_0,
        [1] = self.f_box_OutputOrder_v2_54_Out_1,
        [2] = self.f_box_OutputOrder_v2_54_Out_2,
        [3] = self.f_box_OutputOrder_v2_54_Out_3
      },
      count = 4
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_OutputOrder_v2_91()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_91")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|567599758")
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
        [0] = self.f_box_OutputOrder_v2_91_Out_0,
        [1] = self.f_box_OutputOrder_v2_91_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_GunsForHireSystemModifier_24()
  local params
  DrawTextToScreen("Comment: disable GFH system", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GunsForHireSystemModifier')-- Comment: disable GFH system")
  params = {
    [0] = false,
    [1] = true
  }
  return params
end
function export:OnEnter_box_MessageListener_v3_109()
  local params
  params = {
    [0] = true,
    [1] = "B100_WeaponGet"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_15()
  local params
  params = {
    [0] = true,
    [1] = "9015527766248255",
    [2] = true
  }
  return params
end
function export:OnEnter_box_Delay_v5_215()
  local params
  params = {
    [0] = false,
    [2] = 1
  }
  return params
end
function export:OnEnter_box_GetStatistic_18()
  local params, l0
  l0 = Boxes["14544726443001098387"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetStatistic_18")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|633810049")
  l0:SetConnections({
    [0] = self.f_box_GetStatistic_18_ValueGot
  })
  params = {
    [0] = "DLC_LEM0020_World_FlowTracker"
  }
  return params
end
function export:OnEnter_box_SetInteger_v2_73()
  local params, l0
  l0 = Boxes["9056014709740594453"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetInteger_v2_73")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|634348721")
  l0:SetConnections({
    [0] = self.f_box_SetInteger_v2_73_Out
  })
  params = {
    [1] = 2,
    [3] = false
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_144()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_144")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|677462330")
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
        [0] = self.f_box_OutputOrder_v2_144_Out_0,
        [1] = self.f_box_OutputOrder_v2_144_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_RpgGadgetSocketOverride_226()
  local params
  params = {
    [0] = "GadgetC",
    [1] = "9015460312658318",
    [2] = self.Player_Host
  }
  return params
end
function export:OnEnter_box_SaveOpenWorldBox_1()
  local params, l0
  l0 = Boxes["17274682685841934203"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SaveOpenWorldBox_1")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|686021750")
  l0:SetConnections({
    [0] = self.f_box_SaveOpenWorldBox_1_Out
  })
  params = {
    [0] = true
  }
  return params
end
function export:OnEnter_box_LEM0020_Inventory_Add_111()
  local params
  params = {
    [0] = "9015334645481387",
    [1] = "9015543500718975",
    [2] = self.Player_Client,
    [3] = self.Plare_Group
  }
  return params
end
function export:OnEnter_box_Print_v2_6()
  local params, l0
  l0 = Boxes["8578475447439923801"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Print_v2_6")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|723826903")
  l0:SetConnections({})
  params = {
    [1] = "green",
    [3] = 3,
    [7] = "C:\\Print.log",
    [8] = "LEM0020_SWITCH_WORLD_TO_MAIN script is running.",
    [9] = true
  }
  return params
end
function export:OnEnter_box_Simple_Node_7()
  local params, l0
  DrawTextToScreen("Comment: flowTracker invalid number", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: flowTracker invalid number")
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_7")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|740839702")
  l0:SetConnections({
    [0] = self.f_box_Simple_Node_7_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_LEM0020_RemoveAmmo_21()
  local params
  params = {
    [0] = self.Player_Host
  }
  return params
end
function export:OnEnter_box_PreconditionListener_147()
  local params
  params = {
    [0] = true,
    [1] = "9015527766224557",
    [2] = true
  }
  return params
end
function export:OnEnter_box_MessageListener_v3_74()
  local params
  params = {
    [0] = true,
    [1] = "Reload_Weapons"
  }
  return params
end
function export:OnEnter_box_SetInteger_v2_84()
  local params, l0
  l0 = Boxes["9056014709740594453"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetInteger_v2_84")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|777523785")
  l0:SetConnections({
    [0] = self.f_box_SetInteger_v2_84_Out
  })
  params = {
    [1] = 1,
    [3] = false
  }
  return params
end
function export:OnEnter_box_StatisticModifier_11()
  local params, l0
  DrawTextToScreen("Comment: set DLC_LEM0020_Left_LEM_World = 1", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'StatisticModifier')-- Comment: set DLC_LEM0020_Left_LEM_World = 1")
  l0 = Boxes["15478190047253350759"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_StatisticModifier_11")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|796356431")
  l0:SetConnections({
    [2] = self.f_box_StatisticModifier_11_Set
  })
  params = {
    [0] = "DLC_LEM0020_Left_LEM_World",
    [2] = 1
  }
  return params
end
function export:OnEnter_box_PreconditionListener_145()
  local params
  params = {
    [0] = true,
    [1] = "9015527768702779",
    [2] = true
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_25()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_25")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|811448858")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [1] = 9
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [1] = {
      connections = {
        [0] = self.f_box_OutputOrder_v2_25_Out_0,
        [2] = self.f_box_OutputOrder_v2_25_Out_2,
        [3] = self.f_box_OutputOrder_v2_25_Out_3,
        [4] = self.f_box_OutputOrder_v2_25_Out_4,
        [5] = self.f_box_OutputOrder_v2_25_Out_5,
        [6] = self.f_box_OutputOrder_v2_25_Out_6
      },
      count = 9
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_OutputOrder_v2_112()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_112")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|811638096")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [1] = 3
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [1] = {
      connections = {
        [1] = self.f_box_OutputOrder_v2_112_Out_1,
        [2] = self.f_box_OutputOrder_v2_112_Out_2
      },
      count = 3
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_OutputOrder_v2_61()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_61")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|823844161")
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
        [0] = self.f_box_OutputOrder_v2_61_Out_0,
        [1] = self.f_box_OutputOrder_v2_61_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_Compare_Integers_16()
  local params, l0
  DrawTextToScreen("Comment: check lem 0020  coming from main", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Compare Integers')-- Comment: check lem 0020  coming from main")
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_16")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|844923754")
  l0:SetConnections({
    [2] = self.f_box_Compare_Integers_16_A_gt_B,
    [3] = self.f_box_Compare_Integers_16_A_le_B
  })
  params = {
    [0] = self.DLC_LEM0020_Left_FC6main,
    [1] = 0
  }
  return params
end
function export:OnEnter_box_PreconditionListener_127()
  local params
  params = {
    [0] = true,
    [1] = "9015527766189885",
    [2] = true
  }
  return params
end
function export:OnEnter_box_ModifyCoopLeashRange_219()
  local params, l0
  l0 = Boxes["18082559299092487593"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ModifyCoopLeashRange_219")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|852357041")
  l0:SetConnections({
    [0] = self.f_box_ModifyCoopLeashRange_219_Out
  })
  params = {
    [0] = 80,
    [1] = 70,
    [2] = 65
  }
  return params
end
function export:OnEnter_box_SetActivityFact_108()
  local params, l0
  l0 = Boxes["13904165977888905445"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetActivityFact_108")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|889348474")
  l0:SetConnections({
    [0] = self.f_box_SetActivityFact_108_Out
  })
  params = {
    [0] = "LootPool_04"
  }
  return params
end
function export:OnEnter_box_RpgSkinOverride_229()
  local params
  params = {
    [0] = "9015558018536230",
    [1] = self.Player_Client,
    [2] = "9015457605741366",
    [3] = true
  }
  return params
end
function export:OnEnter_box_RestrictedItemModifier_212()
  local params
  params = {
    [0] = "9015393559969817",
    [2] = self.Player_Client
  }
  return params
end
function export:OnEnter_box_IgnoreSignal_v2_29()
  local params
  params = {
    [0] = "#ED455357",
    [1] = "deploy_wingsuit"
  }
  return params
end
function export:OnEnter_box_MessageListener_v3_102()
  local params
  params = {
    [0] = true,
    [1] = "B70_WeaponGet"
  }
  return params
end
function export:OnEnter_box_GetPreconditionState_135()
  local params, l0
  l0 = Boxes["7636177805574943300"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetPreconditionState_135")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|998275115")
  l0:SetConnections({
    [0] = self.f_box_GetPreconditionState_135_NotValid,
    [1] = self.f_box_GetPreconditionState_135_Valid
  })
  params = {
    [0] = "9015527766176864"
  }
  return params
end
function export:OnEnter_box_LEM0020_Inventory_Add_115()
  local params
  params = {
    [0] = "9015334645481387",
    [1] = "9015543500718975",
    [2] = self.Player_Host,
    [3] = self.Plare_Group
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_105()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_105")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1025680868")
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
        [0] = self.f_box_OutputOrder_v2_105_Out_0,
        [1] = self.f_box_OutputOrder_v2_105_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_OutputOrder_v2_128()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_128")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1035601060")
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
        [0] = self.f_box_OutputOrder_v2_128_Out_0,
        [1] = self.f_box_OutputOrder_v2_128_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_EntityStatusListener_158()
  local params
  params = {
    [0] = false,
    [1] = false,
    [2] = self.Player_Client
  }
  return params
end
function export:OnEnter_box_SetInteger_v2_120()
  local params, l0
  l0 = Boxes["9056014709740594453"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetInteger_v2_120")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1063520474")
  l0:SetConnections({
    [0] = self.f_box_SetInteger_v2_120_Out
  })
  params = {
    [1] = 4,
    [3] = false
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_95()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_95")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1080405761")
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
        [0] = self.f_box_OutputOrder_v2_95_Out_0,
        [1] = self.f_box_OutputOrder_v2_95_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_GetStatistic_19()
  local params, l0
  l0 = Boxes["14544726443001098387"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetStatistic_19")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1090856117")
  l0:SetConnections({
    [0] = self.f_box_GetStatistic_19_ValueGot
  })
  params = {
    [0] = "DLC_LEM0020_Left_FC6main"
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_161()
  local params
  params = {
    [0] = false,
    [1] = false,
    [2] = self.Player_Host
  }
  return params
end
function export:OnEnter_box_GetActivityFact_121()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityFact_121")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1106471893")
  l0:SetConnections({
    [1] = self.f_box_GetActivityFact_121_FactSet
  })
  params = {
    [0] = "9015520254145063",
    [1] = "LootPool_03"
  }
  return params
end
function export:OnEnter_box_SwitchGameMode_12()
  local params, l0
  l0 = Boxes["3103179906340493512"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SwitchGameMode_12")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1107620635")
  l0:SetConnections({})
  params = {
    [0] = "FCXCampaign"
  }
  return params
end
function export:OnEnter_box_SetActivityFact_92()
  local params, l0
  l0 = Boxes["13904165977888905445"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetActivityFact_92")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1113263738")
  l0:SetConnections({
    [0] = self.f_box_SetActivityFact_92_Out
  })
  params = {
    [0] = "LootPool_02"
  }
  return params
end
function export:OnEnter_box_RpgGadgetSocketOverride_224()
  local params
  params = {
    [0] = "GadgetA",
    [1] = "9015460312658254",
    [2] = self.Player_Host
  }
  return params
end
function export:OnEnter_box_ActivityMiscInfoModifier_v2_171()
  local params, l0
  l0 = Boxes["15980983063889923268"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ActivityMiscInfoModifier_v2_171")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1138347746")
  l0:SetConnections({})
  params = {
    [0] = false,
    [1] = true
  }
  return params
end
function export:OnEnter_box_MissionBlockLayer_137()
  local params, l0
  l0 = Boxes["11012833455539521930"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MissionBlockLayer_137")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1149492241")
  l0:SetConnections({})
  params = {
    [0] = "27160518699155998",
    [1] = "45174917208714378"
  }
  return params
end
function export:OnEnter_box_Delay_v5_151()
  local params
  params = {
    [0] = false,
    [2] = 3
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_114()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_114")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1176535555")
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
        [0] = self.f_box_OutputOrder_v2_114_Out_0,
        [1] = self.f_box_OutputOrder_v2_114_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_MessageListener_v3_93()
  local params
  params = {
    [0] = true,
    [1] = "B50_WeaponGet"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_130()
  local params
  params = {
    [0] = true,
    [1] = "9015527766217556",
    [2] = true
  }
  return params
end
function export:OnEnter_box_SetActivityFact_101()
  local params, l0
  l0 = Boxes["13904165977888905445"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetActivityFact_101")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1201338487")
  l0:SetConnections({
    [0] = self.f_box_SetActivityFact_101_Out
  })
  params = {
    [0] = "LootPool_03"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_116()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_116")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1212225086")
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
        [0] = self.f_box_OutputOrder_v2_116_Out_0,
        [1] = self.f_box_OutputOrder_v2_116_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_RpgSkinOverride_228()
  local params
  params = {
    [0] = "9015558018536230",
    [1] = self.Player_Host,
    [2] = "9015457605741366",
    [3] = true
  }
  return params
end
function export:OnEnter_box_RevertOverriddenWolfskin_133()
  local params, l0
  l0 = Boxes["3093078890824966294"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RevertOverriddenWolfskin_133")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1266045736")
  l0:SetConnections({})
  params = {
    [0] = self.Local_Player
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_167()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_167")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1270373270")
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
        [0] = self.f_box_OutputOrder_v2_167_Out_0,
        [1] = self.f_box_OutputOrder_v2_167_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_Delay_v5_33()
  local params
  params = {
    [0] = false,
    [2] = 0,1
  }
  return params
end
function export:OnEnter_box_SetInteger_v2_67()
  local params, l0
  l0 = Boxes["9056014709740594453"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetInteger_v2_67")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1302736126")
  l0:SetConnections({
    [0] = self.f_box_SetInteger_v2_67_Out
  })
  params = {
    [1] = 1,
    [3] = false
  }
  return params
end
function export:OnEnter_box_SetInteger_v2_110()
  local params, l0
  l0 = Boxes["9056014709740594453"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetInteger_v2_110")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1305939241")
  l0:SetConnections({
    [0] = self.f_box_SetInteger_v2_110_Out
  })
  params = {
    [1] = 5,
    [3] = false
  }
  return params
end
function export:OnEnter_box_RestrictedItemModifier_52()
  local params
  params = {
    [2] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_GetPlayerGroup_v2_47()
  local params, l0
  l0 = Boxes["9581874586206389174"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetPlayerGroup_v2_47")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1324079430")
  l0:SetConnections({
    [0] = self.f_box_GetPlayerGroup_v2_47_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_Delay_v5_166()
  local params
  params = {
    [0] = false,
    [2] = 3
  }
  return params
end
function export:OnEnter_box_LEM0020_Inventory_setup_45()
  local params
  params = {
    [0] = self.Player_Client,
    [1] = self.Plare_Group
  }
  return params
end
function export:OnEnter_box_LEM0020_Inventory_Add_106()
  local params
  params = {
    [0] = "9015542275928172",
    [1] = "9015543500626415",
    [2] = self.Player_Host,
    [3] = self.Plare_Group
  }
  return params
end
function export:OnEnter_box_Delay_v5_175()
  local params
  params = {
    [0] = false,
    [2] = 2
  }
  return params
end
function export:OnEnter_box_LEM0020_Inventory_Add_78()
  local params
  params = {
    [0] = "9015566981267638",
    [1] = "9015543500323698",
    [2] = self.Player_Client,
    [3] = self.Plare_Group
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_34()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_34")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1389362205")
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
        [0] = self.f_box_OutputOrder_v2_34_Out_0,
        [1] = self.f_box_OutputOrder_v2_34_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_GetActivityFact_118()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityFact_118")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1395168711")
  l0:SetConnections({
    [1] = self.f_box_GetActivityFact_118_FactSet
  })
  params = {
    [0] = "9015520254145063",
    [1] = "LootPool_02"
  }
  return params
end
function export:OnEnter_box_RestrictedItemModifier_213()
  local params
  params = {
    [0] = "9015393559969817",
    [2] = self.Player_Host
  }
  return params
end
function export:OnEnter_box_RpgGadgetSocketOverride_227()
  local params
  params = {
    [0] = "GadgetD",
    [1] = "9015460312658312",
    [2] = self.Player_Host
  }
  return params
end
function export:OnEnter_box_ModifyCoopLeashRange_150()
  local params, l0
  l0 = Boxes["18082559299092487593"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ModifyCoopLeashRange_150")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1435735388")
  l0:SetConnections({
    [0] = self.f_box_ModifyCoopLeashRange_150_Out
  })
  params = {
    [0] = 90,
    [1] = 80,
    [2] = 75
  }
  return params
end
function export:OnEnter_box_GetActivityFact_63()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityFact_63")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1436663839")
  l0:SetConnections({
    [1] = self.f_box_GetActivityFact_63_FactSet
  })
  params = {
    [0] = "9015520254145063",
    [1] = "LootPool_01"
  }
  return params
end
function export:OnEnter_box_Gate_v3_60()
  local params
  params = {
    [0] = false
  }
  return params
end
function export:OnEnter_box_ConsoleCommand_v3_138()
  local params
  params = {
    [0] = false,
    [1] = "default_lighting"
  }
  return params
end
function export:OnEnter_box_RpgGadgetSocketOverride_223()
  local params
  params = {
    [0] = "GadgetD",
    [1] = "9015460312658312",
    [2] = self.Player_Client
  }
  return params
end
function export:OnEnter_box_RpgGadgetSocketOverride_225()
  local params
  params = {
    [0] = "GadgetB",
    [1] = "9015460312658288",
    [2] = self.Player_Host
  }
  return params
end
function export:OnEnter_box_SetActivityFact_71()
  local params, l0
  l0 = Boxes["13904165977888905445"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetActivityFact_71")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1628194359")
  l0:SetConnections({
    [0] = self.f_box_SetActivityFact_71_Out
  })
  params = {
    [0] = "LootPool_01"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_70()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_70")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1629274149")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [1] = 6
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [1] = {
      connections = {
        [0] = self.f_box_OutputOrder_v2_70_Out_0,
        [1] = self.f_box_OutputOrder_v2_70_Out_1,
        [2] = self.f_box_OutputOrder_v2_70_Out_2,
        [3] = self.f_box_OutputOrder_v2_70_Out_3,
        [4] = self.f_box_OutputOrder_v2_70_Out_4,
        [5] = self.f_box_OutputOrder_v2_70_Out_5
      },
      count = 6
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_TeleportPawns_13()
  local params
  DrawTextToScreen("Comment: teleporting to lem 020 start position", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TeleportPawns')-- Comment: teleporting to lem 020 start position")
  params = {
    [0] = "-1",
    [1] = "2121483166236554328",
    [2] = false,
    [4] = "#5B9E5CA4",
    [5] = true
  }
  return params
end
function export:OnEnter_box_GetActivityFact_123()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityFact_123")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1683472814")
  l0:SetConnections({
    [1] = self.f_box_GetActivityFact_123_FactSet
  })
  params = {
    [0] = "9015520254145063",
    [1] = "LootPool_04"
  }
  return params
end
function export:OnEnter_box_GetActivityFact_79()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityFact_79")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1689759922")
  l0:SetConnections({
    [1] = self.f_box_GetActivityFact_79_FactSet
  })
  params = {
    [0] = "9015520254145063",
    [1] = "LootPool_Empty"
  }
  return params
end
function export:OnEnter_box_GetLocalPlayer_v2_46()
  local params, l0
  l0 = Boxes["238599533382071246"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetLocalPlayer_v2_46")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1702413009")
  l0:SetConnections({
    [0] = self.f_box_GetLocalPlayer_v2_46_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_GetActivityFact_59()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityFact_59")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1704909019")
  l0:SetConnections({
    [1] = self.f_box_GetActivityFact_59_FactSet
  })
  params = {
    [0] = "9015520254145063",
    [1] = "LootPool_Empty"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_39()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_39")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1709258706")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [1] = 3
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [1] = {
      connections = {
        [0] = self.f_box_OutputOrder_v2_39_Out_0,
        [1] = self.f_box_OutputOrder_v2_39_Out_1,
        [2] = self.f_box_OutputOrder_v2_39_Out_2
      },
      count = 3
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_Gate_v3_113()
  local params
  params = {
    [0] = false
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_62()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_62")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1718666011")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [1] = 3
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [1] = {
      connections = {
        [0] = self.f_box_OutputOrder_v2_62_Out_0,
        [1] = self.f_box_OutputOrder_v2_62_Out_1,
        [2] = self.f_box_OutputOrder_v2_62_Out_2
      },
      count = 3
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_ConsoleCommand_v3_140()
  local params
  params = {
    [0] = false,
    [1] = "chase_lighting"
  }
  return params
end
function export:OnEnter_box_RpgGadgetSocketOverride_221()
  local params
  params = {
    [0] = "GadgetB",
    [1] = "9015460312658288",
    [2] = self.Player_Client
  }
  return params
end
function export:OnEnter_box_LEM0020_Inventory_Add_97()
  local params
  params = {
    [0] = "9015566994452610",
    [1] = "9015543500542632",
    [2] = self.Player_Host,
    [3] = self.Plare_Group
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_3()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_3")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1752910849")
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
function export:OnEnter_box_LEM0020_Inventory_Add_80()
  local params
  params = {
    [0] = "9015566981267638",
    [1] = "9015543500323698",
    [2] = self.Player_Host,
    [3] = self.Plare_Group
  }
  return params
end
function export:OnEnter_box_LEM0020_Inventory_setup_50()
  local params
  params = {
    [0] = self.Local_Player,
    [1] = self.Plare_Group
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_96()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_96")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1758329542")
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
        [0] = self.f_box_OutputOrder_v2_96_Out_0,
        [1] = self.f_box_OutputOrder_v2_96_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_LEM0020_Inventory_Add_104()
  local params
  params = {
    [0] = "9015542275928172",
    [1] = "9015543500626415",
    [2] = self.Player_Client,
    [3] = self.Plare_Group
  }
  return params
end
function export:OnEnter_box_IgnoreSignal_v2_26()
  local params
  params = {
    [0] = "#ED455357",
    [1] = "deploy_wingsuit"
  }
  return params
end
function export:OnEnter_box_HeroVehicleLock_36()
  local params, l0
  l0 = Boxes["12045624560217704534"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_HeroVehicleLock_36")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1789821650")
  l0:SetConnections({})
  params = {}
  return params
end
function export:OnEnter_box_OutputOrder_v2_125()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_125")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1809768655")
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
        [0] = self.f_box_OutputOrder_v2_125_Out_0,
        [1] = self.f_box_OutputOrder_v2_125_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_PreconditionListener_87()
  local params
  params = {
    [0] = true,
    [1] = "9015527768740237",
    [2] = true
  }
  return params
end
function export:OnEnter_box_PreconditionListener_139()
  local params
  params = {
    [0] = true,
    [1] = "9015527766217556",
    [2] = true
  }
  return params
end
function export:OnEnter_box_BroadcastMessage_43()
  local params, l0
  l0 = Boxes["17797273709721114288"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_BroadcastMessage_43")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1955726893")
  l0:SetConnections({})
  params = {
    [0] = "Weapons_Listener_Enabled"
  }
  return params
end
function export:OnEnter_box_SetInteger_v2_69()
  local params, l0
  l0 = Boxes["9056014709740594453"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetInteger_v2_69")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|1960233854")
  l0:SetConnections({
    [0] = self.f_box_SetInteger_v2_69_Out
  })
  params = {
    [1] = 2,
    [3] = false
  }
  return params
end
function export:OnEnter_box_MessageListener_v3_77()
  local params
  params = {
    [0] = true,
    [1] = "B30_NoWeapon"
  }
  return params
end
function export:OnEnter_box_IndexList_v2_68()
  local params
  params = {
    [0] = self.CurrentLootPool
  }
  return params
end
function export:OnEnter_box_MessageListener_v3_65()
  local params
  params = {
    [0] = true,
    [1] = "B30_WeaponGet"
  }
  return params
end
function export:OnEnter_box_LEM0020_RemoveAmmo_22()
  local params
  params = {
    [0] = self.Player_Client
  }
  return params
end
function export:OnEnter_box_Simple_Node_17()
  local params, l0
  DrawTextToScreen("Comment: Not coming from fc6_main", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Not coming from fc6_main")
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_17")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2029556893")
  l0:SetConnections({
    [0] = self.f_box_Simple_Node_17_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_OutputOrder_v2_88()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_88")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2074576040")
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
        [0] = self.f_box_OutputOrder_v2_88_Out_0,
        [1] = self.f_box_OutputOrder_v2_88_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_OutputOrder_v2_160()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_160")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2084401706")
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
        [0] = self.f_box_OutputOrder_v2_160_Out_0,
        [1] = self.f_box_OutputOrder_v2_160_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_RevertOverriddenWolfskin_134()
  local params, l0
  l0 = Boxes["3093078890824966294"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RevertOverriddenWolfskin_134")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2087044805")
  l0:SetConnections({})
  params = {
    [0] = self.Player_Client
  }
  return params
end
function export:OnEnter_box_MissionBlockLayer_141()
  local params, l0
  l0 = Boxes["11012833455539521930"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MissionBlockLayer_141")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2100450757")
  l0:SetConnections({})
  params = {
    [0] = "27160518699155998",
    [1] = "36167717953896991"
  }
  return params
end
function export:OnEnter_box_GetActivityState_v2_178()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_178")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2117384307")
  l0:SetConnections({
    [0] = self.f_box_GetActivityState_v2_178_Active,
    [2] = self.f_box_GetActivityState_v2_178_Completed
  })
  params = {
    [0] = "9015527659695042"
  }
  return params
end
function export:OnEnter_box_MissionBlockLayer_136()
  local params, l0
  l0 = Boxes["11012833455539521930"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MissionBlockLayer_136")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\FC6_Licensed\\LEM0020\\LEM0020_SWITCH_WORLD_TO_MAIN.domino|@LEM0020_SWITCH_WORLD_TO_MAIN|2121734673")
  l0:SetConnections({
    [2] = self.f_box_MissionBlockLayer_136_Disabled
  })
  params = {
    [0] = "27160518699155998",
    [1] = "36167717953896991"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_129()
  local params
  params = {
    [0] = true,
    [1] = "9015527766205720",
    [2] = true
  }
  return params
end
function export:OnExit_box_SetInteger_v2_94_Out()
  local l0
  l0 = Boxes["9056014709740594453"]
  self.CurrentLootPool = l0:GetDataOutValue(0)
end
function export:OnExit_box_SetInteger_v2_124_Out()
  local l0
  l0 = Boxes["9056014709740594453"]
  self.CurrentLootPool = l0:GetDataOutValue(0)
end
function export:OnExit_box_SetBoolean_v2_216_Out()
  local l0
  l0 = Boxes["1494047278363574789"]
  self.IsCOOP = l0:GetDataOutValue(0)
end
function export:OnExit_box_SetInteger_v2_146_Out()
  local l0
  l0 = Boxes["9056014709740594453"]
  self.CurrentLootPool = l0:GetDataOutValue(0)
end
function export:OnExit_box_SetInteger_v2_100_Out()
  local l0
  l0 = Boxes["9056014709740594453"]
  self.CurrentLootPool = l0:GetDataOutValue(0)
end
function export:OnExit_box_SetInteger_v2_117_Out()
  local l0
  l0 = Boxes["9056014709740594453"]
  self.CurrentLootPool = l0:GetDataOutValue(0)
end
function export:OnExit_box_GetStatistic_18_ValueGot()
  local l0
  l0 = Boxes["14544726443001098387"]
  self.DLC_LEM0020_World_FlowTracker = l0:GetDataOutValue(0)
end
function export:OnExit_box_SetInteger_v2_73_Out()
  local l0
  l0 = Boxes["9056014709740594453"]
  self.CurrentLootPool = l0:GetDataOutValue(0)
end
function export:OnExit_box_SetInteger_v2_84_Out()
  local l0
  l0 = Boxes["9056014709740594453"]
  self.CurrentLootPool = l0:GetDataOutValue(0)
end
function export:OnExit_box_GetPlayersID_48_OnePlayer()
  local l0
  l0 = self.box_GetPlayersID_48
  self.Player_Host = l0:GetDataOutValue(1)
  self.Player_Client = l0:GetDataOutValue(0)
end
function export:OnExit_box_GetPlayersID_48_PlayerAdded()
  local l0
  l0 = self.box_GetPlayersID_48
  self.Player_Host = l0:GetDataOutValue(1)
  self.Player_Client = l0:GetDataOutValue(0)
end
function export:OnExit_box_GetPlayersID_48_PlayerRemoved()
  local l0
  l0 = self.box_GetPlayersID_48
  self.Player_Host = l0:GetDataOutValue(1)
  self.Player_Client = l0:GetDataOutValue(0)
end
function export:OnExit_box_GetPlayersID_48_TwoPlayers()
  local l0
  l0 = self.box_GetPlayersID_48
  self.Player_Host = l0:GetDataOutValue(1)
  self.Player_Client = l0:GetDataOutValue(0)
end
function export:OnExit_box_SetInteger_v2_120_Out()
  local l0
  l0 = Boxes["9056014709740594453"]
  self.CurrentLootPool = l0:GetDataOutValue(0)
end
function export:OnExit_box_GetStatistic_19_ValueGot()
  local l0
  l0 = Boxes["14544726443001098387"]
  self.DLC_LEM0020_Left_FC6main = l0:GetDataOutValue(0)
end
function export:OnExit_box_SetInteger_v2_67_Out()
  local l0
  l0 = Boxes["9056014709740594453"]
  self.CurrentLootPool = l0:GetDataOutValue(0)
end
function export:OnExit_box_SetInteger_v2_110_Out()
  local l0
  l0 = Boxes["9056014709740594453"]
  self.CurrentLootPool = l0:GetDataOutValue(0)
end
function export:OnExit_box_GetPlayerGroup_v2_47_Out()
  local l0
  l0 = Boxes["9581874586206389174"]
  self.Plare_Group = l0:GetDataOutValue(0)
end
function export:OnExit_box_GetLocalPlayer_v2_46_Out()
  local l0
  l0 = Boxes["238599533382071246"]
  self.Local_Player = l0:GetDataOutValue(0)
end
function export:OnExit_box_SetInteger_v2_69_Out()
  local l0
  l0 = Boxes["9056014709740594453"]
  self.CurrentLootPool = l0:GetDataOutValue(0)
end
_compilerVersion = 60
