--Converted by FCBConverter v20221020-2000, author ArmanIII.
--Converted using UnluacNET by Fireboyd78

export = {}
function export:LuaDependencies()
  local luaDepTable = {}
  return luaDepTable
end
function export:Create(cboxRes)
  if cboxRes:ShouldLoadResources() == true then
    cboxRes:RegisterBox("Domino/Library/DTest/Lib_VisualInspection.TeleportToTargetPlusOffset.debug.lua")
    cboxRes:RegisterBox("Domino/Library/Operations/Lib_Aslt_PlayerBarracksLevelController.Lib_Aslt_PlayerBarracksLevelController.debug.lua")
    cboxRes:RegisterBox("Domino/Library/Sp/Lib_Encounter_Toolbox.HAL_SpawnNPC_OW.debug.lua")
    cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate_v2.lua")
    cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua")
    cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")
    cboxRes:RegisterBox("Domino/System/AI/FlushConversation.lua")
    cboxRes:RegisterBox("Domino/System/AI/PreconditionListener.lua")
    cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua")
    cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua")
    cboxRes:RegisterBox("Domino/System/CompareBoolean.lua")
    cboxRes:RegisterBox("Domino/System/CompareIntegers.lua")
    cboxRes:RegisterBox("Domino/System/Delay_v5.lua")
    cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua")
    cboxRes:RegisterBox("Domino/System/GetMissionLayerState_v2.lua")
    cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua")
    cboxRes:RegisterBox("Domino/System/GetStatistic.lua")
    cboxRes:RegisterBox("Domino/System/GetVehicleOccupants.lua")
    cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua")
    cboxRes:RegisterBox("Domino/System/MultipleOR.lua")
    cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua")
    cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua")
    cboxRes:RegisterBox("Domino/System/Player/RequestPhoneConversation.lua")
    cboxRes:RegisterBox("Domino/System/PlayerBaseListener.lua")
    cboxRes:RegisterBox("Domino/System/PlayerBaseModifier.lua")
    cboxRes:RegisterBox("Domino/System/Print_v2.lua")
    cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua")
    cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua")
    cboxRes:RegisterBox("Domino/System/RandomInteger_v2.lua")
    cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua")
    cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua")
    cboxRes:RegisterBox("Domino/System/ResourceRewardListener.lua")
    cboxRes:RegisterBox("Domino/System/SaveOpenWorld.lua")
    cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua")
    cboxRes:RegisterBox("Domino/System/SimpleNode.lua")
    cboxRes:RegisterBox("Domino/System/SoundShapeModifier.lua")
    cboxRes:RegisterBox("Domino/System/StatisticIncrement_v2.lua")
    cboxRes:RegisterBox("Domino/System/StatisticModifier.lua")
    cboxRes:RegisterBox("Domino/System/TeleportPawns.lua")
    cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua")
    cboxRes:RegisterBox("Domino/user/fc6_Main/Activities/PlayerBase/FC6_CentralPlayerBase.Bicho_Voicemails.debug.lua")
    cboxRes:RegisterBox("Domino/user/fc6_Main/Activities/PlayerBase/FC6_CentralPlayerBase.DisableLayers.debug.lua")
    cboxRes:RegisterBox("Domino/user/fc6_Main/Activities/PlayerBase/FC6_CentralPlayerBase.EnableLayers.debug.lua")
  end
end
function export:Init(cbox)
  local l0
  self._name = "FC6_CentralPlayerBase"
  self._elementPathId = "DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase"
  self.coreLvl = 1
  self.CoreLVL = 0
  self.eConvoyVeh = nil
  self.gPlayer = nil
  self.WestCoreLvl = 1
  self.SocketLvl = 0
  self.eVehicleInBase = nil
  self.e_Paolo = nil
  self.Central_Sockets = nil
  self.eLola = nil
  self.box_EntityStatusListener_86 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_86
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_86")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|13640361")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_86_Loaded
  })
  self.box_MultipleOR_297 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_297
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_297")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|31542788")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_297_Out
  })
  self.box_FlushConversation_126 = cbox:CreateBox_PathID("4817400408802945319")
  l0 = self.box_FlushConversation_126
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_FlushConversation_126")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|95389607")
  l0:SetConnections({})
  self.box_PreconditionListener_136 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_136
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_136")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|133320781")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_136_PreconditionMet
  })
  self.box_HAL_SpawnNPC_OW_56 = cbox:CreateBox_PathID("15468865579314767819")
  l0 = self.box_HAL_SpawnNPC_OW_56
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_HAL_SpawnNPC_OW_56")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|146011320")
  l0:SetConnections({
    [0] = self.f_box_HAL_SpawnNPC_OW_56_Out
  })
  self.box_TeleportPawns_108 = cbox:CreateBox_PathID("14392291592142814452")
  l0 = self.box_TeleportPawns_108
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_TeleportPawns_108")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|162816524")
  l0:SetConnections({
    [0] = self.f_box_TeleportPawns_108_Out
  })
  self.box_PreconditionListener_109 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_109
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_109")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|165297233")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_109_PreconditionMet
  })
  self.box_Delay_v5_296 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_296
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_296")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|175283041")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_296_TimeElapsed
  })
  self.box_EnableLayers_179 = cbox:CreateBox_PathID("3668905856401434543")
  l0 = self.box_EnableLayers_179
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EnableLayers_179")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|203160091")
  l0:SetConnections({
    [0] = self.f_box_EnableLayers_179_Out
  })
  self.box_HAL_SpawnNPC_OW_55 = cbox:CreateBox_PathID("15468865579314767819")
  l0 = self.box_HAL_SpawnNPC_OW_55
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_HAL_SpawnNPC_OW_55")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|244394242")
  l0:SetConnections({})
  self.box_EntityStatusListener_162 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_162
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_162")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|279444239")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_162_Loaded
  })
  self.box_Delay_v5_299 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_299
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_299")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|296186039")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_299_TimeElapsed
  })
  self.box_MultipleOR_59 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_59
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_59")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|306801228")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_59_Out
  })
  self.box_EntityStatusListener_161 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_161
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_161")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|308018168")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_161_Loaded
  })
  self.box_HAL_SpawnNPC_OW_41 = cbox:CreateBox_PathID("15468865579314767819")
  l0 = self.box_HAL_SpawnNPC_OW_41
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_HAL_SpawnNPC_OW_41")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|317320928")
  l0:SetConnections({})
  self.box_Delay_v5_287 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_287
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_287")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|324937243")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_287_TimeElapsed
  })
  self.box_EntityStatusListener_131 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_131
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_131")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|352637048")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_131_Loaded
  })
  self.box_MultipleOR_315 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_315
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_315")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|370579249")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_315_Out
  })
  self.box_Delay_v5_246 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_246
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_246")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|417781810")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_246_TimeElapsed
  })
  self.box_Delay_v5_8 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_8
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_8")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|467117098")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_8_TimeElapsed
  })
  self.box_RequestPhoneConversation_304 = cbox:CreateBox_PathID("17999334189213309227")
  l0 = self.box_RequestPhoneConversation_304
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RequestPhoneConversation_304")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|471556031")
  l0:SetConnections({
    [1] = self.f_box_RequestPhoneConversation_304_Completed,
    [6] = self.f_box_RequestPhoneConversation_304_Started
  })
  self.box_PreconditionListener_122 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_122
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_122")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|472720217")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_122_PreconditionMet
  })
  self.box_MultipleOR_285 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_285
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_285")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|495649790")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_285_Out
  })
  self.box_MultipleOR_2 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_2
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_2")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|515816614")
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
  self.box_EntityStatusListener_91 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_91
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_91")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|547933511")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_91_Loaded
  })
  self.box_Delay_v5_284 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_284
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_284")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|566209849")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_284_TimeElapsed
  })
  self.box_EnableLayers_27 = cbox:CreateBox_PathID("3668905856401434543")
  l0 = self.box_EnableLayers_27
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EnableLayers_27")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|597467048")
  l0:SetConnections({
    [0] = self.f_box_EnableLayers_27_Out
  })
  self.box_PreconditionListener_15 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_15
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_15")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|621635652")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_15_PreconditionMet
  })
  self.box_EntityStatusListener_102 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_102
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_102")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|626468086")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_102_Loaded
  })
  self.box_EntityStatusListener_74 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_74
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_74")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|668868638")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_74_Loaded
  })
  self.box_MultipleOR_245 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_245
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_245")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|675429036")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_245_Out
  })
  self.box_HAL_SpawnNPC_OW_53 = cbox:CreateBox_PathID("15468865579314767819")
  l0 = self.box_HAL_SpawnNPC_OW_53
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_HAL_SpawnNPC_OW_53")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|680135302")
  l0:SetConnections({
    [0] = self.f_box_HAL_SpawnNPC_OW_53_Out
  })
  self.box_HAL_SpawnNPC_OW_51 = cbox:CreateBox_PathID("15468865579314767819")
  l0 = self.box_HAL_SpawnNPC_OW_51
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_HAL_SpawnNPC_OW_51")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|710565965")
  l0:SetConnections({})
  self.box_ActivityAcknowledgeGate_v2_4 = cbox:CreateBox_PathID("11524929585773902845")
  l0 = self.box_ActivityAcknowledgeGate_v2_4
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ActivityAcknowledgeGate_v2_4")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|737453506")
  l0:SetConnections({
    [0] = self.f_box_ActivityAcknowledgeGate_v2_4_Acknowledged,
    [1] = self.f_box_ActivityAcknowledgeGate_v2_4_Reloaded
  })
  self.box_EntityStatusListener_320 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_320
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_320")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|752078587")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_320_Loaded
  })
  self.box_MultipleOR_295 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_295
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_295")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|752139810")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 4
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_295_Out
  })
  self.box_DisableLayers_26 = cbox:CreateBox_PathID("11902009239270442126")
  l0 = self.box_DisableLayers_26
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_DisableLayers_26")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|818130956")
  l0:SetConnections({
    [0] = self.f_box_DisableLayers_26_Out
  })
  self.box_DisableLayers_180 = cbox:CreateBox_PathID("11902009239270442126")
  l0 = self.box_DisableLayers_180
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_DisableLayers_180")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|842757928")
  l0:SetConnections({
    [0] = self.f_box_DisableLayers_180_Out
  })
  self.box_TeleportToTargetPlusOffset_247 = cbox:CreateBox_PathID("14981249736323749776")
  l0 = self.box_TeleportToTargetPlusOffset_247
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_TeleportToTargetPlusOffset_247")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|845114207")
  l0:SetConnections({
    [0] = self.f_box_TeleportToTargetPlusOffset_247_Teleported
  })
  self.box_PreconditionListener_24 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_24
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_24")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|894721805")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_24_PreconditionMet
  })
  self.box_EnableLayers_138 = cbox:CreateBox_PathID("3668905856401434543")
  l0 = self.box_EnableLayers_138
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EnableLayers_138")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|911233686")
  l0:SetConnections({})
  self.box_EntityStatusListener_77 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_77
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_77")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|933995174")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_77_Loaded
  })
  self.box_EntityStatusListener_132 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_132
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_132")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|935373321")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_132_Loaded
  })
  self.box_HAL_SpawnNPC_OW_46 = cbox:CreateBox_PathID("15468865579314767819")
  l0 = self.box_HAL_SpawnNPC_OW_46
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_HAL_SpawnNPC_OW_46")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|937930585")
  l0:SetConnections({
    [0] = self.f_box_HAL_SpawnNPC_OW_46_Out
  })
  self.box_EnableLayers_143 = cbox:CreateBox_PathID("3668905856401434543")
  l0 = self.box_EnableLayers_143
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EnableLayers_143")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|982915786")
  l0:SetConnections({})
  self.box_DisableLayers_37 = cbox:CreateBox_PathID("11902009239270442126")
  l0 = self.box_DisableLayers_37
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_DisableLayers_37")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|999992426")
  l0:SetConnections({
    [0] = self.f_box_DisableLayers_37_Out
  })
  self.box_EntityStatusListener_120 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_120
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_120")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1010890665")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_120_Loaded
  })
  self.box_PreconditionListener_133 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_133
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_133")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1024087510")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_133_PreconditionMet
  })
  self.box_PlayerBaseListener_154 = cbox:CreateBox_PathID("14005958013089819961")
  l0 = self.box_PlayerBaseListener_154
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PlayerBaseListener_154")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1048671457")
  l0:SetConnections({
    [0] = self.f_box_PlayerBaseListener_154_CoreLevelUpgraded,
    [1] = self.f_box_PlayerBaseListener_154_Disabled,
    [2] = self.f_box_PlayerBaseListener_154_Enabled,
    [3] = self.f_box_PlayerBaseListener_154_ResourcesAdded,
    [4] = self.f_box_PlayerBaseListener_154_SlotDemolished,
    [5] = self.f_box_PlayerBaseListener_154_SlotUpgraded
  })
  self.box_EntityStatusListener_114 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_114
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_114")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1082561241")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_114_Loaded
  })
  self.box_PreconditionListener_324 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_324
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_324")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1084182961")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_324_PreconditionMet
  })
  self.box_EntityStatusListener_78 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_78
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_78")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1111229931")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_78_Loaded
  })
  self.box_HAL_SpawnNPC_OW_69 = cbox:CreateBox_PathID("15468865579314767819")
  l0 = self.box_HAL_SpawnNPC_OW_69
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_HAL_SpawnNPC_OW_69")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1114669635")
  l0:SetConnections({})
  self.box_DisableLayers_139 = cbox:CreateBox_PathID("11902009239270442126")
  l0 = self.box_DisableLayers_139
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_DisableLayers_139")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1115674564")
  l0:SetConnections({
    [0] = self.f_box_DisableLayers_139_Out
  })
  self.box_RequestTutorial_v3_303 = cbox:CreateBox_PathID("4808083553000167799")
  l0 = self.box_RequestTutorial_v3_303
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RequestTutorial_v3_303")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1127187338")
  l0:SetConnections({})
  self.box_HAL_SpawnNPC_OW_112 = cbox:CreateBox_PathID("15468865579314767819")
  l0 = self.box_HAL_SpawnNPC_OW_112
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_HAL_SpawnNPC_OW_112")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1127605747")
  l0:SetConnections({
    [0] = self.f_box_HAL_SpawnNPC_OW_112_Out
  })
  self.box_HAL_SpawnNPC_OW_47 = cbox:CreateBox_PathID("15468865579314767819")
  l0 = self.box_HAL_SpawnNPC_OW_47
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_HAL_SpawnNPC_OW_47")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1176737688")
  l0:SetConnections({})
  self.box_RequestPhoneConversation_325 = cbox:CreateBox_PathID("17999334189213309227")
  l0 = self.box_RequestPhoneConversation_325
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RequestPhoneConversation_325")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1185813636")
  l0:SetConnections({
    [1] = self.f_box_RequestPhoneConversation_325_Completed,
    [6] = self.f_box_RequestPhoneConversation_325_Started
  })
  self.box_EnableLayers_140 = cbox:CreateBox_PathID("3668905856401434543")
  l0 = self.box_EnableLayers_140
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EnableLayers_140")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1198095340")
  l0:SetConnections({})
  self.box_EntityStatusListener_92 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_92
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_92")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1237655222")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_92_Loaded
  })
  self.box_Delay_v5_307 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_307
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_307")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1254158085")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_307_TimeElapsed
  })
  self.box_HAL_SpawnNPC_OW_54 = cbox:CreateBox_PathID("15468865579314767819")
  l0 = self.box_HAL_SpawnNPC_OW_54
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_HAL_SpawnNPC_OW_54")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1256132430")
  l0:SetConnections({
    [0] = self.f_box_HAL_SpawnNPC_OW_54_Out
  })
  self.box_PreconditionListener_137 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_137
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_137")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1275638332")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_137_PreconditionMet
  })
  self.box_OnceOnly_v3_153 = cbox:CreateBox_PathID("3070349782511854479")
  l0 = self.box_OnceOnly_v3_153
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OnceOnly_v3_153")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1277454416")
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
        [0] = self.f_box_OnceOnly_v3_153_Out_0
      },
      count = 2
    }
  })
  self.box_PreconditionListener_10 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_10
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_10")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1287915057")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_10_PreconditionMet
  })
  self.box_ProximityTrigger_v3_28 = cbox:CreateBox_PathID("1970451643238426831")
  l0 = self.box_ProximityTrigger_v3_28
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ProximityTrigger_v3_28")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1320292129")
  l0:SetConnections({
    [0] = self.f_box_ProximityTrigger_v3_28_Disabled,
    [1] = self.f_box_ProximityTrigger_v3_28_Enabled,
    [2] = self.f_box_ProximityTrigger_v3_28_Enter,
    [3] = self.f_box_ProximityTrigger_v3_28_Leave,
    [4] = self.f_box_ProximityTrigger_v3_28_OnAllInside,
    [5] = self.f_box_ProximityTrigger_v3_28_OnEmpty,
    [6] = self.f_box_ProximityTrigger_v3_28_OnOccupied,
    [7] = self.f_box_ProximityTrigger_v3_28_Use
  })
  self.box_TeleportPawns_19 = cbox:CreateBox_PathID("14392291592142814452")
  l0 = self.box_TeleportPawns_19
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_TeleportPawns_19")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1321545535")
  l0:SetConnections({
    [0] = self.f_box_TeleportPawns_19_Out
  })
  self.box_HAL_SpawnNPC_OW_49 = cbox:CreateBox_PathID("15468865579314767819")
  l0 = self.box_HAL_SpawnNPC_OW_49
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_HAL_SpawnNPC_OW_49")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1340669712")
  l0:SetConnections({
    [0] = self.f_box_HAL_SpawnNPC_OW_49_Out
  })
  self.box_PreconditionListener_135 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_135
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_135")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1356588315")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_135_PreconditionMet
  })
  self.box_RequestTutorial_v3_306 = cbox:CreateBox_PathID("4808083553000167799")
  l0 = self.box_RequestTutorial_v3_306
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RequestTutorial_v3_306")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1370599945")
  l0:SetConnections({})
  self.box_PreconditionListener_14 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_14
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_14")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1377115157")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_14_PreconditionMet
  })
  self.box_Delay_v5_317 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_317
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_317")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1390519653")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_317_TimeElapsed
  })
  self.box_EnableLayers_48 = cbox:CreateBox_PathID("3668905856401434543")
  l0 = self.box_EnableLayers_48
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EnableLayers_48")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1406565791")
  l0:SetConnections({
    [0] = self.f_box_EnableLayers_48_Out
  })
  self.box_Delay_v5_293 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_293
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_293")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1419753989")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_293_TimeElapsed
  })
  self.box_EnableLayers_144 = cbox:CreateBox_PathID("3668905856401434543")
  l0 = self.box_EnableLayers_144
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EnableLayers_144")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1447435398")
  l0:SetConnections({})
  self.box_EntityStatusListener_130 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_130
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_130")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1457078538")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_130_Loaded
  })
  self.box_DisableLayers_141 = cbox:CreateBox_PathID("11902009239270442126")
  l0 = self.box_DisableLayers_141
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_DisableLayers_141")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1460865050")
  l0:SetConnections({
    [0] = self.f_box_DisableLayers_141_Out
  })
  self.box_EnableLayers_45 = cbox:CreateBox_PathID("3668905856401434543")
  l0 = self.box_EnableLayers_45
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EnableLayers_45")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1474134070")
  l0:SetConnections({
    [0] = self.f_box_EnableLayers_45_Out
  })
  self.box_HAL_SpawnNPC_OW_50 = cbox:CreateBox_PathID("15468865579314767819")
  l0 = self.box_HAL_SpawnNPC_OW_50
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_HAL_SpawnNPC_OW_50")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1497510803")
  l0:SetConnections({
    [0] = self.f_box_HAL_SpawnNPC_OW_50_Out
  })
  self.box_PreconditionListener_9 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_9
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_9")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1508811621")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_9_PreconditionMet
  })
  self.box_ActivityInitialized_5 = cbox:CreateBox_PathID("5136111808265235631")
  l0 = self.box_ActivityInitialized_5
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ActivityInitialized_5")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1513652889")
  l0:SetConnections({
    [0] = self.f_box_ActivityInitialized_5_Out
  })
  self.box_MultipleOR_291 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_291
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_291")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1521895271")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_291_Out
  })
  self.box_MultipleOR_300 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_300
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_300")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1538557846")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_300_Out
  })
  self.box_Delay_v5_290 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_290
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_290")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1586433331")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_290_TimeElapsed
  })
  self.box_MultipleOR_288 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_288
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_288")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1599925721")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_288_Out
  })
  self.box_GetVehicleOccupants_248 = cbox:CreateBox_PathID("295288437236915858")
  l0 = self.box_GetVehicleOccupants_248
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetVehicleOccupants_248")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1606170429")
  l0:SetConnections({
    [4] = self.f_box_GetVehicleOccupants_248_Out
  })
  self.box_EntityStatusListener_95 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_95
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_95")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1609387741")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_95_Loaded
  })
  self.box_EntityStatusListener_84 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_84
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_84")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1635383913")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_84_Loaded
  })
  self.box_HAL_SpawnNPC_OW_52 = cbox:CreateBox_PathID("15468865579314767819")
  l0 = self.box_HAL_SpawnNPC_OW_52
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_HAL_SpawnNPC_OW_52")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1667158920")
  l0:SetConnections({
    [0] = self.f_box_HAL_SpawnNPC_OW_52_Out
  })
  self.box_MultipleOR_292 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_292
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_292")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1697509180")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 3
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_292_Out
  })
  self.box_TeleportPawns_323 = cbox:CreateBox_PathID("14392291592142814452")
  l0 = self.box_TeleportPawns_323
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_TeleportPawns_323")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1698091563")
  l0:SetConnections({
    [0] = self.f_box_TeleportPawns_323_Out
  })
  self.box_DisableLayers_42 = cbox:CreateBox_PathID("11902009239270442126")
  l0 = self.box_DisableLayers_42
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_DisableLayers_42")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1733819412")
  l0:SetConnections({
    [0] = self.f_box_DisableLayers_42_Out
  })
  self.box_EntityStatusListener_99 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_99
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_99")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1758104272")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_99_Loaded
  })
  self.box_HAL_SpawnNPC_OW_12 = cbox:CreateBox_PathID("15468865579314767819")
  l0 = self.box_HAL_SpawnNPC_OW_12
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_HAL_SpawnNPC_OW_12")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1768865075")
  l0:SetConnections({
    [0] = self.f_box_HAL_SpawnNPC_OW_12_Out
  })
  self.box_HAL_SpawnNPC_OW_66 = cbox:CreateBox_PathID("15468865579314767819")
  l0 = self.box_HAL_SpawnNPC_OW_66
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_HAL_SpawnNPC_OW_66")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1786191764")
  l0:SetConnections({})
  self.box_DisableLayers_142 = cbox:CreateBox_PathID("11902009239270442126")
  l0 = self.box_DisableLayers_142
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_DisableLayers_142")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1799755593")
  l0:SetConnections({
    [0] = self.f_box_DisableLayers_142_Out
  })
  self.box_PreconditionListener_11 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_11
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_11")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1814367086")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_11_PreconditionMet
  })
  self.box_EntityStatusListener_73 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_73
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_73")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1852084547")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_73_Loaded
  })
  self.box_ResourceRewardListener_31 = cbox:CreateBox_PathID("15588928917185546975")
  l0 = self.box_ResourceRewardListener_31
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ResourceRewardListener_31")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1858992317")
  l0:SetConnections({
    [0] = self.f_box_ResourceRewardListener_31_Disabled,
    [1] = self.f_box_ResourceRewardListener_31_Enabled,
    [2] = self.f_box_ResourceRewardListener_31_ResourceDestroyedAwarded,
    [3] = self.f_box_ResourceRewardListener_31_ResourceInteractAwarded,
    [4] = self.f_box_ResourceRewardListener_31_ResourceSafeReturnRewarded
  })
  self.box_EntityStatusListener_156 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_156
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_156")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1879661406")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_156_Loaded
  })
  self.box_MultipleOR_283 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_283
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_283")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1891987602")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 3
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_283_Out
  })
  self.box_MultipleOR_241 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_241
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_241")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1912902997")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_241_Out
  })
  self.box_DisableLayers_44 = cbox:CreateBox_PathID("11902009239270442126")
  l0 = self.box_DisableLayers_44
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_DisableLayers_44")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1934522799")
  l0:SetConnections({
    [0] = self.f_box_DisableLayers_44_Out
  })
  self.box_SpawnAI_239 = cbox:CreateBox_PathID("9956952542116054608")
  l0 = self.box_SpawnAI_239
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SpawnAI_239")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1955279801")
  l0:SetConnections({
    [2] = self.f_box_SpawnAI_239_Spawned
  })
  self.box_Lib_Aslt_PlayerBarracksLevelController_105 = cbox:CreateBox_PathID("9211413507098962283")
  l0 = self.box_Lib_Aslt_PlayerBarracksLevelController_105
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Lib_Aslt_PlayerBarracksLevelController_105")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1957613617")
  l0:SetConnections({})
  self.box_Bicho_Voicemails_34 = cbox:CreateBox_PathID("6592574897450922041")
  l0 = self.box_Bicho_Voicemails_34
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Bicho_Voicemails_34")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2010594893")
  l0:SetConnections({})
  self.box_UniversalInteractionListener_96 = cbox:CreateBox_PathID("10234146408315319439")
  l0 = self.box_UniversalInteractionListener_96
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UniversalInteractionListener_96")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2011934362")
  l0:SetConnections({
    [0] = self.f_box_UniversalInteractionListener_96_Disabled,
    [1] = self.f_box_UniversalInteractionListener_96_Enabled,
    [2] = self.f_box_UniversalInteractionListener_96_Interacted
  })
  self.box_EntityStatusListener_242 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_242
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_242")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2017457027")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_242_Loaded
  })
  self.box_MultipleOR_294 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_294
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_294")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2022601332")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_294_Out
  })
  self.box_Delay_v5_119 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_119
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_119")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2023724927")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_119_TimeElapsed
  })
  self.box_RemoveEntity_v2_40 = cbox:CreateBox_PathID("16525717903747192138")
  l0 = self.box_RemoveEntity_v2_40
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RemoveEntity_v2_40")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2027553626")
  l0:SetConnections({})
  self.box_EnableLayers_178 = cbox:CreateBox_PathID("3668905856401434543")
  l0 = self.box_EnableLayers_178
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EnableLayers_178")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2045029272")
  l0:SetConnections({
    [0] = self.f_box_EnableLayers_178_Out
  })
  self.box_MultipleOR_286 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_286
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_286")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2046991067")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 3
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_286_Out
  })
  self.box_MultipleOR_298 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_298
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_298")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2074028030")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 4
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_298_Out
  })
  self.box_HAL_SpawnNPC_OW_70 = cbox:CreateBox_PathID("15468865579314767819")
  l0 = self.box_HAL_SpawnNPC_OW_70
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_HAL_SpawnNPC_OW_70")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2079392137")
  l0:SetConnections({
    [0] = self.f_box_HAL_SpawnNPC_OW_70_Out
  })
  self.box_ProximityTrigger_v3_244 = cbox:CreateBox_PathID("1970451643238426831")
  l0 = self.box_ProximityTrigger_v3_244
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ProximityTrigger_v3_244")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2084719098")
  l0:SetConnections({
    [0] = self.f_box_ProximityTrigger_v3_244_Disabled,
    [1] = self.f_box_ProximityTrigger_v3_244_Enabled,
    [2] = self.f_box_ProximityTrigger_v3_244_Enter,
    [3] = self.f_box_ProximityTrigger_v3_244_Leave,
    [4] = self.f_box_ProximityTrigger_v3_244_OnAllInside,
    [5] = self.f_box_ProximityTrigger_v3_244_OnEmpty,
    [6] = self.f_box_ProximityTrigger_v3_244_OnOccupied,
    [7] = self.f_box_ProximityTrigger_v3_244_Use
  })
  self.box_EnableLayers_43 = cbox:CreateBox_PathID("3668905856401434543")
  l0 = self.box_EnableLayers_43
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EnableLayers_43")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2118102085")
  l0:SetConnections({
    [0] = self.f_box_EnableLayers_43_Out
  })
  self.box_MultipleOR_289 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_289
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_289")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2126183389")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 4
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_289_Out
  })
  self.box_EntityStatusListener_332 = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self.box_EntityStatusListener_332
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityStatusListener_332")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2129096315")
  l0:SetConnections({
    [2] = self.f_box_EntityStatusListener_332_Loaded
  })
end
function export:In()
  local params, l0
  params = self:OnEnter_box_OutputOrder_v2_3()
  l0 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1201644483", "1201644483", "FC6_CentralPlayerBase", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Simple_Node_330_Out()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  local clone = l0
  params = self:OnEnter_box_GetStatistic_326()
  l0 = Boxes["14544726443001098387"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|284951044", "284951044", "FC6_CentralPlayerBase", "box_Simple_Node_330.Out", "box_GetStatistic_326.GetValue", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Simple_Node_25_Out()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  local clone = l0
  params = self:OnEnter_box_OutputOrder_v2_22()
  l0 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|667357185", "667357185", "FC6_CentralPlayerBase", "box_Simple_Node_25.Out", "box_OutputOrder_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Simple_Node_155_Out()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  local clone = l0
  params = self:OnEnter_box_EntityStatusListener_156()
  l0 = self.box_EntityStatusListener_156
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|135078232", "135078232", "FC6_CentralPlayerBase", "box_Simple_Node_155.Out", "box_EntityStatusListener_156.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_Simple_Node_148_Out()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  local clone = l0
  params = self:OnEnter_box_OutputOrder_v2_134()
  l0 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1588758483", "1588758483", "FC6_CentralPlayerBase", "box_Simple_Node_148.Out", "box_OutputOrder_v2_134.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Simple_Node_169_Out()
  local l0
  l0 = Boxes["11682720508110024183"]
  local clone = l0
  l0 = self.box_Lib_Aslt_PlayerBarracksLevelController_105
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1892064515", "1892064515", "FC6_CentralPlayerBase", "box_Simple_Node_169.Out", "box_Lib_Aslt_PlayerBarracksLevelController_105.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, {})
end
function export:f_box_Simple_Node_104_Out()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  local clone = l0
  params = self:OnEnter_box_IsEntityLoaded_v3_249()
  l0 = Boxes["890432256735248856"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1180935530", "1180935530", "FC6_CentralPlayerBase", "box_Simple_Node_104.Out", "box_IsEntityLoaded_v3_249.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_EntityStatusListener_86_Loaded()
  local l0, l1
  l0 = self.box_EntityStatusListener_86
  l1 = self.box_MultipleOR_288
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|103482394", "103482394", "FC6_CentralPlayerBase", "box_EntityStatusListener_86.Loaded", "box_MultipleOR_288.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_Compare_Integers_237_A_eq_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_165()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|971257833", "971257833", "FC6_CentralPlayerBase", "box_Compare_Integers_237.A_eq_B", "box_UseContextualActionModifier_v3_165.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_22_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_24()
  l0 = self.box_PreconditionListener_24
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|948660311", "948660311", "FC6_CentralPlayerBase", "box_OutputOrder_v2_22.Out", "box_PreconditionListener_24.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_22_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_15()
  l0 = self.box_PreconditionListener_15
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1037042594", "1037042594", "FC6_CentralPlayerBase", "box_OutputOrder_v2_22.Out", "box_PreconditionListener_15.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_22_Out_2()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_14()
  l0 = self.box_PreconditionListener_14
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2025441052", "2025441052", "FC6_CentralPlayerBase", "box_OutputOrder_v2_22.Out", "box_PreconditionListener_14.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_22_Out_3()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_11()
  l0 = self.box_PreconditionListener_11
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|494047399", "494047399", "FC6_CentralPlayerBase", "box_OutputOrder_v2_22.Out", "box_PreconditionListener_11.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_22_Out_4()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_10()
  l0 = self.box_PreconditionListener_10
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1440236485", "1440236485", "FC6_CentralPlayerBase", "box_OutputOrder_v2_22.Out", "box_PreconditionListener_10.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_22_Out_5()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_9()
  l0 = self.box_PreconditionListener_9
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2021830917", "2021830917", "FC6_CentralPlayerBase", "box_OutputOrder_v2_22.Out", "box_PreconditionListener_9.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_MultipleOR_297_Out()
  local params, l0, l1
  params = self:OnEnter_box_RandomInteger_v2_94()
  l0 = self.box_MultipleOR_297
  l1 = Boxes["10418913611391624750"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1101739145", "1101739145", "FC6_CentralPlayerBase", "box_MultipleOR_297.Out", "box_RandomInteger_v2_94.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_243_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_EntityStatusListener_242()
  l0 = self.box_EntityStatusListener_242
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|755794680", "755794680", "FC6_CentralPlayerBase", "box_OutputOrder_v2_243.Out", "box_EntityStatusListener_242.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_243_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_UniversalInteractionListener_96()
  l0 = self.box_UniversalInteractionListener_96
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1526322608", "1526322608", "FC6_CentralPlayerBase", "box_OutputOrder_v2_243.Out", "box_UniversalInteractionListener_96.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_RandomInteger_v2_222_Out()
  local params, l0
  self:OnExit_box_RandomInteger_v2_222_Out()
  l0 = Boxes["10418913611391624750"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_221()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|177995292", "177995292", "FC6_CentralPlayerBase", "box_RandomInteger_v2_222.Out", "box_Compare_Integers_221.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_RandomInteger_v2_82_Out()
  local params, l0
  self:OnExit_box_RandomInteger_v2_82_Out()
  l0 = Boxes["10418913611391624750"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_81()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1517527372", "1517527372", "FC6_CentralPlayerBase", "box_RandomInteger_v2_82.Out", "box_Compare_Integers_81.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_18_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_EnableLayers_178()
  l0 = self.box_EnableLayers_178
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|269111524", "269111524", "FC6_CentralPlayerBase", "box_OutputOrder_v2_18.Out", "box_EnableLayers_178.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_18_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_EntityStatusListener_73()
  l0 = self.box_EntityStatusListener_73
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1983425381", "1983425381", "FC6_CentralPlayerBase", "box_OutputOrder_v2_18.Out", "box_EntityStatusListener_73.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_UseContextualActionModifier_v3_215_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_218()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|868443765", "868443765", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_215.Enabled", "box_UseContextualActionModifier_v3_218.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_PreconditionListener_136_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_DisableLayers_141()
  l0 = self.box_PreconditionListener_136
  l1 = self.box_DisableLayers_141
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|803356674", "803356674", "FC6_CentralPlayerBase", "box_PreconditionListener_136.PreconditionMet", "box_DisableLayers_141.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_UseContextualActionModifier_v3_72_Enabled()
  local l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  l0 = self.box_MultipleOR_283
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|96975562", "96975562", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_72.Enabled", "box_MultipleOR_283.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 2)
end
function export:f_box_HAL_SpawnNPC_OW_56_Out()
  local params, l0, l1
  params = self:OnEnter_box_HAL_SpawnNPC_OW_55()
  l0 = self.box_HAL_SpawnNPC_OW_56
  l1 = self.box_HAL_SpawnNPC_OW_55
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2047713259", "2047713259", "FC6_CentralPlayerBase", "box_HAL_SpawnNPC_OW_56.Out", "box_HAL_SpawnNPC_OW_55.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_RandomInteger_v2_216_Out()
  local params, l0
  self:OnExit_box_RandomInteger_v2_216_Out()
  l0 = Boxes["10418913611391624750"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_217()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|256873434", "256873434", "FC6_CentralPlayerBase", "box_RandomInteger_v2_216.Out", "box_Compare_Integers_217.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_TeleportPawns_108_Out()
  local params, l0, l1
  params = self:OnEnter_box_UseContextualActionModifier_v3_111()
  l0 = self.box_TeleportPawns_108
  l1 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1435865689", "1435865689", "FC6_CentralPlayerBase", "box_TeleportPawns_108.Out", "box_UseContextualActionModifier_v3_111.Use", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(4, params)
  l1:SetParentGraph(nil)
end
function export:f_box_PreconditionListener_109_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_EntityStatusListener_114()
  l0 = self.box_PreconditionListener_109
  l1 = self.box_EntityStatusListener_114
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|532475113", "532475113", "FC6_CentralPlayerBase", "box_PreconditionListener_109.PreconditionMet", "box_EntityStatusListener_114.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_RandomInteger_v2_224_Out()
  local params, l0
  self:OnExit_box_RandomInteger_v2_224_Out()
  l0 = Boxes["10418913611391624750"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_223()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1967622798", "1967622798", "FC6_CentralPlayerBase", "box_RandomInteger_v2_224.Out", "box_Compare_Integers_223.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Delay_v5_296_TimeElapsed()
  local l0, l1
  l0 = self.box_Delay_v5_296
  l1 = self.box_MultipleOR_297
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1917491965", "1917491965", "FC6_CentralPlayerBase", "box_Delay_v5_296.TimeElapsed", "box_MultipleOR_297.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_EnableLayers_179_Out()
  local params, l0, l1
  params = self:OnEnter_box_HAL_SpawnNPC_OW_52()
  l0 = self.box_EnableLayers_179
  l1 = self.box_HAL_SpawnNPC_OW_52
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1271965490", "1271965490", "FC6_CentralPlayerBase", "box_EnableLayers_179.Out", "box_HAL_SpawnNPC_OW_52.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_Compare_Integers_223_A_eq_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_90()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1977869249", "1977869249", "FC6_CentralPlayerBase", "box_Compare_Integers_223.A_eq_B", "box_UseContextualActionModifier_v3_90.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_223_A_lt_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_79()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1443135720", "1443135720", "FC6_CentralPlayerBase", "box_Compare_Integers_223.A_lt_B", "box_UseContextualActionModifier_v3_79.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_149_A_eq_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_152()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1885642164", "1885642164", "FC6_CentralPlayerBase", "box_Compare_Integers_149.A_eq_B", "box_UseContextualActionModifier_v3_152.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_275_A_eq_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_GetStatistic_327()
  l0 = Boxes["14544726443001098387"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|817014388", "817014388", "FC6_CentralPlayerBase", "box_Compare_Integers_275.A_eq_B", "box_GetStatistic_327.GetValue", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_275_A_gt_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_PlayerBaseModifier_301()
  l0 = Boxes["8603181527020415275"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1178733683", "1178733683", "FC6_CentralPlayerBase", "box_Compare_Integers_275.A_gt_B", "box_PlayerBaseModifier_301.UnlockBase", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_SetEntity_v2_238_Out()
  local params, l0
  self:OnExit_box_SetEntity_v2_238_Out()
  l0 = Boxes["4263227414284540380"]
  local clone = l0
  params = self:OnEnter_box_OutputOrder_v2_243()
  l0 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1494152244", "1494152244", "FC6_CentralPlayerBase", "box_SetEntity_v2_238.Out", "box_OutputOrder_v2_243.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_EntityStatusListener_162_Loaded()
  local l0, l1
  l0 = self.box_EntityStatusListener_162
  l1 = self.box_MultipleOR_300
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|42114519", "42114519", "FC6_CentralPlayerBase", "box_EntityStatusListener_162.Loaded", "box_MultipleOR_300.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_UseContextualActionModifier_v3_117_Disabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_118()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|562686352", "562686352", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_117.Disabled", "box_UseContextualActionModifier_v3_118.Disable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Delay_v5_299_TimeElapsed()
  local l0, l1
  l0 = self.box_Delay_v5_299
  l1 = self.box_MultipleOR_300
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1838226275", "1838226275", "FC6_CentralPlayerBase", "box_Delay_v5_299.TimeElapsed", "box_MultipleOR_300.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_MultipleOR_59_Out()
  local params, l0, l1
  params = self:OnEnter_box_StatisticModifier_329()
  l0 = self.box_MultipleOR_59
  l1 = Boxes["15478190047253350759"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1271179532", "1271179532", "FC6_CentralPlayerBase", "box_MultipleOR_59.Out", "box_StatisticModifier_329.SetDirect", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
  l1:SetParentGraph(nil)
end
function export:f_box_EntityStatusListener_161_Loaded()
  local params, l0, l1
  params = self:OnEnter_box_EntityStatusListener_162()
  l0 = self.box_EntityStatusListener_161
  l1 = self.box_EntityStatusListener_162
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1430348853", "1430348853", "FC6_CentralPlayerBase", "box_EntityStatusListener_161.Loaded", "box_EntityStatusListener_162.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_Delay_v5_287_TimeElapsed()
  local l0, l1
  l0 = self.box_Delay_v5_287
  l1 = self.box_MultipleOR_288
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|183513343", "183513343", "FC6_CentralPlayerBase", "box_Delay_v5_287.TimeElapsed", "box_MultipleOR_288.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_StatisticIncrement_v2_282_Incremented()
  local params, l0
  l0 = Boxes["13314307389301634622"]
  local clone = l0
  params = self:OnEnter_box_SaveOpenWorldBox_240()
  l0 = Boxes["17274682685841934203"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2146628497", "2146628497", "FC6_CentralPlayerBase", "box_StatisticIncrement_v2_282.Incremented", "box_SaveOpenWorldBox_240.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_7_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_330()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1557510549", "1557510549", "FC6_CentralPlayerBase", "box_OutputOrder_v2_7.Out", "box_Simple_Node_330.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_7_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_GetPlayerGroup_v2_64()
  l0 = Boxes["9581874586206389174"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1618757141", "1618757141", "FC6_CentralPlayerBase", "box_OutputOrder_v2_7.Out", "box_GetPlayerGroup_v2_64.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_7_Out_2()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_25()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1780740772", "1780740772", "FC6_CentralPlayerBase", "box_OutputOrder_v2_7.Out", "box_Simple_Node_25.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_7_Out_3()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_148()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|682348796", "682348796", "FC6_CentralPlayerBase", "box_OutputOrder_v2_7.Out", "box_Simple_Node_148.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_7_Out_4()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_169()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|842819329", "842819329", "FC6_CentralPlayerBase", "box_OutputOrder_v2_7.Out", "box_Simple_Node_169.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_7_Out_6()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_ProximityTrigger_v3_28()
  l0 = self.box_ProximityTrigger_v3_28
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1289567577", "1289567577", "FC6_CentralPlayerBase", "box_OutputOrder_v2_7.Out", "box_ProximityTrigger_v3_28.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_7_Out_7()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_104()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|804862438", "804862438", "FC6_CentralPlayerBase", "box_OutputOrder_v2_7.Out", "box_Simple_Node_104.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_7_Out_8()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_155()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|790848685", "790848685", "FC6_CentralPlayerBase", "box_OutputOrder_v2_7.Out", "box_Simple_Node_155.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_7_Out_9()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Simple_Node_1()
  l0 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|121274949", "121274949", "FC6_CentralPlayerBase", "box_OutputOrder_v2_7.Out", "box_Simple_Node_1.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_7_Out_10()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_Bicho_Voicemails_34
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|189313552", "189313552", "FC6_CentralPlayerBase", "box_OutputOrder_v2_7.Out", "box_Bicho_Voicemails_34.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, {})
end
function export:f_box_OutputOrder_v2_7_Out_11()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_MultipleOR_245
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1977978112", "1977978112", "FC6_CentralPlayerBase", "box_OutputOrder_v2_7.Out", "box_MultipleOR_245.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_OutputOrder_v2_7_Out_12()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_109()
  l0 = self.box_PreconditionListener_109
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1088719340", "1088719340", "FC6_CentralPlayerBase", "box_OutputOrder_v2_7.Out", "box_PreconditionListener_109.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_7_Out_14()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_EntityStatusListener_120()
  l0 = self.box_EntityStatusListener_120
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1087375701", "1087375701", "FC6_CentralPlayerBase", "box_OutputOrder_v2_7.Out", "box_EntityStatusListener_120.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_GetStatistic_327_ValueGot()
  local params, l0
  self:OnExit_box_GetStatistic_327_ValueGot()
  l0 = Boxes["14544726443001098387"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_305()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|335863516", "335863516", "FC6_CentralPlayerBase", "box_GetStatistic_327.ValueGot", "box_Compare_Integers_305.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_EntityStatusListener_131_Loaded()
  local params, l0, l1
  params = self:OnEnter_box_EntityStatusListener_132()
  l0 = self.box_EntityStatusListener_131
  l1 = self.box_EntityStatusListener_132
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1961395267", "1961395267", "FC6_CentralPlayerBase", "box_EntityStatusListener_131.Loaded", "box_EntityStatusListener_132.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_MultipleOR_315_Out()
  local params, l0, l1
  params = self:OnEnter_box_Delay_v5_317()
  l0 = self.box_MultipleOR_315
  l1 = self.box_Delay_v5_317
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|595763511", "595763511", "FC6_CentralPlayerBase", "box_MultipleOR_315.Out", "box_Delay_v5_317.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_UseContextualActionModifier_v3_236_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_235()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1729278646", "1729278646", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_236.Enabled", "box_UseContextualActionModifier_v3_235.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_UseContextualActionModifier_v3_158_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_157()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|68667860", "68667860", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_158.Enabled", "box_UseContextualActionModifier_v3_157.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Delay_v5_246_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_GetVehicleOccupants_248()
  l0 = self.box_Delay_v5_246
  l1 = self.box_GetVehicleOccupants_248
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2049104882", "2049104882", "FC6_CentralPlayerBase", "box_Delay_v5_246.TimeElapsed", "box_GetVehicleOccupants_248.QueryAllVehicles", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_Delay_v5_8_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_PlayerBaseModifier_328()
  l0 = self.box_Delay_v5_8
  l1 = Boxes["8603181527020415275"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1574805796", "1574805796", "FC6_CentralPlayerBase", "box_Delay_v5_8.TimeElapsed", "box_PlayerBaseModifier_328.UnlockBase", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_RequestPhoneConversation_304_Completed()
  local params, l0, l1
  params = self:OnEnter_box_RequestTutorial_v3_306()
  l0 = self.box_RequestPhoneConversation_304
  l1 = self.box_RequestTutorial_v3_306
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|917007267", "917007267", "FC6_CentralPlayerBase", "box_RequestPhoneConversation_304.Completed", "box_RequestTutorial_v3_306.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_RequestPhoneConversation_304_Started()
  local params, l0, l1
  params = self:OnEnter_box_StatisticModifier_107()
  l0 = self.box_RequestPhoneConversation_304
  l1 = Boxes["15478190047253350759"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|563232219", "563232219", "FC6_CentralPlayerBase", "box_RequestPhoneConversation_304.Started", "box_StatisticModifier_107.SetDirect", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
  l1:SetParentGraph(nil)
end
function export:f_box_PreconditionListener_122_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_Delay_v5_119()
  l0 = self.box_PreconditionListener_122
  l1 = self.box_Delay_v5_119
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1316629595", "1316629595", "FC6_CentralPlayerBase", "box_PreconditionListener_122.PreconditionMet", "box_Delay_v5_119.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_MultipleOR_285_Out()
  local params, l0, l1
  params = self:OnEnter_box_RandomInteger_v2_76()
  l0 = self.box_MultipleOR_285
  l1 = Boxes["10418913611391624750"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1736785308", "1736785308", "FC6_CentralPlayerBase", "box_MultipleOR_285.Out", "box_RandomInteger_v2_76.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_217_A_ge_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_219()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1268257465", "1268257465", "FC6_CentralPlayerBase", "box_Compare_Integers_217.A_ge_B", "box_UseContextualActionModifier_v3_219.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_217_A_lt_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_215()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|330981080", "330981080", "FC6_CentralPlayerBase", "box_Compare_Integers_217.A_lt_B", "box_UseContextualActionModifier_v3_215.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_RadioModifier_v3_124_Out()
  local params, l0
  l0 = Boxes["11023266040765184046"]
  local clone = l0
  params = self:OnEnter_box_SoundShapeModifier_318()
  l0 = Boxes["11231440745257573299"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1565841757", "1565841757", "FC6_CentralPlayerBase", "box_RadioModifier_v3_124.Out", "box_SoundShapeModifier_318.Pause", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  l0 = self.box_MultipleOR_2
  l1 = self.box_ActivityInitialized_5
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|287507776", "287507776", "FC6_CentralPlayerBase", "box_MultipleOR_2.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, {})
end
function export:f_box_UseContextualActionModifier_v3_230_Enabled()
  local l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  l0 = self.box_MultipleOR_298
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2088021097", "2088021097", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_230.Enabled", "box_MultipleOR_298.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_EntityStatusListener_91_Loaded()
  local params, l0, l1
  params = self:OnEnter_box_EntityStatusListener_131()
  l0 = self.box_EntityStatusListener_91
  l1 = self.box_EntityStatusListener_131
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|172038218", "172038218", "FC6_CentralPlayerBase", "box_EntityStatusListener_91.Loaded", "box_EntityStatusListener_131.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_Delay_v5_284_TimeElapsed()
  local l0, l1
  l0 = self.box_Delay_v5_284
  l1 = self.box_MultipleOR_285
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1917218038", "1917218038", "FC6_CentralPlayerBase", "box_Delay_v5_284.TimeElapsed", "box_MultipleOR_285.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_OutputOrder_v2_13_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_DisableLayers_44()
  l0 = self.box_DisableLayers_44
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|558658461", "558658461", "FC6_CentralPlayerBase", "box_OutputOrder_v2_13.Out", "box_DisableLayers_44.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_13_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_EntityStatusListener_92()
  l0 = self.box_EntityStatusListener_92
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2072859108", "2072859108", "FC6_CentralPlayerBase", "box_OutputOrder_v2_13.Out", "box_EntityStatusListener_92.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_13_Out_2()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_RadioModifier_v3_125()
  l0 = Boxes["11023266040765184046"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|747347191", "747347191", "FC6_CentralPlayerBase", "box_OutputOrder_v2_13.Out", "box_RadioModifier_v3_125.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_EnableLayers_27_Out()
  local params, l0, l1
  params = self:OnEnter_box_HAL_SpawnNPC_OW_12()
  l0 = self.box_EnableLayers_27
  l1 = self.box_HAL_SpawnNPC_OW_12
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2068649832", "2068649832", "FC6_CentralPlayerBase", "box_EnableLayers_27.Out", "box_HAL_SpawnNPC_OW_12.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_PreconditionListener_15_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_20()
  l0 = self.box_PreconditionListener_15
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1161023847", "1161023847", "FC6_CentralPlayerBase", "box_PreconditionListener_15.PreconditionMet", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_EntityStatusListener_102_Loaded()
  local params, l0, l1
  params = self:OnEnter_box_SpawnAI_239()
  l0 = self.box_EntityStatusListener_102
  l1 = self.box_SpawnAI_239
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1580157795", "1580157795", "FC6_CentralPlayerBase", "box_EntityStatusListener_102.Loaded", "box_SpawnAI_239.Spawn", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_UseContextualActionModifier_v3_213_Enabled()
  local l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  l0 = self.box_MultipleOR_289
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|305845542", "305845542", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_213.Enabled", "box_MultipleOR_289.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_EntityStatusListener_74_Loaded()
  local l0, l1
  l0 = self.box_EntityStatusListener_74
  l1 = self.box_MultipleOR_285
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1146690110", "1146690110", "FC6_CentralPlayerBase", "box_EntityStatusListener_74.Loaded", "box_MultipleOR_285.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_OutputOrder_v2_16_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_DisableLayers_42()
  l0 = self.box_DisableLayers_42
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|398775615", "398775615", "FC6_CentralPlayerBase", "box_OutputOrder_v2_16.Out", "box_DisableLayers_42.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_16_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_EntityStatusListener_161()
  l0 = self.box_EntityStatusListener_161
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1528515404", "1528515404", "FC6_CentralPlayerBase", "box_OutputOrder_v2_16.Out", "box_EntityStatusListener_161.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_16_Out_2()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_EntityStatusListener_99()
  l0 = self.box_EntityStatusListener_99
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|896463264", "896463264", "FC6_CentralPlayerBase", "box_OutputOrder_v2_16.Out", "box_EntityStatusListener_99.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_MultipleOR_245_Out()
  local params, l0, l1
  params = self:OnEnter_box_ProximityTrigger_v3_244()
  l0 = self.box_MultipleOR_245
  l1 = self.box_ProximityTrigger_v3_244
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|599579822", "599579822", "FC6_CentralPlayerBase", "box_MultipleOR_245.Out", "box_ProximityTrigger_v3_244.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_Compare_Integers_305_A_eq_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_Delay_v5_8()
  l0 = self.box_Delay_v5_8
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1408470615", "1408470615", "FC6_CentralPlayerBase", "box_Compare_Integers_305.A_eq_B", "box_Delay_v5_8.Start", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
end
function export:f_box_Compare_Integers_305_A_ne_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_PlayerBaseModifier_309()
  l0 = Boxes["8603181527020415275"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|72392751", "72392751", "FC6_CentralPlayerBase", "box_Compare_Integers_305.A_ne_B", "box_PlayerBaseModifier_309.UnlockBase", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_HAL_SpawnNPC_OW_53_Out()
  local params, l0, l1
  params = self:OnEnter_box_HAL_SpawnNPC_OW_51()
  l0 = self.box_HAL_SpawnNPC_OW_53
  l1 = self.box_HAL_SpawnNPC_OW_51
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|7067759", "7067759", "FC6_CentralPlayerBase", "box_HAL_SpawnNPC_OW_53.Out", "box_HAL_SpawnNPC_OW_51.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_UseContextualActionModifier_v3_80_Enabled()
  local l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  l0 = self.box_MultipleOR_289
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1619823429", "1619823429", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_80.Enabled", "box_MultipleOR_289.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 2)
end
function export:f_box_UseContextualActionModifier_v3_160_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_159()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1638205986", "1638205986", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_160.Enabled", "box_UseContextualActionModifier_v3_159.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_ActivityAcknowledgeGate_v2_4_Acknowledged()
  local l0, l1
  l0 = self.box_ActivityAcknowledgeGate_v2_4
  l1 = self.box_MultipleOR_2
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|575761846", "575761846", "FC6_CentralPlayerBase", "box_ActivityAcknowledgeGate_v2_4.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_ActivityAcknowledgeGate_v2_4_Reloaded()
  local l0, l1
  l0 = self.box_ActivityAcknowledgeGate_v2_4
  l1 = self.box_MultipleOR_2
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1210523181", "1210523181", "FC6_CentralPlayerBase", "box_ActivityAcknowledgeGate_v2_4.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_UseContextualActionModifier_v3_225_Enabled()
  local l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  l0 = self.box_MultipleOR_295
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|976822346", "976822346", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_225.Enabled", "box_MultipleOR_295.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_EntityStatusListener_320_Loaded()
  local params, l0, l1
  params = self:OnEnter_box_UseContextualActionModifier_v3_103()
  l0 = self.box_EntityStatusListener_320
  l1 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|617497182", "617497182", "FC6_CentralPlayerBase", "box_EntityStatusListener_320.Loaded", "box_UseContextualActionModifier_v3_103.Disable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_295_Out()
  local params, l0, l1
  params = self:OnEnter_box_Delay_v5_296()
  l0 = self.box_MultipleOR_295
  l1 = self.box_Delay_v5_296
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2104070957", "2104070957", "FC6_CentralPlayerBase", "box_MultipleOR_295.Out", "box_Delay_v5_296.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_RandomInteger_v2_94_Out()
  local params, l0
  self:OnExit_box_RandomInteger_v2_94_Out()
  l0 = Boxes["10418913611391624750"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_93()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1510826945", "1510826945", "FC6_CentralPlayerBase", "box_RandomInteger_v2_94.Out", "box_Compare_Integers_93.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_231_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_229()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|545504654", "545504654", "FC6_CentralPlayerBase", "box_OutputOrder_v2_231.Out", "box_Compare_Integers_229.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_231_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_163()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1391401201", "1391401201", "FC6_CentralPlayerBase", "box_OutputOrder_v2_231.Out", "box_Compare_Integers_163.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_231_Out_2()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_234()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|939762538", "939762538", "FC6_CentralPlayerBase", "box_OutputOrder_v2_231.Out", "box_Compare_Integers_234.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_231_Out_3()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_237()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|329256839", "329256839", "FC6_CentralPlayerBase", "box_OutputOrder_v2_231.Out", "box_Compare_Integers_237.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_UseContextualActionModifier_v3_71_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_72()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1672226441", "1672226441", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_71.Enabled", "box_UseContextualActionModifier_v3_72.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_DisableLayers_26_Out()
  local params, l0, l1
  params = self:OnEnter_box_EnableLayers_27()
  l0 = self.box_DisableLayers_26
  l1 = self.box_EnableLayers_27
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1212063413", "1212063413", "FC6_CentralPlayerBase", "box_DisableLayers_26.Out", "box_EnableLayers_27.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_UseContextualActionModifier_v3_206_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_207()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|209610926", "209610926", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_206.Enabled", "box_UseContextualActionModifier_v3_207.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_DisableLayers_180_Out()
  local params, l0, l1
  params = self:OnEnter_box_EnableLayers_179()
  l0 = self.box_DisableLayers_180
  l1 = self.box_EnableLayers_179
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1719214475", "1719214475", "FC6_CentralPlayerBase", "box_DisableLayers_180.Out", "box_EnableLayers_179.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_TeleportToTargetPlusOffset_247_Teleported()
  local l0, l1
  l0 = self.box_TeleportToTargetPlusOffset_247
  l1 = self.box_MultipleOR_245
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|538320422", "538320422", "FC6_CentralPlayerBase", "box_TeleportToTargetPlusOffset_247.Teleported", "box_MultipleOR_245.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_OutputOrder_v2_113_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_101()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1415383880", "1415383880", "FC6_CentralPlayerBase", "box_OutputOrder_v2_113.Out", "box_UseContextualActionModifier_v3_101.Disable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_113_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_TeleportPawns_108()
  l0 = self.box_TeleportPawns_108
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|122629217", "122629217", "FC6_CentralPlayerBase", "box_OutputOrder_v2_113.Out", "box_TeleportPawns_108.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_UseContextualActionModifier_v3_227_Enabled()
  local l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  l0 = self.box_MultipleOR_295
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|253310104", "253310104", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_227.Enabled", "box_MultipleOR_295.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_PreconditionListener_24_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_18()
  l0 = self.box_PreconditionListener_24
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1809661010", "1809661010", "FC6_CentralPlayerBase", "box_PreconditionListener_24.PreconditionMet", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_93_A_eq_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_226()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1949906607", "1949906607", "FC6_CentralPlayerBase", "box_Compare_Integers_93.A_eq_B", "box_UseContextualActionModifier_v3_226.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_93_A_gt_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_RandomInteger_v2_222()
  l0 = Boxes["10418913611391624750"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2024691376", "2024691376", "FC6_CentralPlayerBase", "box_Compare_Integers_93.A_gt_B", "box_RandomInteger_v2_222.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_93_A_lt_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_210()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|343250115", "343250115", "FC6_CentralPlayerBase", "box_Compare_Integers_93.A_lt_B", "box_UseContextualActionModifier_v3_210.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_UseContextualActionModifier_v3_115_Disabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_116()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|410476630", "410476630", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_115.Disabled", "box_UseContextualActionModifier_v3_116.Disable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
  l0:SetParentGraph(nil)
end
function export:f_box_EntityStatusListener_77_Loaded()
  local params, l0, l1
  params = self:OnEnter_box_EntityStatusListener_130()
  l0 = self.box_EntityStatusListener_77
  l1 = self.box_EntityStatusListener_130
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|872029859", "872029859", "FC6_CentralPlayerBase", "box_EntityStatusListener_77.Loaded", "box_EntityStatusListener_130.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_EntityStatusListener_132_Loaded()
  local l0, l1
  l0 = self.box_EntityStatusListener_132
  l1 = self.box_MultipleOR_297
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1453111036", "1453111036", "FC6_CentralPlayerBase", "box_EntityStatusListener_132.Loaded", "box_MultipleOR_297.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_HAL_SpawnNPC_OW_46_Out()
  local params, l0, l1
  params = self:OnEnter_box_HAL_SpawnNPC_OW_41()
  l0 = self.box_HAL_SpawnNPC_OW_46
  l1 = self.box_HAL_SpawnNPC_OW_41
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|831572969", "831572969", "FC6_CentralPlayerBase", "box_HAL_SpawnNPC_OW_46.Out", "box_HAL_SpawnNPC_OW_41.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_Compare_Integers_75_A_eq_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_71()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1993714288", "1993714288", "FC6_CentralPlayerBase", "box_Compare_Integers_75.A_eq_B", "box_UseContextualActionModifier_v3_71.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_75_A_lt_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_206()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|633286626", "633286626", "FC6_CentralPlayerBase", "box_Compare_Integers_75.A_lt_B", "box_UseContextualActionModifier_v3_206.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_DisableLayers_37_Out()
  local params, l0, l1
  params = self:OnEnter_box_EnableLayers_43()
  l0 = self.box_DisableLayers_37
  l1 = self.box_EnableLayers_43
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1641765163", "1641765163", "FC6_CentralPlayerBase", "box_DisableLayers_37.Out", "box_EnableLayers_43.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_EntityStatusListener_120_Loaded()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_122()
  l0 = self.box_EntityStatusListener_120
  l1 = self.box_PreconditionListener_122
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|141473266", "141473266", "FC6_CentralPlayerBase", "box_EntityStatusListener_120.Loaded", "box_PreconditionListener_122.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_PreconditionListener_133_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_EnableLayers_144()
  l0 = self.box_PreconditionListener_133
  l1 = self.box_EnableLayers_144
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1581391523", "1581391523", "FC6_CentralPlayerBase", "box_PreconditionListener_133.PreconditionMet", "box_EnableLayers_144.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_Compare_Integers_221_A_gt_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_160()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|240476867", "240476867", "FC6_CentralPlayerBase", "box_Compare_Integers_221.A_gt_B", "box_UseContextualActionModifier_v3_160.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_221_A_lt_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_158()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1706321418", "1706321418", "FC6_CentralPlayerBase", "box_Compare_Integers_221.A_lt_B", "box_UseContextualActionModifier_v3_158.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_PlayerBaseListener_154_SlotUpgraded()
  local params, l0, l1
  self:OnExit_box_PlayerBaseListener_154_SlotUpgraded()
  params = self:OnEnter_box_Compare_Boolean_150()
  l0 = self.box_PlayerBaseListener_154
  l1 = Boxes["15564734308847053112"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|3005957", "3005957", "FC6_CentralPlayerBase", "box_PlayerBaseListener_154.SlotUpgraded", "box_Compare_Boolean_150.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_RadioModifier_v3_125_Out()
  local params, l0
  l0 = Boxes["11023266040765184046"]
  local clone = l0
  params = self:OnEnter_box_SoundShapeModifier_319()
  l0 = Boxes["11231440745257573299"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1681719230", "1681719230", "FC6_CentralPlayerBase", "box_RadioModifier_v3_125.Out", "box_SoundShapeModifier_319.Resume", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_box_EntityStatusListener_114_Loaded()
  local params, l0, l1
  params = self:OnEnter_box_UseContextualActionModifier_v3_110()
  l0 = self.box_EntityStatusListener_114
  l1 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|371756409", "371756409", "FC6_CentralPlayerBase", "box_EntityStatusListener_114.Loaded", "box_UseContextualActionModifier_v3_110.Disable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
  l1:SetParentGraph(nil)
end
function export:f_box_PreconditionListener_324_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_EntityStatusListener_320()
  l0 = self.box_PreconditionListener_324
  l1 = self.box_EntityStatusListener_320
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|472098574", "472098574", "FC6_CentralPlayerBase", "box_PreconditionListener_324.PreconditionMet", "box_EntityStatusListener_320.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_GetStatistic_326_ValueGot()
  local params, l0
  self:OnExit_box_GetStatistic_326_ValueGot()
  l0 = Boxes["14544726443001098387"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_275()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|567747799", "567747799", "FC6_CentralPlayerBase", "box_GetStatistic_326.ValueGot", "box_Compare_Integers_275.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_EntityStatusListener_78_Loaded()
  local params, l0, l1
  params = self:OnEnter_box_EntityStatusListener_77()
  l0 = self.box_EntityStatusListener_78
  l1 = self.box_EntityStatusListener_77
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|59476393", "59476393", "FC6_CentralPlayerBase", "box_EntityStatusListener_78.Loaded", "box_EntityStatusListener_77.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_DisableLayers_139_Out()
  local params, l0, l1
  params = self:OnEnter_box_EnableLayers_140()
  l0 = self.box_DisableLayers_139
  l1 = self.box_EnableLayers_140
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1142208441", "1142208441", "FC6_CentralPlayerBase", "box_DisableLayers_139.Out", "box_EnableLayers_140.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_HAL_SpawnNPC_OW_112_Out()
  local params, l0, l1
  params = self:OnEnter_box_HAL_SpawnNPC_OW_66()
  l0 = self.box_HAL_SpawnNPC_OW_112
  l1 = self.box_HAL_SpawnNPC_OW_66
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|732412317", "732412317", "FC6_CentralPlayerBase", "box_HAL_SpawnNPC_OW_112.Out", "box_HAL_SpawnNPC_OW_66.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_Compare_Integers_234_A_eq_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_236()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1670820477", "1670820477", "FC6_CentralPlayerBase", "box_Compare_Integers_234.A_eq_B", "box_UseContextualActionModifier_v3_236.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_PlayerBaseModifier_309_UnlockedBase()
  local params, l0
  l0 = Boxes["8603181527020415275"]
  local clone = l0
  params = self:OnEnter_box_RequestPhoneConversation_325()
  l0 = self.box_RequestPhoneConversation_325
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1406059873", "1406059873", "FC6_CentralPlayerBase", "box_PlayerBaseModifier_309.UnlockedBase", "box_RequestPhoneConversation_325.Start", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_UseContextualActionModifier_v3_165_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_166()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|996217750", "996217750", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_165.Enabled", "box_UseContextualActionModifier_v3_166.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_RequestPhoneConversation_325_Completed()
  local params, l0, l1
  params = self:OnEnter_box_RequestTutorial_v3_303()
  l0 = self.box_RequestPhoneConversation_325
  l1 = self.box_RequestTutorial_v3_303
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|898552800", "898552800", "FC6_CentralPlayerBase", "box_RequestPhoneConversation_325.Completed", "box_RequestTutorial_v3_303.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_RequestPhoneConversation_325_Started()
  local l0, l1
  l0 = self.box_RequestPhoneConversation_325
  l1 = self.box_MultipleOR_59
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1284701232", "1284701232", "FC6_CentralPlayerBase", "box_RequestPhoneConversation_325.Started", "box_MultipleOR_59.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_UseContextualActionModifier_v3_159_Enabled()
  local l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  l0 = self.box_MultipleOR_295
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|391785892", "391785892", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_159.Enabled", "box_MultipleOR_295.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 3)
end
function export:f_box_EntityStatusListener_92_Loaded()
  local params, l0, l1
  params = self:OnEnter_box_EntityStatusListener_91()
  l0 = self.box_EntityStatusListener_92
  l1 = self.box_EntityStatusListener_91
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|222808846", "222808846", "FC6_CentralPlayerBase", "box_EntityStatusListener_92.Loaded", "box_EntityStatusListener_91.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_Delay_v5_307_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_RequestPhoneConversation_304()
  l0 = self.box_Delay_v5_307
  l1 = self.box_RequestPhoneConversation_304
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|284256910", "284256910", "FC6_CentralPlayerBase", "box_Delay_v5_307.TimeElapsed", "box_RequestPhoneConversation_304.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_HAL_SpawnNPC_OW_54_Out()
  local params, l0, l1
  params = self:OnEnter_box_HAL_SpawnNPC_OW_53()
  l0 = self.box_HAL_SpawnNPC_OW_54
  l1 = self.box_HAL_SpawnNPC_OW_53
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1985644955", "1985644955", "FC6_CentralPlayerBase", "box_HAL_SpawnNPC_OW_54.Out", "box_HAL_SpawnNPC_OW_53.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_GetMissionLayerState_v2_21_Enabled()
  local params, l0
  l0 = Boxes["1567066895893317808"]
  local clone = l0
  params = self:OnEnter_box_RemoveEntity_v2_40()
  l0 = self.box_RemoveEntity_v2_40
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|472820243", "472820243", "FC6_CentralPlayerBase", "box_GetMissionLayerState_v2_21.Enabled", "box_RemoveEntity_v2_40.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_PreconditionListener_137_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_DisableLayers_142()
  l0 = self.box_PreconditionListener_137
  l1 = self.box_DisableLayers_142
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|681049921", "681049921", "FC6_CentralPlayerBase", "box_PreconditionListener_137.PreconditionMet", "box_DisableLayers_142.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_OnceOnly_v3_153_Out_0()
  local params, l0, l1
  params = self:OnEnter_box_Compare_Integers_149()
  l0 = self.box_OnceOnly_v3_153
  l1 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1826729231", "1826729231", "FC6_CentralPlayerBase", "box_OnceOnly_v3_153.Out", "box_Compare_Integers_149.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_UseContextualActionModifier_v3_214_Enabled()
  local l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  l0 = self.box_MultipleOR_289
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|659620590", "659620590", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_214.Enabled", "box_MultipleOR_289.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_PreconditionListener_10_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_13()
  l0 = self.box_PreconditionListener_10
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1908498696", "1908498696", "FC6_CentralPlayerBase", "box_PreconditionListener_10.PreconditionMet", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_UseContextualActionModifier_v3_220_Enabled()
  local l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  l0 = self.box_MultipleOR_292
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|719443051", "719443051", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_220.Enabled", "box_MultipleOR_292.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_Compare_Integers_229_A_eq_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_232()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1297499166", "1297499166", "FC6_CentralPlayerBase", "box_Compare_Integers_229.A_eq_B", "box_UseContextualActionModifier_v3_232.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_ProximityTrigger_v3_28_Enabled()
  self:OnExit_box_ProximityTrigger_v3_28_Enabled()
end
function export:f_box_ProximityTrigger_v3_28_Enter()
  local params, l0, l1
  self:OnExit_box_ProximityTrigger_v3_28_Enter()
  params = self:OnEnter_box_OutputOrder_v2_32()
  l0 = self.box_ProximityTrigger_v3_28
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1219492616", "1219492616", "FC6_CentralPlayerBase", "box_ProximityTrigger_v3_28.Enter", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_ProximityTrigger_v3_28_Leave()
  self:OnExit_box_ProximityTrigger_v3_28_Leave()
end
function export:f_box_ProximityTrigger_v3_28_OnEmpty()
  self:OnExit_box_ProximityTrigger_v3_28_OnEmpty()
end
function export:f_box_ProximityTrigger_v3_28_OnOccupied()
  self:OnExit_box_ProximityTrigger_v3_28_OnOccupied()
end
function export:f_box_ProximityTrigger_v3_28_Use()
  self:OnExit_box_ProximityTrigger_v3_28_Use()
end
function export:f_box_TeleportPawns_19_Out()
  local params, l0, l1
  params = self:OnEnter_box_UseContextualActionModifier_v3_98()
  l0 = self.box_TeleportPawns_19
  l1 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1953164522", "1953164522", "FC6_CentralPlayerBase", "box_TeleportPawns_19.Out", "box_UseContextualActionModifier_v3_98.Use", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(4, params)
  l1:SetParentGraph(nil)
end
function export:f_box_UseContextualActionModifier_v3_101_Disabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_115()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|574824642", "574824642", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_101.Disabled", "box_UseContextualActionModifier_v3_115.Disable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
  l0:SetParentGraph(nil)
end
function export:f_box_HAL_SpawnNPC_OW_49_Out()
  local params, l0, l1
  params = self:OnEnter_box_HAL_SpawnNPC_OW_47()
  l0 = self.box_HAL_SpawnNPC_OW_49
  l1 = self.box_HAL_SpawnNPC_OW_47
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1361593276", "1361593276", "FC6_CentralPlayerBase", "box_HAL_SpawnNPC_OW_49.Out", "box_HAL_SpawnNPC_OW_47.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_UseContextualActionModifier_v3_314_Enabled()
  local l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  l0 = self.box_MultipleOR_315
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1973417679", "1973417679", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_314.Enabled", "box_MultipleOR_315.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_PreconditionListener_135_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_DisableLayers_139()
  l0 = self.box_PreconditionListener_135
  l1 = self.box_DisableLayers_139
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|731923617", "731923617", "FC6_CentralPlayerBase", "box_PreconditionListener_135.PreconditionMet", "box_DisableLayers_139.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_UseContextualActionModifier_v3_316_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_314()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1008411949", "1008411949", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_316.Enabled", "box_UseContextualActionModifier_v3_314.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_UseContextualActionModifier_v3_90_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_89()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|884539686", "884539686", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_90.Enabled", "box_UseContextualActionModifier_v3_89.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_PreconditionListener_14_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_17()
  l0 = self.box_PreconditionListener_14
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|856835755", "856835755", "FC6_CentralPlayerBase", "box_PreconditionListener_14.PreconditionMet", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Delay_v5_317_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_UseContextualActionModifier_v3_316()
  l0 = self.box_Delay_v5_317
  l1 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|276034632", "276034632", "FC6_CentralPlayerBase", "box_Delay_v5_317.TimeElapsed", "box_UseContextualActionModifier_v3_316.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(3, params)
  l1:SetParentGraph(nil)
end
function export:f_box_UseContextualActionModifier_v3_83_Enabled()
  local l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  l0 = self.box_MultipleOR_286
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1353572921", "1353572921", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_83.Enabled", "box_MultipleOR_286.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_EnableLayers_48_Out()
  local params, l0, l1
  params = self:OnEnter_box_HAL_SpawnNPC_OW_46()
  l0 = self.box_EnableLayers_48
  l1 = self.box_HAL_SpawnNPC_OW_46
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|810013519", "810013519", "FC6_CentralPlayerBase", "box_EnableLayers_48.Out", "box_HAL_SpawnNPC_OW_46.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_Delay_v5_293_TimeElapsed()
  local l0, l1
  l0 = self.box_Delay_v5_293
  l1 = self.box_MultipleOR_294
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2115639357", "2115639357", "FC6_CentralPlayerBase", "box_Delay_v5_293.TimeElapsed", "box_MultipleOR_294.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_EntityStatusListener_130_Loaded()
  local params, l0, l1
  params = self:OnEnter_box_EntityStatusListener_95()
  l0 = self.box_EntityStatusListener_130
  l1 = self.box_EntityStatusListener_95
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1089900389", "1089900389", "FC6_CentralPlayerBase", "box_EntityStatusListener_130.Loaded", "box_EntityStatusListener_95.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_UseContextualActionModifier_v3_207_Enabled()
  local l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  l0 = self.box_MultipleOR_283
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|227905653", "227905653", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_207.Enabled", "box_MultipleOR_283.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_DisableLayers_141_Out()
  local params, l0, l1
  params = self:OnEnter_box_EnableLayers_138()
  l0 = self.box_DisableLayers_141
  l1 = self.box_EnableLayers_138
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1412978612", "1412978612", "FC6_CentralPlayerBase", "box_DisableLayers_141.Out", "box_EnableLayers_138.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_EnableLayers_45_Out()
  local params, l0, l1
  params = self:OnEnter_box_HAL_SpawnNPC_OW_50()
  l0 = self.box_EnableLayers_45
  l1 = self.box_HAL_SpawnNPC_OW_50
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|246497739", "246497739", "FC6_CentralPlayerBase", "box_EnableLayers_45.Out", "box_HAL_SpawnNPC_OW_50.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_UseContextualActionModifier_v3_210_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_225()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2022613646", "2022613646", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_210.Enabled", "box_UseContextualActionModifier_v3_225.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_HAL_SpawnNPC_OW_50_Out()
  local params, l0, l1
  params = self:OnEnter_box_HAL_SpawnNPC_OW_49()
  l0 = self.box_HAL_SpawnNPC_OW_50
  l1 = self.box_HAL_SpawnNPC_OW_49
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|176428974", "176428974", "FC6_CentralPlayerBase", "box_HAL_SpawnNPC_OW_50.Out", "box_HAL_SpawnNPC_OW_49.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_PreconditionListener_9_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_16()
  l0 = self.box_PreconditionListener_9
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|152311693", "152311693", "FC6_CentralPlayerBase", "box_PreconditionListener_9.PreconditionMet", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_ActivityInitialized_5_Out()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_7()
  l0 = self.box_ActivityInitialized_5
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|117032438", "117032438", "FC6_CentralPlayerBase", "box_ActivityInitialized_5.Out", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Compare_Boolean_150_A_is_True()
  local l0
  l0 = Boxes["15564734308847053112"]
  local clone = l0
  l0 = self.box_OnceOnly_v3_153
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1422457699", "1422457699", "FC6_CentralPlayerBase", "box_Compare_Boolean_150.A_is_True", "box_OnceOnly_v3_153.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_MultipleOR_291_Out()
  local params, l0, l1
  params = self:OnEnter_box_RandomInteger_v2_82()
  l0 = self.box_MultipleOR_291
  l1 = Boxes["10418913611391624750"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|557306183", "557306183", "FC6_CentralPlayerBase", "box_MultipleOR_291.Out", "box_RandomInteger_v2_82.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_300_Out()
  local params, l0, l1
  params = self:OnEnter_box_RandomInteger_v2_164()
  l0 = self.box_MultipleOR_300
  l1 = Boxes["10418913611391624750"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|295679015", "295679015", "FC6_CentralPlayerBase", "box_MultipleOR_300.Out", "box_RandomInteger_v2_164.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_163_A_eq_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_233()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2127265454", "2127265454", "FC6_CentralPlayerBase", "box_Compare_Integers_163.A_eq_B", "box_UseContextualActionModifier_v3_233.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_UseContextualActionModifier_v3_100_Disabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_TeleportPawns_19()
  l0 = self.box_TeleportPawns_19
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1361778536", "1361778536", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_100.Disabled", "box_TeleportPawns_19.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_UseContextualActionModifier_v3_212_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_214()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|793876984", "793876984", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_212.Enabled", "box_UseContextualActionModifier_v3_214.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Delay_v5_290_TimeElapsed()
  local l0, l1
  l0 = self.box_Delay_v5_290
  l1 = self.box_MultipleOR_291
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2001694187", "2001694187", "FC6_CentralPlayerBase", "box_Delay_v5_290.TimeElapsed", "box_MultipleOR_291.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_UseContextualActionModifier_v3_226_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_227()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|793224575", "793224575", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_226.Enabled", "box_UseContextualActionModifier_v3_227.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_MultipleOR_288_Out()
  local params, l0, l1
  params = self:OnEnter_box_RandomInteger_v2_85()
  l0 = self.box_MultipleOR_288
  l1 = Boxes["10418913611391624750"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1374323496", "1374323496", "FC6_CentralPlayerBase", "box_MultipleOR_288.Out", "box_RandomInteger_v2_85.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_GetVehicleOccupants_248_Out()
  local params, l0, l1
  params = self:OnEnter_box_TeleportToTargetPlusOffset_247()
  l0 = self.box_GetVehicleOccupants_248
  l1 = self.box_TeleportToTargetPlusOffset_247
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1029621471", "1029621471", "FC6_CentralPlayerBase", "box_GetVehicleOccupants_248.Out", "box_TeleportToTargetPlusOffset_247.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_EntityStatusListener_95_Loaded()
  local l0, l1
  l0 = self.box_EntityStatusListener_95
  l1 = self.box_MultipleOR_291
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|795979872", "795979872", "FC6_CentralPlayerBase", "box_EntityStatusListener_95.Loaded", "box_MultipleOR_291.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_IsEntityLoaded_v3_249_False()
  local params, l0
  l0 = Boxes["890432256735248856"]
  local clone = l0
  params = self:OnEnter_box_EntityStatusListener_102()
  l0 = self.box_EntityStatusListener_102
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|134247016", "134247016", "FC6_CentralPlayerBase", "box_IsEntityLoaded_v3_249.False", "box_EntityStatusListener_102.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_IsEntityLoaded_v3_249_True()
  local l0
  l0 = Boxes["890432256735248856"]
  local clone = l0
  l0 = self.box_MultipleOR_241
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1606143635", "1606143635", "FC6_CentralPlayerBase", "box_IsEntityLoaded_v3_249.True", "box_MultipleOR_241.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_UseContextualActionModifier_v3_116_Disabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_117()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1302895323", "1302895323", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_116.Disabled", "box_UseContextualActionModifier_v3_117.Disable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
  l0:SetParentGraph(nil)
end
function export:f_box_EntityStatusListener_84_Loaded()
  local params, l0, l1
  params = self:OnEnter_box_EntityStatusListener_86()
  l0 = self.box_EntityStatusListener_84
  l1 = self.box_EntityStatusListener_86
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1317164402", "1317164402", "FC6_CentralPlayerBase", "box_EntityStatusListener_84.Loaded", "box_EntityStatusListener_86.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_OutputOrder_v2_32_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_ResourceRewardListener_31()
  l0 = self.box_ResourceRewardListener_31
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|898682751", "898682751", "FC6_CentralPlayerBase", "box_OutputOrder_v2_32.Out", "box_ResourceRewardListener_31.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_32_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Print_v2_29()
  l0 = Boxes["8578475447439923801"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|608340299", "608340299", "FC6_CentralPlayerBase", "box_OutputOrder_v2_32.Out", "box_Print_v2_29.ToScreen", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_UseContextualActionModifier_v3_166_Enabled()
  local l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  l0 = self.box_MultipleOR_298
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|186890250", "186890250", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_166.Enabled", "box_MultipleOR_298.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 3)
end
function export:f_box_HAL_SpawnNPC_OW_52_Out()
  local params, l0, l1
  params = self:OnEnter_box_HAL_SpawnNPC_OW_70()
  l0 = self.box_HAL_SpawnNPC_OW_52
  l1 = self.box_HAL_SpawnNPC_OW_70
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1070679983", "1070679983", "FC6_CentralPlayerBase", "box_HAL_SpawnNPC_OW_52.Out", "box_HAL_SpawnNPC_OW_70.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_OutputOrder_v2_20_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_DisableLayers_180()
  l0 = self.box_DisableLayers_180
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|136740237", "136740237", "FC6_CentralPlayerBase", "box_OutputOrder_v2_20.Out", "box_DisableLayers_180.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_20_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_EntityStatusListener_84()
  l0 = self.box_EntityStatusListener_84
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|117986347", "117986347", "FC6_CentralPlayerBase", "box_OutputOrder_v2_20.Out", "box_EntityStatusListener_84.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_20_Out_2()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_324()
  l0 = self.box_PreconditionListener_324
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|342830225", "342830225", "FC6_CentralPlayerBase", "box_OutputOrder_v2_20.Out", "box_PreconditionListener_324.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_UseContextualActionModifier_v3_219_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_220()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1031853519", "1031853519", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_219.Enabled", "box_UseContextualActionModifier_v3_220.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_81_A_eq_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_212()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|383592160", "383592160", "FC6_CentralPlayerBase", "box_Compare_Integers_81.A_eq_B", "box_UseContextualActionModifier_v3_212.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_81_A_gt_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_RandomInteger_v2_224()
  l0 = Boxes["10418913611391624750"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|548145757", "548145757", "FC6_CentralPlayerBase", "box_Compare_Integers_81.A_gt_B", "box_RandomInteger_v2_224.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_81_A_lt_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_211()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|377613809", "377613809", "FC6_CentralPlayerBase", "box_Compare_Integers_81.A_lt_B", "box_UseContextualActionModifier_v3_211.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_MultipleOR_292_Out()
  local params, l0, l1
  params = self:OnEnter_box_Delay_v5_293()
  l0 = self.box_MultipleOR_292
  l1 = self.box_Delay_v5_293
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|341026066", "341026066", "FC6_CentralPlayerBase", "box_MultipleOR_292.Out", "box_Delay_v5_293.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_TeleportPawns_323_Out()
  local params, l0, l1
  params = self:OnEnter_box_UseContextualActionModifier_v3_321()
  l0 = self.box_TeleportPawns_323
  l1 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1811155485", "1811155485", "FC6_CentralPlayerBase", "box_TeleportPawns_323.Out", "box_UseContextualActionModifier_v3_321.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(3, params)
  l1:SetParentGraph(nil)
end
function export:f_box_DisableLayers_42_Out()
  local params, l0, l1
  params = self:OnEnter_box_EnableLayers_48()
  l0 = self.box_DisableLayers_42
  l1 = self.box_EnableLayers_48
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|481651155", "481651155", "FC6_CentralPlayerBase", "box_DisableLayers_42.Out", "box_EnableLayers_48.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_RandomInteger_v2_164_Out()
  local params, l0
  self:OnExit_box_RandomInteger_v2_164_Out()
  l0 = Boxes["10418913611391624750"]
  local clone = l0
  params = self:OnEnter_box_OutputOrder_v2_231()
  l0 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1851936844", "1851936844", "FC6_CentralPlayerBase", "box_RandomInteger_v2_164.Out", "box_OutputOrder_v2_231.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_3_Out_0()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_ActivityAcknowledgeGate_v2_4
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|969869904", "969869904", "FC6_CentralPlayerBase", "box_OutputOrder_v2_3.Out", "box_ActivityAcknowledgeGate_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, {})
end
function export:f_box_OutputOrder_v2_3_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Print_v2_6()
  l0 = Boxes["8578475447439923801"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2055222636", "2055222636", "FC6_CentralPlayerBase", "box_OutputOrder_v2_3.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_17_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_DisableLayers_26()
  l0 = self.box_DisableLayers_26
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|844274612", "844274612", "FC6_CentralPlayerBase", "box_OutputOrder_v2_17.Out", "box_DisableLayers_26.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_17_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_EntityStatusListener_78()
  l0 = self.box_EntityStatusListener_78
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1371051123", "1371051123", "FC6_CentralPlayerBase", "box_OutputOrder_v2_17.Out", "box_EntityStatusListener_78.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_17_Out_2()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_MultipleOR_315
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2043512211", "2043512211", "FC6_CentralPlayerBase", "box_OutputOrder_v2_17.Out", "box_MultipleOR_315.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_UseContextualActionModifier_v3_233_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_228()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1548697056", "1548697056", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_233.Enabled", "box_UseContextualActionModifier_v3_228.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_EntityStatusListener_99_Loaded()
  local params, l0, l1
  params = self:OnEnter_box_UseContextualActionModifier_v3_100()
  l0 = self.box_EntityStatusListener_99
  l1 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2144609771", "2144609771", "FC6_CentralPlayerBase", "box_EntityStatusListener_99.Loaded", "box_UseContextualActionModifier_v3_100.Disable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
  l1:SetParentGraph(nil)
end
function export:f_box_HAL_SpawnNPC_OW_12_Out()
  local params, l0, l1
  params = self:OnEnter_box_HAL_SpawnNPC_OW_56()
  l0 = self.box_HAL_SpawnNPC_OW_12
  l1 = self.box_HAL_SpawnNPC_OW_56
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|984439722", "984439722", "FC6_CentralPlayerBase", "box_HAL_SpawnNPC_OW_12.Out", "box_HAL_SpawnNPC_OW_56.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_OutputOrder_v2_23_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_DisableLayers_37()
  l0 = self.box_DisableLayers_37
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|800881819", "800881819", "FC6_CentralPlayerBase", "box_OutputOrder_v2_23.Out", "box_DisableLayers_37.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_23_Out_2()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_MultipleOR_294
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1296685933", "1296685933", "FC6_CentralPlayerBase", "box_OutputOrder_v2_23.Out", "box_MultipleOR_294.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_OutputOrder_v2_23_Out_3()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_RadioModifier_v3_124()
  l0 = Boxes["11023266040765184046"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|622430392", "622430392", "FC6_CentralPlayerBase", "box_OutputOrder_v2_23.Out", "box_RadioModifier_v3_124.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_UseContextualActionModifier_v3_232_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_230()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1466237504", "1466237504", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_232.Enabled", "box_UseContextualActionModifier_v3_230.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_UseContextualActionModifier_v3_88_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_83()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|833991668", "833991668", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_88.Enabled", "box_UseContextualActionModifier_v3_83.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_DisableLayers_142_Out()
  local params, l0, l1
  params = self:OnEnter_box_EnableLayers_143()
  l0 = self.box_DisableLayers_142
  l1 = self.box_EnableLayers_143
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1571352108", "1571352108", "FC6_CentralPlayerBase", "box_DisableLayers_142.Out", "box_EnableLayers_143.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_StatisticModifier_107_Set()
  local l0
  l0 = Boxes["15478190047253350759"]
  local clone = l0
  l0 = self.box_MultipleOR_59
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|957841548", "957841548", "FC6_CentralPlayerBase", "box_StatisticModifier_107.Set", "box_MultipleOR_59.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_PreconditionListener_11_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_23()
  l0 = self.box_PreconditionListener_11
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1636857773", "1636857773", "FC6_CentralPlayerBase", "box_PreconditionListener_11.PreconditionMet", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_UseContextualActionModifier_v3_235_Enabled()
  local l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  l0 = self.box_MultipleOR_298
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|865958076", "865958076", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_235.Enabled", "box_MultipleOR_298.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 2)
end
function export:f_box_Simple_Node_1_Out()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  local clone = l0
  params = self:OnEnter_box_GetMissionLayerState_v2_21()
  l0 = Boxes["1567066895893317808"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|223896173", "223896173", "FC6_CentralPlayerBase", "box_Simple_Node_1.Out", "box_GetMissionLayerState_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_UseContextualActionModifier_v3_110_Disabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_OutputOrder_v2_113()
  l0 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1630683140", "1630683140", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_110.Disabled", "box_OutputOrder_v2_113.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_EntityStatusListener_73_Loaded()
  local params, l0, l1
  params = self:OnEnter_box_EntityStatusListener_74()
  l0 = self.box_EntityStatusListener_73
  l1 = self.box_EntityStatusListener_74
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1551245204", "1551245204", "FC6_CentralPlayerBase", "box_EntityStatusListener_73.Loaded", "box_EntityStatusListener_74.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_ResourceRewardListener_31_ResourceDestroyedAwarded()
  self:OnExit_box_ResourceRewardListener_31_ResourceDestroyedAwarded()
end
function export:f_box_ResourceRewardListener_31_ResourceInteractAwarded()
  self:OnExit_box_ResourceRewardListener_31_ResourceInteractAwarded()
end
function export:f_box_ResourceRewardListener_31_ResourceSafeReturnRewarded()
  local params, l0, l1
  self:OnExit_box_ResourceRewardListener_31_ResourceSafeReturnRewarded()
  params = self:OnEnter_box_Print_v2_33()
  l0 = self.box_ResourceRewardListener_31
  l1 = Boxes["8578475447439923801"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1901381613", "1901381613", "FC6_CentralPlayerBase", "box_ResourceRewardListener_31.ResourceSafeReturnRewarded", "box_Print_v2_33.ToScreen", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(3, params)
  l1:SetParentGraph(nil)
end
function export:f_box_UseContextualActionModifier_v3_218_Enabled()
  local l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  l0 = self.box_MultipleOR_292
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1517998485", "1517998485", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_218.Enabled", "box_MultipleOR_292.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_EntityStatusListener_156_Loaded()
  local params, l0, l1
  params = self:OnEnter_box_PlayerBaseListener_154()
  l0 = self.box_EntityStatusListener_156
  l1 = self.box_PlayerBaseListener_154
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|577742112", "577742112", "FC6_CentralPlayerBase", "box_EntityStatusListener_156.Loaded", "box_PlayerBaseListener_154.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_GetPlayerGroup_v2_64_Out()
  self:OnExit_box_GetPlayerGroup_v2_64_Out()
end
function export:f_box_MultipleOR_283_Out()
  local params, l0, l1
  params = self:OnEnter_box_Delay_v5_284()
  l0 = self.box_MultipleOR_283
  l1 = self.box_Delay_v5_284
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1302621673", "1302621673", "FC6_CentralPlayerBase", "box_MultipleOR_283.Out", "box_Delay_v5_284.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_UseContextualActionModifier_v3_228_Enabled()
  local l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  l0 = self.box_MultipleOR_298
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|781420794", "781420794", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_228.Enabled", "box_MultipleOR_298.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_StatisticModifier_251_Set()
  local params, l0
  l0 = Boxes["15478190047253350759"]
  local clone = l0
  params = self:OnEnter_box_StatisticIncrement_v2_282()
  l0 = Boxes["13314307389301634622"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|196576204", "196576204", "FC6_CentralPlayerBase", "box_StatisticModifier_251.Set", "box_StatisticIncrement_v2_282.Increment", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_MultipleOR_241_Out()
  local params, l0, l1
  params = self:OnEnter_box_SetEntity_v2_238()
  l0 = self.box_MultipleOR_241
  l1 = Boxes["4263227414284540380"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1997978475", "1997978475", "FC6_CentralPlayerBase", "box_MultipleOR_241.Out", "box_SetEntity_v2_238.FromEntity", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_DisableLayers_44_Out()
  local params, l0, l1
  params = self:OnEnter_box_EnableLayers_45()
  l0 = self.box_DisableLayers_44
  l1 = self.box_EnableLayers_45
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2139470957", "2139470957", "FC6_CentralPlayerBase", "box_DisableLayers_44.Out", "box_EnableLayers_45.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_UseContextualActionModifier_v3_152_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_151()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1045213584", "1045213584", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_152.Enabled", "box_UseContextualActionModifier_v3_151.Disable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Compare_Integers_87_A_le_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_88()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|523167407", "523167407", "FC6_CentralPlayerBase", "box_Compare_Integers_87.A_le_B", "box_UseContextualActionModifier_v3_88.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_SpawnAI_239_Spawned()
  local params, l0, l1
  params = self:OnEnter_box_EntityStatusListener_332()
  l0 = self.box_SpawnAI_239
  l1 = self.box_EntityStatusListener_332
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1544059861", "1544059861", "FC6_CentralPlayerBase", "box_SpawnAI_239.Spawned", "box_EntityStatusListener_332.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_PlayerBaseModifier_328_UnlockedBase()
  local params, l0
  l0 = Boxes["8603181527020415275"]
  local clone = l0
  params = self:OnEnter_box_Delay_v5_307()
  l0 = self.box_Delay_v5_307
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1933592972", "1933592972", "FC6_CentralPlayerBase", "box_PlayerBaseModifier_328.UnlockedBase", "box_Delay_v5_307.Start", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
end
function export:f_box_RandomInteger_v2_85_Out()
  local params, l0
  self:OnExit_box_RandomInteger_v2_85_Out()
  l0 = Boxes["10418913611391624750"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_87()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1091646400", "1091646400", "FC6_CentralPlayerBase", "box_RandomInteger_v2_85.Out", "box_Compare_Integers_87.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_UniversalInteractionListener_96_Interacted()
  local params, l0, l1
  params = self:OnEnter_box_StatisticModifier_251()
  l0 = self.box_UniversalInteractionListener_96
  l1 = Boxes["15478190047253350759"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1870797195", "1870797195", "FC6_CentralPlayerBase", "box_UniversalInteractionListener_96.Interacted", "box_StatisticModifier_251.SetDirect", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
  l1:SetParentGraph(nil)
end
function export:f_box_EntityStatusListener_242_Loaded()
  local params, l0, l1
  params = self:OnEnter_box_UseContextualActionModifier_v3_97()
  l0 = self.box_EntityStatusListener_242
  l1 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|90415180", "90415180", "FC6_CentralPlayerBase", "box_EntityStatusListener_242.Loaded", "box_UseContextualActionModifier_v3_97.Disable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
  l1:SetParentGraph(nil)
end
function export:f_box_UseContextualActionModifier_v3_321_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_322()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|150948247", "150948247", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_321.Enabled", "box_UseContextualActionModifier_v3_322.Use", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(4, params)
  l0:SetParentGraph(nil)
end
function export:f_box_MultipleOR_294_Out()
  local params, l0, l1
  params = self:OnEnter_box_RandomInteger_v2_216()
  l0 = self.box_MultipleOR_294
  l1 = Boxes["10418913611391624750"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2127755352", "2127755352", "FC6_CentralPlayerBase", "box_MultipleOR_294.Out", "box_RandomInteger_v2_216.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Delay_v5_119_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_SetContextualStrategy_121()
  l0 = self.box_Delay_v5_119
  l1 = Boxes["1955818201757552246"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1827413847", "1827413847", "FC6_CentralPlayerBase", "box_Delay_v5_119.TimeElapsed", "box_SetContextualStrategy_121.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_UseContextualActionModifier_v3_103_Disabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_TeleportPawns_323()
  l0 = self.box_TeleportPawns_323
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|850459106", "850459106", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_103.Disabled", "box_TeleportPawns_323.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_EnableLayers_178_Out()
  local params, l0, l1
  params = self:OnEnter_box_HAL_SpawnNPC_OW_112()
  l0 = self.box_EnableLayers_178
  l1 = self.box_HAL_SpawnNPC_OW_112
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1987477271", "1987477271", "FC6_CentralPlayerBase", "box_EnableLayers_178.Out", "box_HAL_SpawnNPC_OW_112.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_MultipleOR_286_Out()
  local params, l0, l1
  params = self:OnEnter_box_Delay_v5_287()
  l0 = self.box_MultipleOR_286
  l1 = self.box_Delay_v5_287
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|906927220", "906927220", "FC6_CentralPlayerBase", "box_MultipleOR_286.Out", "box_Delay_v5_287.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_UseContextualActionModifier_v3_211_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_213()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1779704172", "1779704172", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_211.Enabled", "box_UseContextualActionModifier_v3_213.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_RandomInteger_v2_76_Out()
  local params, l0
  self:OnExit_box_RandomInteger_v2_76_Out()
  l0 = Boxes["10418913611391624750"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_75()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1359415011", "1359415011", "FC6_CentralPlayerBase", "box_RandomInteger_v2_76.Out", "box_Compare_Integers_75.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_MultipleOR_298_Out()
  local params, l0, l1
  params = self:OnEnter_box_Delay_v5_299()
  l0 = self.box_MultipleOR_298
  l1 = self.box_Delay_v5_299
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1315090012", "1315090012", "FC6_CentralPlayerBase", "box_MultipleOR_298.Out", "box_Delay_v5_299.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_HAL_SpawnNPC_OW_70_Out()
  local params, l0, l1
  params = self:OnEnter_box_HAL_SpawnNPC_OW_69()
  l0 = self.box_HAL_SpawnNPC_OW_70
  l1 = self.box_HAL_SpawnNPC_OW_69
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1393856255", "1393856255", "FC6_CentralPlayerBase", "box_HAL_SpawnNPC_OW_70.Out", "box_HAL_SpawnNPC_OW_69.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_ProximityTrigger_v3_244_Enabled()
  self:OnExit_box_ProximityTrigger_v3_244_Enabled()
end
function export:f_box_ProximityTrigger_v3_244_Enter()
  local params, l0, l1
  self:OnExit_box_ProximityTrigger_v3_244_Enter()
  params = self:OnEnter_box_Delay_v5_246()
  l0 = self.box_ProximityTrigger_v3_244
  l1 = self.box_Delay_v5_246
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1004768532", "1004768532", "FC6_CentralPlayerBase", "box_ProximityTrigger_v3_244.Enter", "box_Delay_v5_246.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_ProximityTrigger_v3_244_Leave()
  self:OnExit_box_ProximityTrigger_v3_244_Leave()
end
function export:f_box_ProximityTrigger_v3_244_OnEmpty()
  self:OnExit_box_ProximityTrigger_v3_244_OnEmpty()
end
function export:f_box_ProximityTrigger_v3_244_OnOccupied()
  self:OnExit_box_ProximityTrigger_v3_244_OnOccupied()
end
function export:f_box_ProximityTrigger_v3_244_Use()
  self:OnExit_box_ProximityTrigger_v3_244_Use()
end
function export:f_box_UseContextualActionModifier_v3_79_Enabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_UseContextualActionModifier_v3_80()
  l0 = Boxes["14298756858110064819"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2089627714", "2089627714", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_79.Enabled", "box_UseContextualActionModifier_v3_80.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_UseContextualActionModifier_v3_157_Enabled()
  local l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  l0 = self.box_MultipleOR_295
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1152819730", "1152819730", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_157.Enabled", "box_MultipleOR_295.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 2)
end
function export:f_box_UseContextualActionModifier_v3_97_Disabled()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  params = self:OnEnter_box_FlushConversation_126()
  l0 = self.box_FlushConversation_126
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|32411775", "32411775", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_97.Disabled", "box_FlushConversation_126.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_UseContextualActionModifier_v3_89_Enabled()
  local l0
  l0 = Boxes["14298756858110064819"]
  local clone = l0
  l0 = self.box_MultipleOR_289
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|641087174", "641087174", "FC6_CentralPlayerBase", "box_UseContextualActionModifier_v3_89.Enabled", "box_MultipleOR_289.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 3)
end
function export:f_box_EnableLayers_43_Out()
  local params, l0, l1
  params = self:OnEnter_box_HAL_SpawnNPC_OW_54()
  l0 = self.box_EnableLayers_43
  l1 = self.box_HAL_SpawnNPC_OW_54
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|364907706", "364907706", "FC6_CentralPlayerBase", "box_EnableLayers_43.Out", "box_HAL_SpawnNPC_OW_54.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_OutputOrder_v2_134_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_133()
  l0 = self.box_PreconditionListener_133
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1380382043", "1380382043", "FC6_CentralPlayerBase", "box_OutputOrder_v2_134.Out", "box_PreconditionListener_133.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_134_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_135()
  l0 = self.box_PreconditionListener_135
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1151523794", "1151523794", "FC6_CentralPlayerBase", "box_OutputOrder_v2_134.Out", "box_PreconditionListener_135.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_134_Out_2()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_136()
  l0 = self.box_PreconditionListener_136
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2013343711", "2013343711", "FC6_CentralPlayerBase", "box_OutputOrder_v2_134.Out", "box_PreconditionListener_136.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_134_Out_3()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PreconditionListener_137()
  l0 = self.box_PreconditionListener_137
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|659895835", "659895835", "FC6_CentralPlayerBase", "box_OutputOrder_v2_134.Out", "box_PreconditionListener_137.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_MultipleOR_289_Out()
  local params, l0, l1
  params = self:OnEnter_box_Delay_v5_290()
  l0 = self.box_MultipleOR_289
  l1 = self.box_Delay_v5_290
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1623559609", "1623559609", "FC6_CentralPlayerBase", "box_MultipleOR_289.Out", "box_Delay_v5_290.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_EntityStatusListener_332_Loaded()
  local l0, l1
  l0 = self.box_EntityStatusListener_332
  l1 = self.box_MultipleOR_241
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|834561372", "834561372", "FC6_CentralPlayerBase", "box_EntityStatusListener_332.Loaded", "box_MultipleOR_241.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:OnEnter_box_Simple_Node_330()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_330")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|@BaseUnlock")
  l0:SetConnections({
    [0] = self.f_box_Simple_Node_330_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_Simple_Node_25()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_25")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|@Crowd life spawning")
  l0:SetConnections({
    [0] = self.f_box_Simple_Node_25_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_Simple_Node_155()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_155")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|@Enable_Disable Foreman QCAs")
  l0:SetConnections({
    [0] = self.f_box_Simple_Node_155_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_Simple_Node_148()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_148")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|@Enabling and Disabling Clara Laptops with Binks")
  l0:SetConnections({
    [0] = self.f_box_Simple_Node_148_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_Simple_Node_169()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_169")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|@Incrementation of ASLT_Level_PlayerBarracks")
  l0:SetConnections({
    [0] = self.f_box_Simple_Node_169_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_Simple_Node_104()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_104")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|@LolaManager")
  l0:SetConnections({
    [0] = self.f_box_Simple_Node_104_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_EntityStatusListener_86()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2119908835299724405"
  }
  return params
end
function export:OnEnter_box_Compare_Integers_237()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_237")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|18534545")
  l0:SetConnections({
    [0] = self.f_box_Compare_Integers_237_A_eq_B
  })
  params = {
    [0] = self._sld_Result_box_RandomInteger_v2_164,
    [1] = 4
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_22()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_22")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|20836528")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [1] = 8
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [1] = {
      connections = {
        [0] = self.f_box_OutputOrder_v2_22_Out_0,
        [1] = self.f_box_OutputOrder_v2_22_Out_1,
        [2] = self.f_box_OutputOrder_v2_22_Out_2,
        [3] = self.f_box_OutputOrder_v2_22_Out_3,
        [4] = self.f_box_OutputOrder_v2_22_Out_4,
        [5] = self.f_box_OutputOrder_v2_22_Out_5
      },
      count = 8
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_OutputOrder_v2_243()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_243")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|36970214")
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
        [0] = self.f_box_OutputOrder_v2_243_Out_0,
        [1] = self.f_box_OutputOrder_v2_243_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_RandomInteger_v2_222()
  local params, l0
  l0 = Boxes["10418913611391624750"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RandomInteger_v2_222")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|58153417")
  l0:SetConnections({
    [0] = self.f_box_RandomInteger_v2_222_Out
  })
  params = {
    [0] = 2,
    [1] = 1
  }
  return params
end
function export:OnEnter_box_RandomInteger_v2_82()
  local params, l0
  l0 = Boxes["10418913611391624750"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RandomInteger_v2_82")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|64596887")
  l0:SetConnections({
    [0] = self.f_box_RandomInteger_v2_82_Out
  })
  params = {
    [0] = 4,
    [1] = 1
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_18()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_18")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|70657154")
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
        [0] = self.f_box_OutputOrder_v2_18_Out_0,
        [1] = self.f_box_OutputOrder_v2_18_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_215()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_215")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|75648883")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_215_Enabled
  })
  params = {
    [0] = "2120350249135397864"
  }
  return params
end
function export:OnEnter_box_FlushConversation_126()
  local params
  params = {
    [0] = self.eLola
  }
  return params
end
function export:OnEnter_box_PreconditionListener_136()
  local params
  params = {
    [0] = true,
    [1] = "9015409974660386",
    [2] = true
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_72()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_72")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|145453448")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_72_Enabled
  })
  params = {
    [0] = "2117430430215977464"
  }
  return params
end
function export:OnEnter_box_HAL_SpawnNPC_OW_56()
  local params
  params = {
    [0] = "2118274088620277994",
    [1] = "2118291127902693103",
    [2] = "2119947248025492749"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_322()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_322")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|146362727")
  l0:SetConnections({})
  params = {
    [0] = "2122660236813690818",
    [2] = "2111419493279353503"
  }
  return params
end
function export:OnEnter_box_RandomInteger_v2_216()
  local params, l0
  l0 = Boxes["10418913611391624750"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RandomInteger_v2_216")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|153329401")
  l0:SetConnections({
    [0] = self.f_box_RandomInteger_v2_216_Out
  })
  params = {
    [0] = 2,
    [1] = 1
  }
  return params
end
function export:OnEnter_box_TeleportPawns_108()
  local params
  params = {
    [0] = "-1",
    [1] = "2121468407177025123",
    [2] = false,
    [4] = "2111419493279353503",
    [5] = false
  }
  return params
end
function export:OnEnter_box_PreconditionListener_109()
  local params
  params = {
    [0] = true,
    [1] = "9015409974731319",
    [2] = true
  }
  return params
end
function export:OnEnter_box_RandomInteger_v2_224()
  local params, l0
  l0 = Boxes["10418913611391624750"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RandomInteger_v2_224")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|167981353")
  l0:SetConnections({
    [0] = self.f_box_RandomInteger_v2_224_Out
  })
  params = {
    [0] = 4,
    [1] = 3
  }
  return params
end
function export:OnEnter_box_Delay_v5_296()
  local params
  params = {
    [0] = false,
    [2] = 120
  }
  return params
end
function export:OnEnter_box_EnableLayers_179()
  local params
  params = {
    [0] = "27160443124734446",
    [5] = "54181967740284437"
  }
  return params
end
function export:OnEnter_box_Compare_Integers_223()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_223")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|205852427")
  l0:SetConnections({
    [0] = self.f_box_Compare_Integers_223_A_eq_B,
    [4] = self.f_box_Compare_Integers_223_A_lt_B
  })
  params = {
    [0] = self._sld_Result_box_RandomInteger_v2_224,
    [1] = 4
  }
  return params
end
function export:OnEnter_box_Compare_Integers_149()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_149")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|223863745")
  l0:SetConnections({
    [0] = self.f_box_Compare_Integers_149_A_eq_B
  })
  params = {
    [0] = self.SocketLvl,
    [1] = 1
  }
  return params
end
function export:OnEnter_box_Compare_Integers_275()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_275")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|224205865")
  l0:SetConnections({
    [0] = self.f_box_Compare_Integers_275_A_eq_B,
    [2] = self.f_box_Compare_Integers_275_A_gt_B
  })
  params = {
    [0] = self._sld_value_box_GetStatistic_326,
    [1] = 0
  }
  return params
end
function export:OnEnter_box_SetEntity_v2_238()
  local params, l0
  l0 = Boxes["4263227414284540380"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetEntity_v2_238")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|228112987")
  l0:SetConnections({
    [0] = self.f_box_SetEntity_v2_238_Out
  })
  params = {
    [0] = "2114143343656056076"
  }
  return params
end
function export:OnEnter_box_HAL_SpawnNPC_OW_55()
  local params
  params = {
    [0] = "2114529281498418995",
    [1] = "2119947307423129637"
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_162()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2119911541980565095"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_117()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_117")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|291157135")
  l0:SetConnections({
    [0] = self.f_box_UseContextualActionModifier_v3_117_Disabled
  })
  params = {
    [0] = "2120253593146643170"
  }
  return params
end
function export:OnEnter_box_Delay_v5_299()
  local params
  params = {
    [0] = false,
    [2] = 120
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_161()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2119911541972176475"
  }
  return params
end
function export:OnEnter_box_HAL_SpawnNPC_OW_41()
  local params
  params = {
    [0] = "2114529281498418995",
    [1] = "2119947307423129637"
  }
  return params
end
function export:OnEnter_box_Delay_v5_287()
  local params
  params = {
    [0] = false,
    [2] = 120
  }
  return params
end
function export:OnEnter_box_StatisticIncrement_v2_282()
  local params, l0
  l0 = Boxes["13314307389301634622"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_StatisticIncrement_v2_282")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|326121124")
  l0:SetConnections({
    [0] = self.f_box_StatisticIncrement_v2_282_Incremented
  })
  l0 = self.box_UniversalInteractionListener_96
  params = {
    [0] = 1,
    [1] = "World_LolaInteractedTwice",
    [2] = l0:GetDataOutValue(0)
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_7()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_7")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|339254518")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [1] = 15
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [1] = {
      connections = {
        [0] = self.f_box_OutputOrder_v2_7_Out_0,
        [1] = self.f_box_OutputOrder_v2_7_Out_1,
        [2] = self.f_box_OutputOrder_v2_7_Out_2,
        [3] = self.f_box_OutputOrder_v2_7_Out_3,
        [4] = self.f_box_OutputOrder_v2_7_Out_4,
        [6] = self.f_box_OutputOrder_v2_7_Out_6,
        [7] = self.f_box_OutputOrder_v2_7_Out_7,
        [8] = self.f_box_OutputOrder_v2_7_Out_8,
        [9] = self.f_box_OutputOrder_v2_7_Out_9,
        [10] = self.f_box_OutputOrder_v2_7_Out_10,
        [11] = self.f_box_OutputOrder_v2_7_Out_11,
        [12] = self.f_box_OutputOrder_v2_7_Out_12,
        [14] = self.f_box_OutputOrder_v2_7_Out_14
      },
      count = 15
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_GetStatistic_327()
  local params, l0
  DrawTextToScreen("Comment: Check if this is the 1st Camp Discovered", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GetStatistic')-- Comment: Check if this is the 1st Camp Discovered")
  l0 = Boxes["14544726443001098387"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetStatistic_327")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|339957145")
  l0:SetConnections({
    [0] = self.f_box_GetStatistic_327_ValueGot
  })
  params = {
    [0] = "PlayerBase_NotFirst_Unlocked"
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_131()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2117418580940164403"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_236()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_236")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|390000886")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_236_Enabled
  })
  params = {
    [0] = "2120389756289309516"
  }
  return params
end
function export:OnEnter_box_Print_v2_29()
  local params, l0
  l0 = Boxes["8578475447439923801"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Print_v2_29")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|403196927")
  l0:SetConnections({})
  params = {
    [1] = "white",
    [3] = 5,
    [7] = "C:\\Print.log",
    [8] = "Vehicle Entered",
    [9] = true
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_158()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_158")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|415681430")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_158_Enabled
  })
  params = {
    [0] = "2119921468593710327"
  }
  return params
end
function export:OnEnter_box_Delay_v5_246()
  local params
  params = {
    [0] = false,
    [2] = 3
  }
  return params
end
function export:OnEnter_box_Delay_v5_8()
  local params
  DrawTextToScreen("Comment: delay for first base unlock 10s", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Delay_v5')-- Comment: delay for first base unlock 10s")
  params = {
    [0] = false,
    [2] = 12
  }
  return params
end
function export:OnEnter_box_RequestPhoneConversation_304()
  local params
  DrawTextToScreen("Comment: REQUEST CLARA_UPDATE_MIS0170_COMPLETE_A_EXPLORE_CAMP CALL", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneConversation')-- Comment: REQUEST CLARA_UPDATE_MIS0170_COMPLETE_A_EXPLORE_CAMP CALL")
  params = {
    [0] = "9015334530271821",
    [2] = "9015522154061006",
    [3] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_122()
  local params
  params = {
    [0] = true,
    [1] = "9015409974731319",
    [2] = true
  }
  return params
end
function export:OnEnter_box_Compare_Integers_217()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_217")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|501964555")
  l0:SetConnections({
    [1] = self.f_box_Compare_Integers_217_A_ge_B,
    [4] = self.f_box_Compare_Integers_217_A_lt_B
  })
  params = {
    [0] = self._sld_Result_box_RandomInteger_v2_216,
    [1] = 2
  }
  return params
end
function export:OnEnter_box_RadioModifier_v3_124()
  local params, l0
  l0 = Boxes["11023266040765184046"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RadioModifier_v3_124")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|505059290")
  l0:SetConnections({
    [0] = self.f_box_RadioModifier_v3_124_Out
  })
  params = {
    [0] = false,
    [1] = true,
    [2] = false,
    [3] = false,
    [5] = "2116369944066139948"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_230()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_230")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|529374395")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_230_Enabled
  })
  params = {
    [0] = "2120389629996718802"
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_91()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2119921422605264109"
  }
  return params
end
function export:OnEnter_box_Delay_v5_284()
  local params
  params = {
    [0] = false,
    [2] = 120
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_13()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_13")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|590001146")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [1] = 5
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [1] = {
      connections = {
        [0] = self.f_box_OutputOrder_v2_13_Out_0,
        [1] = self.f_box_OutputOrder_v2_13_Out_1,
        [2] = self.f_box_OutputOrder_v2_13_Out_2
      },
      count = 5
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_EnableLayers_27()
  local params
  params = {
    [0] = "27160443411467423",
    [1] = "36167651929504014",
    [5] = "54181967740284437"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_15()
  local params
  params = {
    [0] = true,
    [1] = "9015528627259865",
    [2] = true
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_102()
  local params
  params = {
    [0] = false,
    [1] = true,
    [2] = "2114143336628499676"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_213()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_213")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|635413265")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_213_Enabled
  })
  params = {
    [0] = "2120348802685623034"
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_74()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2117430454645701130"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_16()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_16")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|674370315")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [1] = 5
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [1] = {
      connections = {
        [0] = self.f_box_OutputOrder_v2_16_Out_0,
        [1] = self.f_box_OutputOrder_v2_16_Out_1,
        [2] = self.f_box_OutputOrder_v2_16_Out_2
      },
      count = 5
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_Compare_Integers_305()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_305")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|677501632")
  l0:SetConnections({
    [0] = self.f_box_Compare_Integers_305_A_eq_B,
    [5] = self.f_box_Compare_Integers_305_A_ne_B
  })
  params = {
    [0] = self._sld_value_box_GetStatistic_327,
    [1] = 0
  }
  return params
end
function export:OnEnter_box_HAL_SpawnNPC_OW_53()
  local params
  params = {
    [0] = "2118274088620277994",
    [1] = "2118291127902693103",
    [2] = "2119947248025492749"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_80()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_80")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|683561834")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_80_Enabled
  })
  params = {
    [0] = "2117589409946693078"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_160()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_160")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|704330945")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_160_Enabled
  })
  params = {
    [0] = "2117418580940164403"
  }
  return params
end
function export:OnEnter_box_HAL_SpawnNPC_OW_51()
  local params
  params = {
    [0] = "2114530612642592429",
    [1] = "2120389818903976844"
  }
  return params
end
function export:OnEnter_box_Print_v2_6()
  local params, l0
  l0 = Boxes["8578475447439923801"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Print_v2_6")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|723826903")
  l0:SetConnections({})
  params = {
    [1] = "green",
    [3] = 10,
    [7] = "C:\\Print.log",
    [8] = "FC6_CentralPlayerBase script is running.",
    [9] = true
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_225()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_225")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|741469579")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_225_Enabled
  })
  params = {
    [0] = "2120350971839143139"
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_320()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2111419493279353503"
  }
  return params
end
function export:OnEnter_box_RandomInteger_v2_94()
  local params, l0
  l0 = Boxes["10418913611391624750"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RandomInteger_v2_94")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|756595166")
  l0:SetConnections({
    [0] = self.f_box_RandomInteger_v2_94_Out
  })
  params = {
    [0] = 3,
    [1] = 1
  }
  return params
end
function export:OnEnter_box_PlayerBaseModifier_301()
  local params, l0
  DrawTextToScreen("Comment: unlock cpb after stat check", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayerBaseModifier')-- Comment: unlock cpb after stat check")
  l0 = Boxes["8603181527020415275"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PlayerBaseModifier_301")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|757744304")
  l0:SetConnections({})
  params = {
    [0] = "Central"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_231()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_231")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|761726451")
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
        [0] = self.f_box_OutputOrder_v2_231_Out_0,
        [1] = self.f_box_OutputOrder_v2_231_Out_1,
        [2] = self.f_box_OutputOrder_v2_231_Out_2,
        [3] = self.f_box_OutputOrder_v2_231_Out_3
      },
      count = 4
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_71()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_71")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|792875909")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_71_Enabled
  })
  params = {
    [0] = "2117430454645701130"
  }
  return params
end
function export:OnEnter_box_DisableLayers_26()
  local params
  params = {
    [0] = "54181967740284437",
    [1] = "27160443010209937",
    [2] = "27160443124734446"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_206()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_206")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|836297810")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_206_Enabled
  })
  params = {
    [0] = "2120348430302730751"
  }
  return params
end
function export:OnEnter_box_DisableLayers_180()
  local params
  params = {
    [0] = "54181967740284437",
    [1] = "27160443010209937"
  }
  return params
end
function export:OnEnter_box_TeleportToTargetPlusOffset_247()
  local params
  params = {
    [0] = self.eVehicleInBase,
    [1] = 0,
    [2] = 0,
    [3] = "2120680463377924340",
    [4] = 0,
    [5] = 0,
    [6] = 0,
    [7] = 0
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_151()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_151")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|853954201")
  l0:SetConnections({})
  params = {
    [0] = "2119905647077127608"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_113()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_113")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|862141060")
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
        [0] = self.f_box_OutputOrder_v2_113_Out_0,
        [1] = self.f_box_OutputOrder_v2_113_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_227()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_227")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|865696497")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_227_Enabled
  })
  params = {
    [0] = "2120351189030690133"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_24()
  local params
  params = {
    [0] = true,
    [1] = "9015528627141087",
    [2] = true
  }
  return params
end
function export:OnEnter_box_Compare_Integers_93()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_93")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|896012906")
  l0:SetConnections({
    [0] = self.f_box_Compare_Integers_93_A_eq_B,
    [2] = self.f_box_Compare_Integers_93_A_gt_B,
    [4] = self.f_box_Compare_Integers_93_A_lt_B
  })
  params = {
    [0] = self._sld_Result_box_RandomInteger_v2_94,
    [1] = 2
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_115()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_115")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|909611510")
  l0:SetConnections({
    [0] = self.f_box_UseContextualActionModifier_v3_115_Disabled
  })
  params = {
    [0] = "2118771963865356255"
  }
  return params
end
function export:OnEnter_box_EnableLayers_138()
  local params
  params = {
    [0] = "45174852839820561",
    [5] = "54181967740284437"
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_77()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2117589409946693078"
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_132()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2117418575881833767"
  }
  return params
end
function export:OnEnter_box_SetContextualStrategy_121()
  local params, l0
  l0 = Boxes["1955818201757552246"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetContextualStrategy_121")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|935594725")
  l0:SetConnections({})
  params = {
    [0] = "2121980719881280487",
    [1] = "2111419513437178529"
  }
  return params
end
function export:OnEnter_box_HAL_SpawnNPC_OW_46()
  local params
  params = {
    [0] = "2114434072450189625",
    [1] = "2119947260472090087",
    [2] = "2118291127902693103",
    [3] = "2119947248025492749"
  }
  return params
end
function export:OnEnter_box_EnableLayers_143()
  local params
  params = {
    [0] = "54182052094760179",
    [5] = "54181967740284437"
  }
  return params
end
function export:OnEnter_box_Compare_Integers_75()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_75")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|991626210")
  l0:SetConnections({
    [0] = self.f_box_Compare_Integers_75_A_eq_B,
    [4] = self.f_box_Compare_Integers_75_A_lt_B
  })
  params = {
    [0] = self._sld_Result_box_RandomInteger_v2_76,
    [1] = 2
  }
  return params
end
function export:OnEnter_box_DisableLayers_37()
  local params
  params = {
    [0] = "54181967740284437",
    [1] = "27160443010209937",
    [2] = "27160443124734446",
    [3] = "27160443411467423"
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_120()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2111419513437178529"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_133()
  local params
  params = {
    [0] = true,
    [1] = "9015409973969993",
    [2] = true
  }
  return params
end
function export:OnEnter_box_Compare_Integers_221()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_221")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1047735401")
  l0:SetConnections({
    [2] = self.f_box_Compare_Integers_221_A_gt_B,
    [4] = self.f_box_Compare_Integers_221_A_lt_B
  })
  params = {
    [0] = self._sld_Result_box_RandomInteger_v2_222,
    [1] = 2
  }
  return params
end
function export:OnEnter_box_PlayerBaseListener_154()
  local params
  params = {
    [0] = false,
    [1] = "2107078814516381530"
  }
  return params
end
function export:OnEnter_box_RadioModifier_v3_125()
  local params, l0
  l0 = Boxes["11023266040765184046"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RadioModifier_v3_125")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1058523681")
  l0:SetConnections({
    [0] = self.f_box_RadioModifier_v3_125_Out
  })
  params = {
    [0] = true,
    [1] = true,
    [2] = false,
    [3] = false,
    [5] = "2116369944066139948"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_118()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_118")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1058901426")
  l0:SetConnections({})
  params = {
    [0] = "2120253566705750752"
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_114()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2111419493279353503"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_324()
  local params
  params = {
    [0] = true,
    [1] = "9015539479024514",
    [2] = true
  }
  return params
end
function export:OnEnter_box_GetStatistic_326()
  local params, l0
  DrawTextToScreen("Comment: Check if CPB tutorial has triggered before", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GetStatistic')-- Comment: Check if CPB tutorial has triggered before")
  l0 = Boxes["14544726443001098387"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetStatistic_326")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1096968909")
  l0:SetConnections({
    [0] = self.f_box_GetStatistic_326_ValueGot
  })
  params = {
    [0] = "CampPopinTutorial_Central_triggered"
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_78()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2117444858527365079"
  }
  return params
end
function export:OnEnter_box_HAL_SpawnNPC_OW_69()
  local params
  params = {
    [0] = "2121485253030724621",
    [1] = "2121485510808454499"
  }
  return params
end
function export:OnEnter_box_DisableLayers_139()
  local params
  params = {
    [0] = "54181967740284437",
    [1] = "27160454329843052"
  }
  return params
end
function export:OnEnter_box_SaveOpenWorldBox_240()
  local params, l0
  l0 = Boxes["17274682685841934203"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SaveOpenWorldBox_240")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1126517416")
  l0:SetConnections({})
  params = {
    [0] = false
  }
  return params
end
function export:OnEnter_box_RequestTutorial_v3_303()
  local params
  DrawTextToScreen("Comment: Geurrilla_Camp_Tutorial_OptInVersion", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestTutorial_v3')-- Comment: Geurrilla_Camp_Tutorial_OptInVersion")
  params = {
    [0] = true,
    [1] = "9015534501056831"
  }
  return params
end
function export:OnEnter_box_HAL_SpawnNPC_OW_112()
  local params
  params = {
    [0] = "2114434072450189625",
    [1] = "2119947260472090087",
    [2] = "2118274088620277994"
  }
  return params
end
function export:OnEnter_box_Compare_Integers_234()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_234")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1129351313")
  l0:SetConnections({
    [0] = self.f_box_Compare_Integers_234_A_eq_B
  })
  params = {
    [0] = self._sld_Result_box_RandomInteger_v2_164,
    [1] = 3
  }
  return params
end
function export:OnEnter_box_PlayerBaseModifier_309()
  local params, l0
  DrawTextToScreen("Comment: unlock central player base not first unlock", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayerBaseModifier')-- Comment: unlock central player base not first unlock")
  l0 = Boxes["8603181527020415275"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PlayerBaseModifier_309")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1172085329")
  l0:SetConnections({
    [0] = self.f_box_PlayerBaseModifier_309_UnlockedBase
  })
  params = {
    [0] = "Central"
  }
  return params
end
function export:OnEnter_box_HAL_SpawnNPC_OW_47()
  local params
  params = {
    [0] = "2114530612642592429",
    [1] = "2120389818903976844"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_165()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_165")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1185448201")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_165_Enabled
  })
  params = {
    [0] = "2119911541972176475"
  }
  return params
end
function export:OnEnter_box_RequestPhoneConversation_325()
  local params
  DrawTextToScreen("Comment: REQUEST CLARA_UPDATE_MIS0170_COMPLETE_A CALL", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneConversation')-- Comment: REQUEST CLARA_UPDATE_MIS0170_COMPLETE_A CALL")
  params = {
    [0] = "9015334530271821",
    [2] = "9015487381428786",
    [3] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_EnableLayers_140()
  local params
  params = {
    [0] = "36167653584819235",
    [5] = "54181967740284437"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_159()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_159")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1230492432")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_159_Enabled
  })
  params = {
    [0] = "2117418575881833767"
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_92()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2119921468593710327"
  }
  return params
end
function export:OnEnter_box_Delay_v5_307()
  local params
  DrawTextToScreen("Comment: delay for clara call 20s", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Delay_v5')-- Comment: delay for clara call 20s")
  params = {
    [0] = false,
    [2] = 20
  }
  return params
end
function export:OnEnter_box_HAL_SpawnNPC_OW_54()
  local params
  params = {
    [0] = "2114434072450189625",
    [1] = "2119947260472090087",
    [2] = "2114583272594880249",
    [3] = "2119947282783690498"
  }
  return params
end
function export:OnEnter_box_GetMissionLayerState_v2_21()
  local params, l0
  l0 = Boxes["1567066895893317808"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetMissionLayerState_v2_21")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1270584687")
  l0:SetConnections({
    [1] = self.f_box_GetMissionLayerState_v2_21_Enabled
  })
  params = {
    [0] = "135246748826812866",
    [1] = "153261147336294852"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_137()
  local params
  params = {
    [0] = true,
    [1] = "9015409974698299",
    [2] = true
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_98()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_98")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1277368674")
  l0:SetConnections({})
  params = {
    [0] = "2121584541597457948",
    [2] = "2111419493279353503"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_214()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_214")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1284840073")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_214_Enabled
  })
  params = {
    [0] = "2120348962085952395"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_10()
  local params
  params = {
    [0] = true,
    [1] = "9015528627595688",
    [2] = true
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_220()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_220")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1291765308")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_220_Enabled
  })
  params = {
    [0] = "2120350679456308391"
  }
  return params
end
function export:OnEnter_box_Compare_Integers_229()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_229")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1309448198")
  l0:SetConnections({
    [0] = self.f_box_Compare_Integers_229_A_eq_B
  })
  params = {
    [0] = self._sld_Result_box_RandomInteger_v2_164,
    [1] = 1
  }
  return params
end
function export:OnEnter_box_ProximityTrigger_v3_28()
  local params
  params = {
    [0] = true,
    [1] = "#8B2EB7CE",
    [2] = false,
    [3] = "2115291535565166829"
  }
  return params
end
function export:OnEnter_box_TeleportPawns_19()
  local params
  params = {
    [0] = "-1",
    [1] = "2121468407177025123",
    [2] = false,
    [4] = "2111419493279353503",
    [5] = false
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_111()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_111")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1328653959")
  l0:SetConnections({})
  params = {
    [0] = "2121468569135885449",
    [2] = "2111419493279353503"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_101()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_101")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1333501157")
  l0:SetConnections({
    [0] = self.f_box_UseContextualActionModifier_v3_101_Disabled
  })
  params = {
    [0] = "2120253595652739812"
  }
  return params
end
function export:OnEnter_box_HAL_SpawnNPC_OW_49()
  local params
  params = {
    [0] = "2118274088620277994",
    [1] = "2118291127902693103",
    [2] = "2119947248025492749"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_314()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_314")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1348650488")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_314_Enabled
  })
  params = {
    [0] = "2122369725498419343"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_135()
  local params
  params = {
    [0] = true,
    [1] = "9015409974731319",
    [2] = true
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_316()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_316")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1366451759")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_316_Enabled
  })
  params = {
    [0] = "2122369725494225031"
  }
  return params
end
function export:OnEnter_box_RequestTutorial_v3_306()
  local params
  DrawTextToScreen("Comment: Camp_Popin_Tutorial - . Explore the Camp Tutorial Hint", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestTutorial_v3')-- Comment: Camp_Popin_Tutorial - . Explore the Camp Tutorial Hint")
  params = {
    [0] = true,
    [1] = "9015522185886474"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_90()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_90")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1375977581")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_90_Enabled
  })
  params = {
    [0] = "2119933503798801241"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_14()
  local params
  params = {
    [0] = true,
    [1] = "9015528627372977",
    [2] = true
  }
  return params
end
function export:OnEnter_box_Delay_v5_317()
  local params
  params = {
    [0] = false,
    [2] = 160
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_83()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_83")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1391238052")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_83_Enabled
  })
  params = {
    [0] = "2119908835299724405"
  }
  return params
end
function export:OnEnter_box_EnableLayers_48()
  local params
  params = {
    [0] = "36167642780850905",
    [1] = "45174851184317044",
    [5] = "54181967740284437"
  }
  return params
end
function export:OnEnter_box_Delay_v5_293()
  local params
  params = {
    [0] = false,
    [2] = 120
  }
  return params
end
function export:OnEnter_box_EnableLayers_144()
  local params
  params = {
    [0] = "27160454329843052",
    [5] = "54181967740284437"
  }
  return params
end
function export:OnEnter_box_SoundShapeModifier_318()
  local params, l0
  l0 = Boxes["11231440745257573299"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SoundShapeModifier_318")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1448470655")
  l0:SetConnections({})
  params = {
    [0] = 0,5,
    [1] = "2116439651706220968"
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_130()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2119933503798801241"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_207()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_207")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1457753060")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_207_Enabled
  })
  params = {
    [0] = "2120348430294342131"
  }
  return params
end
function export:OnEnter_box_DisableLayers_141()
  local params
  params = {
    [0] = "54181967740284437",
    [1] = "27160454329843052",
    [2] = "36167653584819235"
  }
  return params
end
function export:OnEnter_box_EnableLayers_45()
  local params
  params = {
    [0] = "27160443511404618",
    [5] = "54181967740284437"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_210()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_210")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1483515237")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_210_Enabled
  })
  params = {
    [0] = "2120350971828657367"
  }
  return params
end
function export:OnEnter_box_HAL_SpawnNPC_OW_50()
  local params
  params = {
    [0] = "2114434072450189625",
    [1] = "2119947260472090087",
    [2] = "2114583272594880249",
    [3] = "2119947282783690498"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_9()
  local params
  params = {
    [0] = true,
    [1] = "9015409974817980",
    [2] = true
  }
  return params
end
function export:OnEnter_box_Compare_Boolean_150()
  local params, l0
  l0 = Boxes["15564734308847053112"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Boolean_150")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1520020573")
  l0:SetConnections({
    [2] = self.f_box_Compare_Boolean_150_A_is_True
  })
  l0 = self.box_PlayerBaseListener_154
  params = {
    [0] = l0:GetDataOutValue(2)
  }
  return params
end
function export:OnEnter_box_Compare_Integers_163()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_163")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1540627478")
  l0:SetConnections({
    [0] = self.f_box_Compare_Integers_163_A_eq_B
  })
  params = {
    [0] = self._sld_Result_box_RandomInteger_v2_164,
    [1] = 2
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_100()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_100")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1555115768")
  l0:SetConnections({
    [0] = self.f_box_UseContextualActionModifier_v3_100_Disabled
  })
  params = {
    [0] = "2121468569135885449"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_212()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_212")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1558788780")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_212_Enabled
  })
  params = {
    [0] = "2120348962075466623"
  }
  return params
end
function export:OnEnter_box_Delay_v5_290()
  local params
  params = {
    [0] = false,
    [2] = 120
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_226()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_226")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1589040626")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_226_Enabled
  })
  params = {
    [0] = "2120351189022301513"
  }
  return params
end
function export:OnEnter_box_GetVehicleOccupants_248()
  local params
  params = {
    [0] = 0,
    [1] = self.eVehicleInBase
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_95()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2119933503807189861"
  }
  return params
end
function export:OnEnter_box_IsEntityLoaded_v3_249()
  local params, l0
  l0 = Boxes["890432256735248856"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_IsEntityLoaded_v3_249")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1620663937")
  l0:SetConnections({
    [0] = self.f_box_IsEntityLoaded_v3_249_False,
    [1] = self.f_box_IsEntityLoaded_v3_249_True
  })
  params = {
    [0] = "2114143343656056076"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_116()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_116")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1628188101")
  l0:SetConnections({
    [0] = self.f_box_UseContextualActionModifier_v3_116_Disabled
  })
  params = {
    [0] = "2116244353119700007"
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_84()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2117445168272521503"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_32()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_32")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1636208746")
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
        [0] = self.f_box_OutputOrder_v2_32_Out_0,
        [1] = self.f_box_OutputOrder_v2_32_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_166()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_166")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1643999015")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_166_Enabled
  })
  params = {
    [0] = "2119911541980565095"
  }
  return params
end
function export:OnEnter_box_HAL_SpawnNPC_OW_52()
  local params
  params = {
    [0] = "2114434072450189625",
    [1] = "2119947260472090087",
    [2] = "2114583272594880249",
    [3] = "2119947282783690498"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_20()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_20")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1676159649")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [1] = 5
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [1] = {
      connections = {
        [0] = self.f_box_OutputOrder_v2_20_Out_0,
        [1] = self.f_box_OutputOrder_v2_20_Out_1,
        [2] = self.f_box_OutputOrder_v2_20_Out_2
      },
      count = 5
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_219()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_219")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1677919412")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_219_Enabled
  })
  params = {
    [0] = "2120350679452114079"
  }
  return params
end
function export:OnEnter_box_Compare_Integers_81()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_81")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1694161316")
  l0:SetConnections({
    [0] = self.f_box_Compare_Integers_81_A_eq_B,
    [2] = self.f_box_Compare_Integers_81_A_gt_B,
    [4] = self.f_box_Compare_Integers_81_A_lt_B
  })
  params = {
    [0] = self._sld_Result_box_RandomInteger_v2_82,
    [1] = 2
  }
  return params
end
function export:OnEnter_box_TeleportPawns_323()
  local params
  params = {
    [0] = "-1",
    [1] = "2122660226254530494",
    [2] = true,
    [4] = "2111419493279353503",
    [5] = false
  }
  return params
end
function export:OnEnter_box_DisableLayers_42()
  local params
  params = {
    [0] = "54181967740284437",
    [1] = "27160443010209937",
    [2] = "27160443124734446",
    [3] = "27160443411467423",
    [4] = "27160443511404618",
    [5] = "27160443523741755"
  }
  return params
end
function export:OnEnter_box_RandomInteger_v2_164()
  local params, l0
  l0 = Boxes["10418913611391624750"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RandomInteger_v2_164")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1751098366")
  l0:SetConnections({
    [0] = self.f_box_RandomInteger_v2_164_Out
  })
  params = {
    [0] = 4,
    [1] = 1
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_3()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_3")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1752910849")
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
function export:OnEnter_box_OutputOrder_v2_17()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_17")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1753605998")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [1] = 5
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [1] = {
      connections = {
        [0] = self.f_box_OutputOrder_v2_17_Out_0,
        [1] = self.f_box_OutputOrder_v2_17_Out_1,
        [2] = self.f_box_OutputOrder_v2_17_Out_2
      },
      count = 5
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_233()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_233")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1753927940")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_233_Enabled
  })
  params = {
    [0] = "2120389599252470412"
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_99()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2111419493279353503"
  }
  return params
end
function export:OnEnter_box_HAL_SpawnNPC_OW_12()
  local params
  params = {
    [0] = "2114434072450189625",
    [1] = "2119947260472090087",
    [2] = "2114583272594880249",
    [3] = "2119947282783690498"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_23()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_23")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1770191021")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [1] = 5
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [1] = {
      connections = {
        [0] = self.f_box_OutputOrder_v2_23_Out_0,
        [2] = self.f_box_OutputOrder_v2_23_Out_2,
        [3] = self.f_box_OutputOrder_v2_23_Out_3
      },
      count = 5
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_232()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_232")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1782213408")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_232_Enabled
  })
  params = {
    [0] = "2120389630005107422"
  }
  return params
end
function export:OnEnter_box_HAL_SpawnNPC_OW_66()
  local params
  params = {
    [0] = "2114583272594880249",
    [1] = "2119947282783690498"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_88()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_88")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1799262986")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_88_Enabled
  })
  params = {
    [0] = "2117445168272521503"
  }
  return params
end
function export:OnEnter_box_DisableLayers_142()
  local params
  params = {
    [0] = "54181967740284437",
    [1] = "27160454329843052",
    [2] = "36167653584819235",
    [3] = "45174852839820561"
  }
  return params
end
function export:OnEnter_box_StatisticModifier_107()
  local params, l0
  l0 = Boxes["15478190047253350759"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_StatisticModifier_107")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1801467761")
  l0:SetConnections({
    [2] = self.f_box_StatisticModifier_107_Set
  })
  params = {
    [0] = "PlayerBase_NotFirst_Unlocked",
    [2] = 1
  }
  return params
end
function export:OnEnter_box_PreconditionListener_11()
  local params
  params = {
    [0] = true,
    [1] = "9015528627466055",
    [2] = true
  }
  return params
end
function export:OnEnter_box_Print_v2_33()
  local params, l0
  l0 = Boxes["8578475447439923801"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Print_v2_33")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1824103377")
  l0:SetConnections({})
  params = {
    [1] = "blue",
    [3] = 5,
    [4] = 15,
    [7] = "C:\\Print.log",
    [8] = "resources received",
    [9] = true
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_235()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_235")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1825090298")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_235_Enabled
  })
  params = {
    [0] = "2120389756283018048"
  }
  return params
end
function export:OnEnter_box_Simple_Node_1()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_1")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1839774203")
  l0:SetConnections({
    [0] = self.f_box_Simple_Node_1_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_110()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_110")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1845458142")
  l0:SetConnections({
    [0] = self.f_box_UseContextualActionModifier_v3_110_Disabled
  })
  params = {
    [0] = "2118771963865356255"
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_73()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2117430430215977464"
  }
  return params
end
function export:OnEnter_box_ResourceRewardListener_31()
  local params
  params = {
    [0] = true,
    [1] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_218()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_218")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1868284706")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_218_Enabled
  })
  params = {
    [0] = "2120348802679331570"
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_156()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2113465357046926377"
  }
  return params
end
function export:OnEnter_box_GetPlayerGroup_v2_64()
  local params, l0
  l0 = Boxes["9581874586206389174"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetPlayerGroup_v2_64")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1884514109")
  l0:SetConnections({
    [0] = self.f_box_GetPlayerGroup_v2_64_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_228()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_228")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1900068947")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_228_Enabled
  })
  params = {
    [0] = "2120389599262956184"
  }
  return params
end
function export:OnEnter_box_StatisticModifier_251()
  local params, l0
  l0 = Boxes["15478190047253350759"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_StatisticModifier_251")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1904705681")
  l0:SetConnections({
    [2] = self.f_box_StatisticModifier_251_Set
  })
  l0 = self.box_UniversalInteractionListener_96
  params = {
    [0] = "World_LolaInteractedOnce",
    [1] = l0:GetDataOutValue(0),
    [2] = 1
  }
  return params
end
function export:OnEnter_box_DisableLayers_44()
  local params
  params = {
    [0] = "54181967740284437",
    [1] = "27160443010209937",
    [2] = "27160443124734446",
    [3] = "27160443411467423"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_152()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_152")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1944920545")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_152_Enabled
  })
  params = {
    [0] = "2119905709303821756"
  }
  return params
end
function export:OnEnter_box_Compare_Integers_87()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_87")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1950053129")
  l0:SetConnections({
    [3] = self.f_box_Compare_Integers_87_A_le_B
  })
  params = {
    [0] = self._sld_Result_box_RandomInteger_v2_85,
    [1] = 10
  }
  return params
end
function export:OnEnter_box_SpawnAI_239()
  local params
  params = {
    [0] = "2114143336628499676"
  }
  return params
end
function export:OnEnter_box_PlayerBaseModifier_328()
  local params, l0
  DrawTextToScreen("Comment: unlock central player base first unlock", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayerBaseModifier')-- Comment: unlock central player base first unlock")
  l0 = Boxes["8603181527020415275"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PlayerBaseModifier_328")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|1995266337")
  l0:SetConnections({
    [0] = self.f_box_PlayerBaseModifier_328_UnlockedBase
  })
  params = {
    [0] = "Central"
  }
  return params
end
function export:OnEnter_box_StatisticModifier_329()
  local params, l0
  l0 = Boxes["15478190047253350759"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_StatisticModifier_329")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2001921043")
  l0:SetConnections({})
  params = {
    [0] = "CampPopinTutorial_Central_triggered",
    [2] = 1
  }
  return params
end
function export:OnEnter_box_RandomInteger_v2_85()
  local params, l0
  l0 = Boxes["10418913611391624750"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RandomInteger_v2_85")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2009396455")
  l0:SetConnections({
    [0] = self.f_box_RandomInteger_v2_85_Out
  })
  params = {
    [0] = 10,
    [1] = 1
  }
  return params
end
function export:OnEnter_box_UniversalInteractionListener_96()
  local params
  params = {
    [0] = false,
    [1] = self.eLola
  }
  return params
end
function export:OnEnter_box_EntityStatusListener_242()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2118372956370387854"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_321()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_321")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2021103642")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_321_Enabled
  })
  params = {
    [0] = "2122660236813690818"
  }
  return params
end
function export:OnEnter_box_Delay_v5_119()
  local params
  params = {
    [0] = false,
    [2] = 1
  }
  return params
end
function export:OnEnter_box_RemoveEntity_v2_40()
  local params
  DrawTextToScreen("Comment: REMOVING DANCERS FOR MIS0340 BRIEF CUTSCENE AND APPROACH", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RemoveEntity_v2')-- Comment: REMOVING DANCERS FOR MIS0340 BRIEF CUTSCENE AND APPROACH")
  params = {
    [0] = "#B4B5C88F"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_103()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_103")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2031047297")
  l0:SetConnections({
    [0] = self.f_box_UseContextualActionModifier_v3_103_Disabled
  })
  params = {
    [0] = "2121468569135885449"
  }
  return params
end
function export:OnEnter_box_EnableLayers_178()
  local params
  params = {
    [0] = "27160443010209937",
    [1] = "27160452674650222",
    [5] = "54181967740284437"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_211()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_211")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2050435567")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_211_Enabled
  })
  params = {
    [0] = "2120348802679331570"
  }
  return params
end
function export:OnEnter_box_RandomInteger_v2_76()
  local params, l0
  l0 = Boxes["10418913611391624750"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RandomInteger_v2_76")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2070407129")
  l0:SetConnections({
    [0] = self.f_box_RandomInteger_v2_76_Out
  })
  params = {
    [0] = 2,
    [1] = 1
  }
  return params
end
function export:OnEnter_box_HAL_SpawnNPC_OW_70()
  local params
  params = {
    [0] = "2118274088620277994",
    [1] = "2118291127902693103",
    [2] = "2119947248025492749"
  }
  return params
end
function export:OnEnter_box_ProximityTrigger_v3_244()
  local params
  params = {
    [0] = true,
    [1] = self.gPlayer,
    [2] = false,
    [3] = "2120683221145387981"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_79()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_79")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2084852431")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_79_Enabled
  })
  params = {
    [0] = "2117444858527365079"
  }
  return params
end
function export:OnEnter_box_SoundShapeModifier_319()
  local params, l0
  l0 = Boxes["11231440745257573299"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SoundShapeModifier_319")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2099070986")
  l0:SetConnections({})
  params = {
    [0] = 0,5,
    [1] = "2116439651706220968"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_157()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_157")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2108605115")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_157_Enabled
  })
  params = {
    [0] = "2119921422605264109"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_97()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_97")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2114872176")
  l0:SetConnections({
    [0] = self.f_box_UseContextualActionModifier_v3_97_Disabled
  })
  params = {
    [0] = "2118372956370387854"
  }
  return params
end
function export:OnEnter_box_UseContextualActionModifier_v3_89()
  local params, l0
  l0 = Boxes["14298756858110064819"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_UseContextualActionModifier_v3_89")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2116340073")
  l0:SetConnections({
    [1] = self.f_box_UseContextualActionModifier_v3_89_Enabled
  })
  params = {
    [0] = "2119933503807189861"
  }
  return params
end
function export:OnEnter_box_EnableLayers_43()
  local params
  params = {
    [0] = "27160443511404618",
    [5] = "54181967740284437"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_134()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_134")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase|2124830858")
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [1] = 8
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [1] = {
      connections = {
        [0] = self.f_box_OutputOrder_v2_134_Out_0,
        [1] = self.f_box_OutputOrder_v2_134_Out_1,
        [2] = self.f_box_OutputOrder_v2_134_Out_2,
        [3] = self.f_box_OutputOrder_v2_134_Out_3
      },
      count = 8
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_EntityStatusListener_332()
  local params
  params = {
    [0] = true,
    [1] = true,
    [2] = "2114143343656056076"
  }
  return params
end
function export:OnExit_box_RandomInteger_v2_222_Out()
  local l0
  l0 = Boxes["10418913611391624750"]
  self._sld_Result_box_RandomInteger_v2_222 = l0:GetDataOutValue(0)
end
function export:OnExit_box_RandomInteger_v2_82_Out()
  local l0
  l0 = Boxes["10418913611391624750"]
  self._sld_Result_box_RandomInteger_v2_82 = l0:GetDataOutValue(0)
end
function export:OnExit_box_RandomInteger_v2_216_Out()
  local l0
  l0 = Boxes["10418913611391624750"]
  self._sld_Result_box_RandomInteger_v2_216 = l0:GetDataOutValue(0)
end
function export:OnExit_box_RandomInteger_v2_224_Out()
  local l0
  l0 = Boxes["10418913611391624750"]
  self._sld_Result_box_RandomInteger_v2_224 = l0:GetDataOutValue(0)
end
function export:OnExit_box_SetEntity_v2_238_Out()
  local l0
  l0 = Boxes["4263227414284540380"]
  self.eLola = l0:GetDataOutValue(0)
end
function export:OnExit_box_GetStatistic_327_ValueGot()
  local l0
  l0 = Boxes["14544726443001098387"]
  self._sld_value_box_GetStatistic_327 = l0:GetDataOutValue(0)
end
function export:OnExit_box_RandomInteger_v2_94_Out()
  local l0
  l0 = Boxes["10418913611391624750"]
  self._sld_Result_box_RandomInteger_v2_94 = l0:GetDataOutValue(0)
end
function export:OnExit_box_PlayerBaseListener_154_SlotUpgraded()
  local l0
  l0 = self.box_PlayerBaseListener_154
  self.SocketLvl = l0:GetDataOutValue(5)
end
function export:OnExit_box_GetStatistic_326_ValueGot()
  local l0
  l0 = Boxes["14544726443001098387"]
  self._sld_value_box_GetStatistic_326 = l0:GetDataOutValue(0)
end
function export:OnExit_box_ProximityTrigger_v3_28_Enabled()
  local l0
  l0 = self.box_ProximityTrigger_v3_28
  self.eConvoyVeh = l0:GetDataOutValue(0)
end
function export:OnExit_box_ProximityTrigger_v3_28_Enter()
  local l0
  l0 = self.box_ProximityTrigger_v3_28
  self.eConvoyVeh = l0:GetDataOutValue(0)
end
function export:OnExit_box_ProximityTrigger_v3_28_Leave()
  local l0
  l0 = self.box_ProximityTrigger_v3_28
  self.eConvoyVeh = l0:GetDataOutValue(0)
end
function export:OnExit_box_ProximityTrigger_v3_28_OnEmpty()
  local l0
  l0 = self.box_ProximityTrigger_v3_28
  self.eConvoyVeh = l0:GetDataOutValue(0)
end
function export:OnExit_box_ProximityTrigger_v3_28_OnOccupied()
  local l0
  l0 = self.box_ProximityTrigger_v3_28
  self.eConvoyVeh = l0:GetDataOutValue(0)
end
function export:OnExit_box_ProximityTrigger_v3_28_Use()
  local l0
  l0 = self.box_ProximityTrigger_v3_28
  self.eConvoyVeh = l0:GetDataOutValue(0)
end
function export:OnExit_box_RandomInteger_v2_164_Out()
  local l0
  l0 = Boxes["10418913611391624750"]
  self._sld_Result_box_RandomInteger_v2_164 = l0:GetDataOutValue(0)
  self._sld_Result_box_RandomInteger_v2_164 = l0:GetDataOutValue(0)
  self._sld_Result_box_RandomInteger_v2_164 = l0:GetDataOutValue(0)
  self._sld_Result_box_RandomInteger_v2_164 = l0:GetDataOutValue(0)
end
function export:OnExit_box_ResourceRewardListener_31_ResourceDestroyedAwarded()
  local l0
  l0 = self.box_ResourceRewardListener_31
  self.gPlayer = l0:GetDataOutValue(0)
end
function export:OnExit_box_ResourceRewardListener_31_ResourceInteractAwarded()
  local l0
  l0 = self.box_ResourceRewardListener_31
  self.gPlayer = l0:GetDataOutValue(0)
end
function export:OnExit_box_ResourceRewardListener_31_ResourceSafeReturnRewarded()
  local l0
  l0 = self.box_ResourceRewardListener_31
  self.gPlayer = l0:GetDataOutValue(0)
end
function export:OnExit_box_GetPlayerGroup_v2_64_Out()
  local l0
  l0 = Boxes["9581874586206389174"]
  self.gPlayer = l0:GetDataOutValue(0)
end
function export:OnExit_box_RandomInteger_v2_85_Out()
  local l0
  l0 = Boxes["10418913611391624750"]
  self._sld_Result_box_RandomInteger_v2_85 = l0:GetDataOutValue(0)
end
function export:OnExit_box_RandomInteger_v2_76_Out()
  local l0
  l0 = Boxes["10418913611391624750"]
  self._sld_Result_box_RandomInteger_v2_76 = l0:GetDataOutValue(0)
end
function export:OnExit_box_ProximityTrigger_v3_244_Enabled()
  local l0
  l0 = self.box_ProximityTrigger_v3_244
  self.eVehicleInBase = l0:GetDataOutValue(0)
end
function export:OnExit_box_ProximityTrigger_v3_244_Enter()
  local l0
  l0 = self.box_ProximityTrigger_v3_244
  self.eVehicleInBase = l0:GetDataOutValue(0)
end
function export:OnExit_box_ProximityTrigger_v3_244_Leave()
  local l0
  l0 = self.box_ProximityTrigger_v3_244
  self.eVehicleInBase = l0:GetDataOutValue(0)
end
function export:OnExit_box_ProximityTrigger_v3_244_OnEmpty()
  local l0
  l0 = self.box_ProximityTrigger_v3_244
  self.eVehicleInBase = l0:GetDataOutValue(0)
end
function export:OnExit_box_ProximityTrigger_v3_244_OnOccupied()
  local l0
  l0 = self.box_ProximityTrigger_v3_244
  self.eVehicleInBase = l0:GetDataOutValue(0)
end
function export:OnExit_box_ProximityTrigger_v3_244_Use()
  local l0
  l0 = self.box_ProximityTrigger_v3_244
  self.eVehicleInBase = l0:GetDataOutValue(0)
end
_compilerVersion = 60
