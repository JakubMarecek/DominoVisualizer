--Converted by FCBConverter v20221020-2000, author ArmanIII.
--Converted using UnluacNET by Fireboyd78

export = {}
function export:LuaDependencies()
  local luaDepTable = {}
  return luaDepTable
end
function export:Create(cboxRes)
  if cboxRes:ShouldLoadResources() == true then
    cboxRes:RegisterBox("Domino/Library/Operations/Lib_Aslt_RadioCallManager.Lib_Aslt_StartCallDialogueOnEvent.debug.lua")
    cboxRes:RegisterBox("Domino/Library/Operations/Lib_Aslt_Utilities.Lib_Aslt_IsAssault.debug.lua")
    cboxRes:RegisterBox("Domino/Library/Operations/lib_Ops_Safe_Listeners.Ops_ProximityTrigger_Listener_v3.debug.lua")
    cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate_v2.lua")
    cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua")
    cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")
    cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v4.lua")
    cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveHint.lua")
    cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua")
    cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua")
    cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua")
    cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua")
    cboxRes:RegisterBox("Domino/System/AI/PreconditionListener.lua")
    cboxRes:RegisterBox("Domino/System/CompareIntegers.lua")
    cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua")
    cboxRes:RegisterBox("Domino/System/Coop/Group/GetFromGroup.lua")
    cboxRes:RegisterBox("Domino/System/Delay_v5.lua")
    cboxRes:RegisterBox("Domino/System/EntityEventListener_v2.lua")
    cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua")
    cboxRes:RegisterBox("Domino/System/InventoryItemListener.lua")
    cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua")
    cboxRes:RegisterBox("Domino/System/ListLength_v2.lua")
    cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua")
    cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua")
    cboxRes:RegisterBox("Domino/System/MultipleOR.lua")
    cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua")
    cboxRes:RegisterBox("Domino/System/Operations/GetOperationDifficultyLevel_v2.lua")
    cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua")
    cboxRes:RegisterBox("Domino/System/PawnReadyListener.lua")
    cboxRes:RegisterBox("Domino/System/Player/GetInventoryItemQuantity.lua")
    cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua")
    cboxRes:RegisterBox("Domino/System/Player/RequestPhoneConversation.lua")
    cboxRes:RegisterBox("Domino/System/Print_v2.lua")
    cboxRes:RegisterBox("Domino/System/SimpleNode.lua")
    cboxRes:RegisterBox("Domino/System/TaggingModifier_v4.lua")
    cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua")
    cboxRes:RegisterGlobals("Domino/Library/Operations/Lib_Aslt_OldChest.globals.lua")
  end
end
function export:Init(cbox)
  local l0
  self._name = "ASLT_PMGMain"
  self._elementPathId = "DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain"
  self.SpecOpsGO = false
  self.IntelNotifForASLT = nil
  self.box_MultipleOR_123 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_123
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_123")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|13173941")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_123_Out
  })
  self.box_PreconditionListener_66 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_66
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_66")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|16391141")
  l0:SetConnections({
    [1] = self.f_box_PreconditionListener_66_Enabled,
    [2] = self.f_box_PreconditionListener_66_PreconditionMet
  })
  self.box_PreconditionListener_72 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_72
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_72")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|32111258")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_72_PreconditionMet
  })
  self.box_PawnReadyListener_38 = cbox:CreateBox_PathID("14900102601489265767")
  l0 = self.box_PawnReadyListener_38
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PawnReadyListener_38")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|53874813")
  l0:SetConnections({
    [0] = self.f_box_PawnReadyListener_38_AllPawnsReady
  })
  self.box_ActivityAcknowledgeGate_v2_9 = cbox:CreateBox_PathID("11524929585773902845")
  l0 = self.box_ActivityAcknowledgeGate_v2_9
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ActivityAcknowledgeGate_v2_9")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|128781588")
  l0:SetConnections({
    [0] = self.f_box_ActivityAcknowledgeGate_v2_9_Acknowledged,
    [1] = self.f_box_ActivityAcknowledgeGate_v2_9_Reloaded
  })
  self.box_PreconditionListener_88 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_88
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_88")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|212215382")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_88_PreconditionMet
  })
  self.box_MultipleOR_133 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_133
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_133")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|218395010")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_133_Out
  })
  self.box_RequestPhoneConversation_99 = cbox:CreateBox_PathID("17999334189213309227")
  l0 = self.box_RequestPhoneConversation_99
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RequestPhoneConversation_99")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|225307895")
  l0:SetConnections({})
  self.box_MultipleOR_25 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_25
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_25")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|228659499")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_25_Out
  })
  self.box_MessageListener_v3_106 = cbox:CreateBox_PathID("8576786676075923417")
  l0 = self.box_MessageListener_v3_106
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MessageListener_v3_106")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|323335164")
  l0:SetConnections({
    [1] = self.f_box_MessageListener_v3_106_Enabled,
    [2] = self.f_box_MessageListener_v3_106_Received
  })
  self.box_Lib_Aslt_StartCallDialogueOnEvent_55 = cbox:CreateBox_PathID("17307312702263746080")
  l0 = self.box_Lib_Aslt_StartCallDialogueOnEvent_55
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Lib_Aslt_StartCallDialogueOnEvent_55")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|335667083")
  l0:SetConnections({
    [0] = self.f_box_Lib_Aslt_StartCallDialogueOnEvent_55_Enabled
  })
  self.box_RequestPhoneConversation_45 = cbox:CreateBox_PathID("17999334189213309227")
  l0 = self.box_RequestPhoneConversation_45
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RequestPhoneConversation_45")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|388475967")
  l0:SetConnections({
    [1] = self.f_box_RequestPhoneConversation_45_Completed,
    [2] = self.f_box_RequestPhoneConversation_45_Failed
  })
  self.box_PreconditionListener_71 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_71
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_71")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|402906987")
  l0:SetConnections({
    [1] = self.f_box_PreconditionListener_71_Enabled,
    [2] = self.f_box_PreconditionListener_71_PreconditionMet
  })
  self.box_Lib_Aslt_IsAssault_42 = cbox:CreateBox_PathID("13247847850856296676")
  l0 = self.box_Lib_Aslt_IsAssault_42
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Lib_Aslt_IsAssault_42")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|485575149")
  l0:SetConnections({
    [1] = self.f_box_Lib_Aslt_IsAssault_42_IsASLT01,
    [2] = self.f_box_Lib_Aslt_IsAssault_42_IsASLT02,
    [3] = self.f_box_Lib_Aslt_IsAssault_42_IsASLT03,
    [5] = self.f_box_Lib_Aslt_IsAssault_42_IsASLT05,
    [6] = self.f_box_Lib_Aslt_IsAssault_42_IsASLT06
  })
  self.box_MessageListener_v3_104 = cbox:CreateBox_PathID("8576786676075923417")
  l0 = self.box_MessageListener_v3_104
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MessageListener_v3_104")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|486189547")
  l0:SetConnections({
    [1] = self.f_box_MessageListener_v3_104_Enabled,
    [2] = self.f_box_MessageListener_v3_104_Received
  })
  self.box_MultipleOR_2 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_2
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_2")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|501737814")
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
  self.box_GroupSizeListener_v6_30 = cbox:CreateBox_PathID("14376577516670000351")
  l0 = self.box_GroupSizeListener_v6_30
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GroupSizeListener_v6_30")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|558563507")
  l0:SetConnections({
    [1] = self.f_box_GroupSizeListener_v6_30_Enabled,
    [2] = self.f_box_GroupSizeListener_v6_30_MemberAdded,
    [5] = self.f_box_GroupSizeListener_v6_30_MemberSpawned
  })
  self.box_PreconditionListener_74 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_74
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_74")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|652720915")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_74_PreconditionMet
  })
  self.box_MultipleOR_65 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_65
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_65")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|664246721")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_65_Out
  })
  self.box_Delay_v5_146 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_146
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_146")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|685241370")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_146_TimeElapsed
  })
  self.box_PreconditionListener_91 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_91
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_91")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|712390520")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_91_PreconditionMet
  })
  self.box_PreconditionListener_67 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_67
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_67")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|713582241")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_67_PreconditionMet
  })
  self.box_MultipleOR_41 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_41
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_41")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|743389116")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 10
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_41_Out
  })
  self.box_CoopActivePlayers_60 = cbox:CreateBox_PathID("7893821626131184135")
  l0 = self.box_CoopActivePlayers_60
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_CoopActivePlayers_60")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|749473003")
  l0:SetConnections({
    [1] = self.f_box_CoopActivePlayers_60_PlayerAdded
  })
  self.box_RequestPhoneConversation_50 = cbox:CreateBox_PathID("17999334189213309227")
  l0 = self.box_RequestPhoneConversation_50
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RequestPhoneConversation_50")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|766845174")
  l0:SetConnections({
    [1] = self.f_box_RequestPhoneConversation_50_Completed,
    [2] = self.f_box_RequestPhoneConversation_50_Failed
  })
  self.box_PreconditionListener_102 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_102
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_102")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|774109859")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_102_PreconditionMet
  })
  self.box_Delay_v5_145 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_145
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_145")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|804560865")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_145_TimeElapsed
  })
  self.box_MultipleOR_95 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_95
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_95")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|842178089")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_95_Out
  })
  self.box_MultipleOR_131 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_131
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_131")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|859031712")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_131_Out
  })
  self.box_RequestPhoneConversation_31 = cbox:CreateBox_PathID("17999334189213309227")
  l0 = self.box_RequestPhoneConversation_31
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RequestPhoneConversation_31")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|895062033")
  l0:SetConnections({
    [1] = self.f_box_RequestPhoneConversation_31_Completed,
    [2] = self.f_box_RequestPhoneConversation_31_Failed
  })
  self.box_PreconditionListener_62 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_62
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_62")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|907944928")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_62_PreconditionMet
  })
  self.box_EntityEventListener_v2_108 = cbox:CreateBox_PathID("6536786339737649316")
  l0 = self.box_EntityEventListener_v2_108
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EntityEventListener_v2_108")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|911954252")
  l0:SetConnections({
    [0] = self.f_box_EntityEventListener_v2_108_Out
  })
  self.box_MultipleOR_33 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_33
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_33")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|965376319")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_33_Out
  })
  self.box_MultipleOR_132 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_132
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_132")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|976857578")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_132_Out
  })
  self.box_Ops_ProximityTrigger_Listener_v3_8 = cbox:CreateBox_PathID("16339949775170226243")
  l0 = self.box_Ops_ProximityTrigger_Listener_v3_8
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Ops_ProximityTrigger_Listener_v3_8")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|989952972")
  l0:SetConnections({
    [5] = self.f_box_Ops_ProximityTrigger_Listener_v3_8_Entered
  })
  self.box_RequestPhoneConversation_100 = cbox:CreateBox_PathID("17999334189213309227")
  l0 = self.box_RequestPhoneConversation_100
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RequestPhoneConversation_100")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1000021262")
  l0:SetConnections({})
  self.box_MultipleOR_151 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_151
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_151")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1005060506")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_151_Out
  })
  self.box_PreconditionListener_76 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_76
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_76")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1019212552")
  l0:SetConnections({
    [1] = self.f_box_PreconditionListener_76_Enabled,
    [2] = self.f_box_PreconditionListener_76_PreconditionMet
  })
  self.box_Delay_v5_147 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_147
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_147")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1022431395")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_147_TimeElapsed
  })
  self.box_OnceOnly_v3_43 = cbox:CreateBox_PathID("3070349782511854479")
  l0 = self.box_OnceOnly_v3_43
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OnceOnly_v3_43")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1027750232")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 1
    },
    controlOut = {
      [0] = 1
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = {
      connections = {
        [0] = self.f_box_OnceOnly_v3_43_Out_0
      },
      count = 1
    }
  })
  self.box_Delay_v5_103 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_103
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_103")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1051334297")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_103_TimeElapsed
  })
  self.box_PreconditionListener_90 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_90
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_90")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1079515667")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_90_PreconditionMet
  })
  self.box_GroupSizeListener_v6_19 = cbox:CreateBox_PathID("14376577516670000351")
  l0 = self.box_GroupSizeListener_v6_19
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GroupSizeListener_v6_19")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1101818107")
  l0:SetConnections({
    [1] = self.f_box_GroupSizeListener_v6_19_Enabled,
    [2] = self.f_box_GroupSizeListener_v6_19_MemberAdded,
    [5] = self.f_box_GroupSizeListener_v6_19_MemberSpawned
  })
  self.box_MultipleOR_113 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_113
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_113")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1141827032")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 5
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_113_Out
  })
  self.box_OnceOnly_v3_17 = cbox:CreateBox_PathID("3070349782511854479")
  l0 = self.box_OnceOnly_v3_17
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OnceOnly_v3_17")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1178103555")
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
        [0] = self.f_box_OnceOnly_v3_17_Out_0
      },
      count = 2
    }
  })
  self.box_Lib_Aslt_IsAssault_37 = cbox:CreateBox_PathID("13247847850856296676")
  l0 = self.box_Lib_Aslt_IsAssault_37
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Lib_Aslt_IsAssault_37")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1323642599")
  l0:SetConnections({
    [1] = self.f_box_Lib_Aslt_IsAssault_37_IsASLT01,
    [2] = self.f_box_Lib_Aslt_IsAssault_37_IsASLT02,
    [3] = self.f_box_Lib_Aslt_IsAssault_37_IsASLT03,
    [4] = self.f_box_Lib_Aslt_IsAssault_37_IsASLT04,
    [5] = self.f_box_Lib_Aslt_IsAssault_37_IsASLT05,
    [6] = self.f_box_Lib_Aslt_IsAssault_37_IsASLT06
  })
  self.box_Delay_v5_135 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_135
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_135")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1327041401")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_135_TimeElapsed
  })
  self.box_PreconditionListener_85 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_85
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_85")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1340184769")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_85_PreconditionMet
  })
  self.box_PreconditionListener_73 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_73
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_73")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1363990176")
  l0:SetConnections({
    [1] = self.f_box_PreconditionListener_73_Enabled,
    [2] = self.f_box_PreconditionListener_73_PreconditionMet
  })
  self.box_RequestPhoneConversation_47 = cbox:CreateBox_PathID("17999334189213309227")
  l0 = self.box_RequestPhoneConversation_47
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RequestPhoneConversation_47")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1399442639")
  l0:SetConnections({
    [1] = self.f_box_RequestPhoneConversation_47_Completed,
    [2] = self.f_box_RequestPhoneConversation_47_Failed
  })
  self.box_MultipleOR_94 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_94
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_94")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1402939605")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 6
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_94_Out
  })
  self.box_MultipleOR_148 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_148
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_148")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1411908732")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_148_Out
  })
  self.box_MultipleOR_152 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_152
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_152")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1457673240")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_152_Out
  })
  self.box_MultipleOR_150 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_150
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_150")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1459388262")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_150_Out
  })
  self.box_Delay_v5_75 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_75
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_75")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1460138435")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_75_TimeElapsed
  })
  self.box_MessageListener_v3_83 = cbox:CreateBox_PathID("8576786676075923417")
  l0 = self.box_MessageListener_v3_83
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MessageListener_v3_83")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1502038426")
  l0:SetConnections({
    [1] = self.f_box_MessageListener_v3_83_Enabled,
    [2] = self.f_box_MessageListener_v3_83_Received
  })
  self.box_MultipleOR_97 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_97
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_97")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1510258196")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_97_Out
  })
  self.box_MultipleOR_153 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_153
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_153")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1526080263")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_153_Out
  })
  self.box_MessageListener_v3_57 = cbox:CreateBox_PathID("8576786676075923417")
  l0 = self.box_MessageListener_v3_57
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MessageListener_v3_57")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1577334433")
  l0:SetConnections({
    [1] = self.f_box_MessageListener_v3_57_Enabled,
    [2] = self.f_box_MessageListener_v3_57_Received
  })
  self.box_Lib_Aslt_IsAssault_111 = cbox:CreateBox_PathID("13247847850856296676")
  l0 = self.box_Lib_Aslt_IsAssault_111
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Lib_Aslt_IsAssault_111")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1589758167")
  l0:SetConnections({
    [1] = self.f_box_Lib_Aslt_IsAssault_111_IsASLT01,
    [2] = self.f_box_Lib_Aslt_IsAssault_111_IsASLT02,
    [3] = self.f_box_Lib_Aslt_IsAssault_111_IsASLT03,
    [5] = self.f_box_Lib_Aslt_IsAssault_111_IsASLT05,
    [6] = self.f_box_Lib_Aslt_IsAssault_111_IsASLT06
  })
  self.box_MultipleAND_v2_121 = cbox:CreateBox_PathID("8856851018964989888")
  l0 = self.box_MultipleAND_v2_121
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleAND_v2_121")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1596437388")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleAND_v2_121_Out
  })
  self.box_MultipleOR_93 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_93
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_93")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1610861281")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_93_Out
  })
  self.box_Delay_v5_142 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_142
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_142")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1619533209")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_142_TimeElapsed
  })
  self.box_Ops_ProximityTrigger_Listener_v3_14 = cbox:CreateBox_PathID("16339949775170226243")
  l0 = self.box_Ops_ProximityTrigger_Listener_v3_14
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Ops_ProximityTrigger_Listener_v3_14")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1622096140")
  l0:SetConnections({
    [5] = self.f_box_Ops_ProximityTrigger_Listener_v3_14_Entered
  })
  self.box_MultipleOR_110 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_110
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_110")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1623656619")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 3
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_110_Out
  })
  self.box_PreconditionListener_89 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_89
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_89")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1625158626")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_89_PreconditionMet
  })
  self.box_PreconditionListener_77 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_77
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_77")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1637632227")
  l0:SetConnections({
    [1] = self.f_box_PreconditionListener_77_Enabled,
    [2] = self.f_box_PreconditionListener_77_PreconditionMet
  })
  self.box_MessageListener_v3_105 = cbox:CreateBox_PathID("8576786676075923417")
  l0 = self.box_MessageListener_v3_105
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MessageListener_v3_105")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1662769287")
  l0:SetConnections({
    [2] = self.f_box_MessageListener_v3_105_Received
  })
  self.box_MultipleOR_149 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_149
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_149")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1675959758")
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
  self.box_RequestPhoneConversation_52 = cbox:CreateBox_PathID("17999334189213309227")
  l0 = self.box_RequestPhoneConversation_52
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RequestPhoneConversation_52")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1732996447")
  l0:SetConnections({
    [1] = self.f_box_RequestPhoneConversation_52_Completed,
    [2] = self.f_box_RequestPhoneConversation_52_Failed
  })
  self.box_PreconditionListener_70 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_70
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_70")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1790869531")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_70_PreconditionMet
  })
  self.box_ActivityInitialized_3 = cbox:CreateBox_PathID("5136111808265235631")
  l0 = self.box_ActivityInitialized_3
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ActivityInitialized_3")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1798008168")
  l0:SetConnections({
    [0] = self.f_box_ActivityInitialized_3_Out
  })
  self.box_RequestPhoneConversation_81 = cbox:CreateBox_PathID("17999334189213309227")
  l0 = self.box_RequestPhoneConversation_81
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_RequestPhoneConversation_81")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1805544889")
  l0:SetConnections({})
  self.box_OnceOnly_v3_112 = cbox:CreateBox_PathID("3070349782511854479")
  l0 = self.box_OnceOnly_v3_112
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OnceOnly_v3_112")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1828136273")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 1
    },
    controlOut = {
      [0] = 1
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = {
      connections = {
        [0] = self.f_box_OnceOnly_v3_112_Out_0
      },
      count = 1
    }
  })
  self.box_MultipleOR_69 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_69
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_69")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1837217467")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 6
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_69_Out
  })
  self.box_Delay_v5_144 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_144
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_144")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1855314278")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_144_TimeElapsed
  })
  self.box_MultipleOR_134 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_134
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_134")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1867327878")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_134_Out
  })
  self.box_MultipleOR_130 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_130
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_130")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1872302305")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 6
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_130_Out
  })
  self.box_Delay_v5_143 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_143
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_143")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1940306324")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_143_TimeElapsed
  })
  self.box_Delay_v5_101 = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self.box_Delay_v5_101
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Delay_v5_101")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1969673137")
  l0:SetConnections({
    [5] = self.f_box_Delay_v5_101_TimeElapsed
  })
  self.box_Lib_Aslt_IsAssault_58 = cbox:CreateBox_PathID("13247847850856296676")
  l0 = self.box_Lib_Aslt_IsAssault_58
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Lib_Aslt_IsAssault_58")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1978491054")
  l0:SetConnections({
    [1] = self.f_box_Lib_Aslt_IsAssault_58_IsASLT01,
    [2] = self.f_box_Lib_Aslt_IsAssault_58_IsASLT02,
    [3] = self.f_box_Lib_Aslt_IsAssault_58_IsASLT03,
    [4] = self.f_box_Lib_Aslt_IsAssault_58_IsASLT04,
    [5] = self.f_box_Lib_Aslt_IsAssault_58_IsASLT05,
    [6] = self.f_box_Lib_Aslt_IsAssault_58_IsASLT06
  })
  self.box_PreconditionListener_86 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_86
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_86")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|2024106110")
  l0:SetConnections({
    [2] = self.f_box_PreconditionListener_86_PreconditionMet
  })
  self.box_MultipleOR_44 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_44
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_44")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|2034891205")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_44_Out
  })
  self.box_MultipleOR_40 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_40
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_40")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|2055178504")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 5
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_40_Out
  })
  self.box_PreconditionListener_68 = cbox:CreateBox_PathID("9430859948420366196")
  l0 = self.box_PreconditionListener_68
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_PreconditionListener_68")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|2059936339")
  l0:SetConnections({
    [1] = self.f_box_PreconditionListener_68_Enabled,
    [2] = self.f_box_PreconditionListener_68_PreconditionMet
  })
  self.box_InventoryItemListener_22 = cbox:CreateBox_PathID("10157003696720833713")
  l0 = self.box_InventoryItemListener_22
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_InventoryItemListener_22")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|2108664699")
  l0:SetConnections({
    [0] = self.f_box_InventoryItemListener_22_Disabled,
    [1] = self.f_box_InventoryItemListener_22_Enabled,
    [2] = self.f_box_InventoryItemListener_22_ItemAdded,
    [3] = self.f_box_InventoryItemListener_22_ItemRemoved
  })
  self.box_MultipleOR_51 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_51
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_51")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|2108817980")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_51_Out
  })
end
function export:In()
  local params, l0
  params = self:OnEnter_box_OutputOrder_v2_6()
  l0 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1565889076", "1565889076", "ASLT_PMGMain", "In", "box_OutputOrder_v2_6.In", self, l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:OnLeaveZone()
end
function export:f_box_Simple_Node_87_Out()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  local clone = l0
  params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_84()
  l0 = Boxes["12441205433938900539"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1120481537", "1120481537", "ASLT_PMGMain", "box_Simple_Node_87.Out", "box_ActivityObjectiveMarkerModifier_v3_84.Disable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
  params = self:OnEnter_box_MessageListener_v3_83()
  l0 = self.box_MessageListener_v3_83
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|953484703", "953484703", "ASLT_PMGMain", "box_Simple_Node_87.Out", "box_MessageListener_v3_83.Disable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_MultipleOR_123_Out()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityFact_124()
  l0 = self.box_MultipleOR_123
  l1 = Boxes["13904194869060163813"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1270642052", "1270642052", "ASLT_PMGMain", "box_MultipleOR_123.Out", "box_GetActivityFact_124.GetFact", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_PreconditionListener_66_Enabled()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_91()
  l0 = self.box_PreconditionListener_66
  l1 = self.box_PreconditionListener_91
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1986443654", "1986443654", "ASLT_PMGMain", "box_PreconditionListener_66.Enabled", "box_PreconditionListener_91.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_PreconditionListener_66_PreconditionMet()
  local l0, l1
  l0 = self.box_PreconditionListener_66
  l1 = self.box_MultipleOR_69
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|879417785", "879417785", "ASLT_PMGMain", "box_PreconditionListener_66.PreconditionMet", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_PreconditionListener_72_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_Delay_v5_145()
  l0 = self.box_PreconditionListener_72
  l1 = self.box_Delay_v5_145
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|653148965", "653148965", "ASLT_PMGMain", "box_PreconditionListener_72.PreconditionMet", "box_Delay_v5_145.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_OutputOrder_v2_61_Out_0()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_MultipleOR_65
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1732096728", "1732096728", "ASLT_PMGMain", "box_OutputOrder_v2_61.Out", "box_MultipleOR_65.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_OutputOrder_v2_61_Out_1()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_CoopActivePlayers_60
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|957458770", "957458770", "ASLT_PMGMain", "box_OutputOrder_v2_61.Out", "box_CoopActivePlayers_60.Disable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, {})
end
function export:f_box_PawnReadyListener_38_AllPawnsReady()
  local params, l0, l1
  params = self:OnEnter_box_InventoryItemListener_22()
  l0 = self.box_PawnReadyListener_38
  l1 = self.box_InventoryItemListener_22
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1256065893", "1256065893", "ASLT_PMGMain", "box_PawnReadyListener_38.AllPawnsReady", "box_InventoryItemListener_22.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_GetActivityState_v2_48_Inactive()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_123
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|685391211", "685391211", "ASLT_PMGMain", "box_GetActivityState_v2_48.Inactive", "box_MultipleOR_123.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_GetActivityState_v2_48_Unavailable()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_123
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1622013943", "1622013943", "ASLT_PMGMain", "box_GetActivityState_v2_48.Unavailable", "box_MultipleOR_123.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_ActivityAcknowledgeGate_v2_9_Acknowledged()
  local l0, l1
  l0 = self.box_ActivityAcknowledgeGate_v2_9
  l1 = self.box_MultipleOR_2
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1302453259", "1302453259", "ASLT_PMGMain", "box_ActivityAcknowledgeGate_v2_9.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_ActivityAcknowledgeGate_v2_9_Reloaded()
  local l0, l1
  l0 = self.box_ActivityAcknowledgeGate_v2_9
  l1 = self.box_MultipleOR_2
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|549807477", "549807477", "ASLT_PMGMain", "box_ActivityAcknowledgeGate_v2_9.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_GetActivityFact_126_FactNotSet()
  local l0
  l0 = Boxes["13904194869060163813"]
  local clone = l0
  l0 = self.box_MultipleOR_130
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1886770822", "1886770822", "ASLT_PMGMain", "box_GetActivityFact_126.FactNotSet", "box_MultipleOR_130.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 4)
end
function export:f_box_OutputOrder_v2_46_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_GroupSizeListener_v6_19()
  l0 = self.box_GroupSizeListener_v6_19
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|42300256", "42300256", "ASLT_PMGMain", "box_OutputOrder_v2_46.Out", "box_GroupSizeListener_v6_19.Disable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_46_Out_1()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_MultipleOR_95
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|625786551", "625786551", "ASLT_PMGMain", "box_OutputOrder_v2_46.Out", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_PreconditionListener_88_PreconditionMet()
  local l0, l1
  l0 = self.box_PreconditionListener_88
  l1 = self.box_MultipleOR_94
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1541870157", "1541870157", "ASLT_PMGMain", "box_PreconditionListener_88.PreconditionMet", "box_MultipleOR_94.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 5)
end
function export:f_box_MultipleOR_133_Out()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityFact_126()
  l0 = self.box_MultipleOR_133
  l1 = Boxes["13904194869060163813"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1827235012", "1827235012", "ASLT_PMGMain", "box_MultipleOR_133.Out", "box_GetActivityFact_126.GetFact", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_25_Out()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_34()
  l0 = self.box_MultipleOR_25
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1032176607", "1032176607", "ASLT_PMGMain", "box_MultipleOR_25.Out", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_GetActivityState_v2_138_Active()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_150
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|28104531", "28104531", "ASLT_PMGMain", "box_GetActivityState_v2_138.Active", "box_MultipleOR_150.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_GetActivityState_v2_138_Unavailable()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_150
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1627618556", "1627618556", "ASLT_PMGMain", "box_GetActivityState_v2_138.Unavailable", "box_MultipleOR_150.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_MessageListener_v3_106_Enabled()
  local params, l0, l1
  params = self:OnEnter_box_MessageListener_v3_105()
  l0 = self.box_MessageListener_v3_106
  l1 = self.box_MessageListener_v3_105
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1326656903", "1326656903", "ASLT_PMGMain", "box_MessageListener_v3_106.Enabled", "box_MessageListener_v3_105.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_MessageListener_v3_106_Received()
  local params, l0, l1
  params = self:OnEnter_box_Delay_v5_101()
  l0 = self.box_MessageListener_v3_106
  l1 = self.box_Delay_v5_101
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|891370607", "891370607", "ASLT_PMGMain", "box_MessageListener_v3_106.Received", "box_Delay_v5_101.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_Lib_Aslt_StartCallDialogueOnEvent_55_Enabled()
  local params, l0, l1
  params = self:OnEnter_box_IsValueNil_v3_10()
  l0 = self.box_Lib_Aslt_StartCallDialogueOnEvent_55
  l1 = Boxes["16744489399474769823"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|597091043", "597091043", "ASLT_PMGMain", "box_Lib_Aslt_StartCallDialogueOnEvent_55.Enabled", "box_IsValueNil_v3_10.Entity", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(4, params)
  l1:SetParentGraph(nil)
end
function export:f_box_RequestPhoneConversation_45_Completed()
  local l0, l1
  l0 = self.box_RequestPhoneConversation_45
  l1 = self.box_MultipleOR_41
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|848272050", "848272050", "ASLT_PMGMain", "box_RequestPhoneConversation_45.Completed", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 2)
end
function export:f_box_RequestPhoneConversation_45_Failed()
  local l0, l1
  l0 = self.box_RequestPhoneConversation_45
  l1 = self.box_MultipleOR_41
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|239727753", "239727753", "ASLT_PMGMain", "box_RequestPhoneConversation_45.Failed", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 3)
end
function export:f_box_PreconditionListener_71_Enabled()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_90()
  l0 = self.box_PreconditionListener_71
  l1 = self.box_PreconditionListener_90
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|42362020", "42362020", "ASLT_PMGMain", "box_PreconditionListener_71.Enabled", "box_PreconditionListener_90.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_PreconditionListener_71_PreconditionMet()
  local l0, l1
  l0 = self.box_PreconditionListener_71
  l1 = self.box_MultipleOR_69
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1533587458", "1533587458", "ASLT_PMGMain", "box_PreconditionListener_71.PreconditionMet", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 2)
end
function export:f_box_OutputOrder_v2_1_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Ops_ProximityTrigger_Listener_v3_8()
  l0 = self.box_Ops_ProximityTrigger_Listener_v3_8
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1070659305", "1070659305", "ASLT_PMGMain", "box_OutputOrder_v2_1.Out", "box_Ops_ProximityTrigger_Listener_v3_8.Disable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_1_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_SetActivityFact_7()
  l0 = Boxes["13904165977888905445"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|119931601", "119931601", "ASLT_PMGMain", "box_OutputOrder_v2_1.Out", "box_SetActivityFact_7.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_1_Out_2()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Print_v2_11()
  l0 = Boxes["8578475447439923801"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|245413817", "245413817", "ASLT_PMGMain", "box_OutputOrder_v2_1.Out", "box_Print_v2_11.ToScreen", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Lib_Aslt_IsAssault_42_IsASLT01()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityState_v2_114()
  l0 = self.box_Lib_Aslt_IsAssault_42
  l1 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1677793108", "1677793108", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_42.IsASLT01", "box_GetActivityState_v2_114.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Lib_Aslt_IsAssault_42_IsASLT02()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityState_v2_115()
  l0 = self.box_Lib_Aslt_IsAssault_42
  l1 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1722899177", "1722899177", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_42.IsASLT02", "box_GetActivityState_v2_115.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Lib_Aslt_IsAssault_42_IsASLT03()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityState_v2_116()
  l0 = self.box_Lib_Aslt_IsAssault_42
  l1 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1676415807", "1676415807", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_42.IsASLT03", "box_GetActivityState_v2_116.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Lib_Aslt_IsAssault_42_IsASLT05()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityState_v2_117()
  l0 = self.box_Lib_Aslt_IsAssault_42
  l1 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1326121557", "1326121557", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_42.IsASLT05", "box_GetActivityState_v2_117.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Lib_Aslt_IsAssault_42_IsASLT06()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityState_v2_118()
  l0 = self.box_Lib_Aslt_IsAssault_42
  l1 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|404804606", "404804606", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_42.IsASLT06", "box_GetActivityState_v2_118.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MessageListener_v3_104_Enabled()
  local params, l0, l1
  params = self:OnEnter_box_MessageListener_v3_106()
  l0 = self.box_MessageListener_v3_104
  l1 = self.box_MessageListener_v3_106
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1996062526", "1996062526", "ASLT_PMGMain", "box_MessageListener_v3_104.Enabled", "box_MessageListener_v3_106.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_MessageListener_v3_104_Received()
  local params, l0, l1
  params = self:OnEnter_box_Delay_v5_75()
  l0 = self.box_MessageListener_v3_104
  l1 = self.box_Delay_v5_75
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|912891281", "912891281", "ASLT_PMGMain", "box_MessageListener_v3_104.Received", "box_Delay_v5_75.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_GetActivityState_v2_115_Active()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  params = self:OnEnter_box_RequestPhoneConversation_45()
  l0 = self.box_RequestPhoneConversation_45
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1544953400", "1544953400", "ASLT_PMGMain", "box_GetActivityState_v2_115.Active", "box_RequestPhoneConversation_45.Start", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_GetActivityFact_128_FactNotSet()
  local l0
  l0 = Boxes["13904194869060163813"]
  local clone = l0
  l0 = self.box_MultipleOR_130
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1174701063", "1174701063", "ASLT_PMGMain", "box_GetActivityFact_128.FactNotSet", "box_MultipleOR_130.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 3)
end
function export:f_box_MultipleOR_2_Out()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_122()
  l0 = self.box_MultipleOR_2
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1488468286", "1488468286", "ASLT_PMGMain", "box_MultipleOR_2.Out", "box_OutputOrder_v2_122.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_GetInventoryItemQuantity_23_Out()
  local params, l0
  self:OnExit_box_GetInventoryItemQuantity_23_Out()
  l0 = Boxes["1451683877634324830"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_24()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1921413906", "1921413906", "ASLT_PMGMain", "box_GetInventoryItemQuantity_23.Out", "box_Compare_Integers_24.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_GetActivityState_v2_140_Active()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_153
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1392747015", "1392747015", "ASLT_PMGMain", "box_GetActivityState_v2_140.Active", "box_MultipleOR_153.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_GetActivityState_v2_140_Unavailable()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_153
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|622219087", "622219087", "ASLT_PMGMain", "box_GetActivityState_v2_140.Unavailable", "box_MultipleOR_153.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_GroupSizeListener_v6_30_Enabled()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_96()
  l0 = self.box_GroupSizeListener_v6_30
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|738474892", "738474892", "ASLT_PMGMain", "box_GroupSizeListener_v6_30.Enabled", "box_OutputOrder_v2_96.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_GroupSizeListener_v6_30_MemberAdded()
  local l0, l1
  l0 = self.box_GroupSizeListener_v6_30
  l1 = self.box_MultipleOR_51
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|544590507", "544590507", "ASLT_PMGMain", "box_GroupSizeListener_v6_30.MemberAdded", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_GroupSizeListener_v6_30_MemberSpawned()
  local l0, l1
  l0 = self.box_GroupSizeListener_v6_30
  l1 = self.box_MultipleOR_51
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|509736497", "509736497", "ASLT_PMGMain", "box_GroupSizeListener_v6_30.MemberSpawned", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_GetActivityState_v2_54_Inactive()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_134
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1492409915", "1492409915", "ASLT_PMGMain", "box_GetActivityState_v2_54.Inactive", "box_MultipleOR_134.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_GetActivityState_v2_54_Unavailable()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_134
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1328684233", "1328684233", "ASLT_PMGMain", "box_GetActivityState_v2_54.Unavailable", "box_MultipleOR_134.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_Compare_Integers_119_A_ne_B()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  params = self:OnEnter_box_GetActivityFact_26()
  l0 = Boxes["13904194869060163813"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1447000148", "1447000148", "ASLT_PMGMain", "box_Compare_Integers_119.A_ne_B", "box_GetActivityFact_26.GetFact", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_GetActivityFact_129_FactNotSet()
  local l0
  l0 = Boxes["13904194869060163813"]
  local clone = l0
  l0 = self.box_MultipleOR_130
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|781001262", "781001262", "ASLT_PMGMain", "box_GetActivityFact_129.FactNotSet", "box_MultipleOR_130.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 2)
end
function export:f_box_AddActivityObjectiveHint_79_Out()
  local params, l0
  l0 = Boxes["5427364974617541755"]
  local clone = l0
  params = self:OnEnter_box_MessageListener_v3_83()
  l0 = self.box_MessageListener_v3_83
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|723262162", "723262162", "ASLT_PMGMain", "box_AddActivityObjectiveHint_79.Out", "box_MessageListener_v3_83.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_GetFromGroup_98_Out()
  local params, l0
  self:OnExit_box_GetFromGroup_98_Out()
  l0 = Boxes["13454466678413635966"]
  local clone = l0
  params = self:OnEnter_box_ListLength_v2_120()
  l0 = Boxes["15750412361101265620"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1893560814", "1893560814", "ASLT_PMGMain", "box_GetFromGroup_98.Out", "box_ListLength_v2_120.GetLength", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_PreconditionListener_74_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_Delay_v5_143()
  l0 = self.box_PreconditionListener_74
  l1 = self.box_Delay_v5_143
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1406637106", "1406637106", "ASLT_PMGMain", "box_PreconditionListener_74.PreconditionMet", "box_Delay_v5_143.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_MultipleOR_65_Out()
  local params, l0, l1
  params = self:OnEnter_box_GetInventoryItemQuantity_23()
  l0 = self.box_MultipleOR_65
  l1 = Boxes["1451683877634324830"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|870356071", "870356071", "ASLT_PMGMain", "box_MultipleOR_65.Out", "box_GetInventoryItemQuantity_23.GetNumberOfItems", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_96_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_GroupSizeListener_v6_19()
  l0 = self.box_GroupSizeListener_v6_19
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1072568743", "1072568743", "ASLT_PMGMain", "box_OutputOrder_v2_96.Out", "box_GroupSizeListener_v6_19.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_96_Out_1()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_MultipleOR_97
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1587945521", "1587945521", "ASLT_PMGMain", "box_OutputOrder_v2_96.Out", "box_MultipleOR_97.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_Delay_v5_146_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityState_v2_139()
  l0 = self.box_Delay_v5_146
  l1 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1983711875", "1983711875", "ASLT_PMGMain", "box_Delay_v5_146.TimeElapsed", "box_GetActivityState_v2_139.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_PreconditionListener_91_PreconditionMet()
  local l0, l1
  l0 = self.box_PreconditionListener_91
  l1 = self.box_MultipleOR_94
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|445139923", "445139923", "ASLT_PMGMain", "box_PreconditionListener_91.PreconditionMet", "box_MultipleOR_94.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_PreconditionListener_67_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_Delay_v5_142()
  l0 = self.box_PreconditionListener_67
  l1 = self.box_Delay_v5_142
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1943332358", "1943332358", "ASLT_PMGMain", "box_PreconditionListener_67.PreconditionMet", "box_Delay_v5_142.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_MultipleOR_41_Out()
  local l0, l1
  l0 = self.box_MultipleOR_41
  l1 = self.box_OnceOnly_v3_43
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1885050486", "1885050486", "ASLT_PMGMain", "box_MultipleOR_41.Out", "box_OnceOnly_v3_43.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_GetActivityState_v2_139_Active()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_152
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1755393276", "1755393276", "ASLT_PMGMain", "box_GetActivityState_v2_139.Active", "box_MultipleOR_152.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_GetActivityState_v2_139_Unavailable()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_152
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|123045431", "123045431", "ASLT_PMGMain", "box_GetActivityState_v2_139.Unavailable", "box_MultipleOR_152.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_CoopActivePlayers_60_PlayerAdded()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_61()
  l0 = self.box_CoopActivePlayers_60
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|674763332", "674763332", "ASLT_PMGMain", "box_CoopActivePlayers_60.PlayerAdded", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_GetActivityFact_124_FactNotSet()
  local l0
  l0 = Boxes["13904194869060163813"]
  local clone = l0
  l0 = self.box_MultipleOR_130
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|156954670", "156954670", "ASLT_PMGMain", "box_GetActivityFact_124.FactNotSet", "box_MultipleOR_130.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_RequestPhoneConversation_50_Completed()
  local l0, l1
  l0 = self.box_RequestPhoneConversation_50
  l1 = self.box_MultipleOR_41
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|2145832835", "2145832835", "ASLT_PMGMain", "box_RequestPhoneConversation_50.Completed", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 6)
end
function export:f_box_RequestPhoneConversation_50_Failed()
  local l0, l1
  l0 = self.box_RequestPhoneConversation_50
  l1 = self.box_MultipleOR_41
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|535499396", "535499396", "ASLT_PMGMain", "box_RequestPhoneConversation_50.Failed", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 7)
end
function export:f_box_PreconditionListener_102_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_Delay_v5_144()
  l0 = self.box_PreconditionListener_102
  l1 = self.box_Delay_v5_144
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1808921469", "1808921469", "ASLT_PMGMain", "box_PreconditionListener_102.PreconditionMet", "box_Delay_v5_144.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_Delay_v5_145_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityState_v2_141()
  l0 = self.box_Delay_v5_145
  l1 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1020937766", "1020937766", "ASLT_PMGMain", "box_Delay_v5_145.TimeElapsed", "box_GetActivityState_v2_141.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_95_Out()
  local params, l0, l1
  params = self:OnEnter_box_TaggingModifier_v4_20()
  l0 = self.box_MultipleOR_95
  l1 = Boxes["12605073564839505774"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1393404571", "1393404571", "ASLT_PMGMain", "box_MultipleOR_95.Out", "box_TaggingModifier_v4_20.TagEntity", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
  l1:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_16_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_GroupSizeListener_v6_30()
  l0 = self.box_GroupSizeListener_v6_30
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|456724660", "456724660", "ASLT_PMGMain", "box_OutputOrder_v2_16.Out", "box_GroupSizeListener_v6_30.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_16_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Print_v2_29()
  l0 = Boxes["8578475447439923801"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|825996630", "825996630", "ASLT_PMGMain", "box_OutputOrder_v2_16.Out", "box_Print_v2_29.ToAll", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_GetActivityState_v2_27_Completed()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_Lib_Aslt_IsAssault_42
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|254361512", "254361512", "ASLT_PMGMain", "box_GetActivityState_v2_27.Completed", "box_Lib_Aslt_IsAssault_42.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, {})
end
function export:f_box_MultipleOR_131_Out()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityFact_129()
  l0 = self.box_MultipleOR_131
  l1 = Boxes["13904194869060163813"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|404685353", "404685353", "ASLT_PMGMain", "box_MultipleOR_131.Out", "box_GetActivityFact_129.GetFact", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_GetActivityState_v2_118_Active()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  params = self:OnEnter_box_RequestPhoneConversation_52()
  l0 = self.box_RequestPhoneConversation_52
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1334576782", "1334576782", "ASLT_PMGMain", "box_GetActivityState_v2_118.Active", "box_RequestPhoneConversation_52.Start", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_122_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_GetLocalPlayer_v2_109()
  l0 = Boxes["238599533382071246"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1777592531", "1777592531", "ASLT_PMGMain", "box_OutputOrder_v2_122.Out", "box_GetLocalPlayer_v2_109.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_122_Out_1()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_ActivityInitialized_3
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1573903867", "1573903867", "ASLT_PMGMain", "box_OutputOrder_v2_122.Out", "box_ActivityInitialized_3.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, {})
end
function export:f_box_RequestPhoneConversation_31_Completed()
  local l0, l1
  l0 = self.box_RequestPhoneConversation_31
  l1 = self.box_MultipleOR_41
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|20571377", "20571377", "ASLT_PMGMain", "box_RequestPhoneConversation_31.Completed", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_RequestPhoneConversation_31_Failed()
  local l0, l1
  l0 = self.box_RequestPhoneConversation_31
  l1 = self.box_MultipleOR_41
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1199643941", "1199643941", "ASLT_PMGMain", "box_RequestPhoneConversation_31.Failed", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_PreconditionListener_62_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_Delay_v5_147()
  l0 = self.box_PreconditionListener_62
  l1 = self.box_Delay_v5_147
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|700619415", "700619415", "ASLT_PMGMain", "box_PreconditionListener_62.PreconditionMet", "box_Delay_v5_147.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_EntityEventListener_v2_108_Out()
  local params, l0, l1
  params = self:OnEnter_box_MultipleAND_v2_121()
  l0 = self.box_EntityEventListener_v2_108
  l1 = self.box_MultipleAND_v2_121
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1019817383", "1019817383", "ASLT_PMGMain", "box_EntityEventListener_v2_108.Out", "box_MultipleAND_v2_121.Condition", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, params, 1)
end
function export:f_box_Compare_Integers_24_A_ge_B()
  local l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  l0 = self.box_MultipleOR_25
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|647815536", "647815536", "ASLT_PMGMain", "box_Compare_Integers_24.A_ge_B", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_MultipleOR_33_Out()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityFact_125()
  l0 = self.box_MultipleOR_33
  l1 = Boxes["13904194869060163813"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1197260602", "1197260602", "ASLT_PMGMain", "box_MultipleOR_33.Out", "box_GetActivityFact_125.GetFact", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_132_Out()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityFact_128()
  l0 = self.box_MultipleOR_132
  l1 = Boxes["13904194869060163813"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1021411715", "1021411715", "ASLT_PMGMain", "box_MultipleOR_132.Out", "box_GetActivityFact_128.GetFact", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Ops_ProximityTrigger_Listener_v3_8_Entered()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_1()
  l0 = self.box_Ops_ProximityTrigger_Listener_v3_8
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1323480161", "1323480161", "ASLT_PMGMain", "box_Ops_ProximityTrigger_Listener_v3_8.Entered", "box_OutputOrder_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_151_Out()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityState_v2_35()
  l0 = self.box_MultipleOR_151
  l1 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1843372580", "1843372580", "ASLT_PMGMain", "box_MultipleOR_151.Out", "box_GetActivityState_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_PreconditionListener_76_Enabled()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_86()
  l0 = self.box_PreconditionListener_76
  l1 = self.box_PreconditionListener_86
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1735284540", "1735284540", "ASLT_PMGMain", "box_PreconditionListener_76.Enabled", "box_PreconditionListener_86.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_PreconditionListener_76_PreconditionMet()
  local l0, l1
  l0 = self.box_PreconditionListener_76
  l1 = self.box_MultipleOR_69
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|445338216", "445338216", "ASLT_PMGMain", "box_PreconditionListener_76.PreconditionMet", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 4)
end
function export:f_box_Delay_v5_147_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityState_v2_140()
  l0 = self.box_Delay_v5_147
  l1 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|297880288", "297880288", "ASLT_PMGMain", "box_Delay_v5_147.TimeElapsed", "box_GetActivityState_v2_140.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_OnceOnly_v3_43_Out_0()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_16()
  l0 = self.box_OnceOnly_v3_43
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|859295674", "859295674", "ASLT_PMGMain", "box_OnceOnly_v3_43.Out", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Delay_v5_103_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_RequestPhoneConversation_100()
  l0 = self.box_Delay_v5_103
  l1 = self.box_RequestPhoneConversation_100
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1726253668", "1726253668", "ASLT_PMGMain", "box_Delay_v5_103.TimeElapsed", "box_RequestPhoneConversation_100.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_IsValueNil_v3_82_No()
  local params, l0
  l0 = Boxes["16744489399474769823"]
  local clone = l0
  params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_84()
  l0 = Boxes["12441205433938900539"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1402616639", "1402616639", "ASLT_PMGMain", "box_IsValueNil_v3_82.No", "box_ActivityObjectiveMarkerModifier_v3_84.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_box_PreconditionListener_90_PreconditionMet()
  local l0, l1
  l0 = self.box_PreconditionListener_90
  l1 = self.box_MultipleOR_94
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1206628525", "1206628525", "ASLT_PMGMain", "box_PreconditionListener_90.PreconditionMet", "box_MultipleOR_94.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 2)
end
function export:f_box_GroupSizeListener_v6_19_Enabled()
  local l0, l1
  l0 = self.box_GroupSizeListener_v6_19
  l1 = self.box_MultipleOR_95
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1901100076", "1901100076", "ASLT_PMGMain", "box_GroupSizeListener_v6_19.Enabled", "box_MultipleOR_95.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_GroupSizeListener_v6_19_MemberAdded()
  local l0, l1
  l0 = self.box_GroupSizeListener_v6_19
  l1 = self.box_MultipleOR_44
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|119291841", "119291841", "ASLT_PMGMain", "box_GroupSizeListener_v6_19.MemberAdded", "box_MultipleOR_44.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_GroupSizeListener_v6_19_MemberSpawned()
  local l0, l1
  l0 = self.box_GroupSizeListener_v6_19
  l1 = self.box_MultipleOR_44
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1337056672", "1337056672", "ASLT_PMGMain", "box_GroupSizeListener_v6_19.MemberSpawned", "box_MultipleOR_44.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_MultipleOR_113_Out()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_56()
  l0 = self.box_MultipleOR_113
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1522377901", "1522377901", "ASLT_PMGMain", "box_MultipleOR_113.Out", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_SetActivityFact_21_Out()
  local params, l0
  l0 = Boxes["13904165977888905445"]
  local clone = l0
  params = self:OnEnter_box_Delay_v5_135()
  l0 = self.box_Delay_v5_135
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|753447430", "753447430", "ASLT_PMGMain", "box_SetActivityFact_21.Out", "box_Delay_v5_135.Start", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(2, params)
end
function export:f_box_OnceOnly_v3_17_Out_0()
  local params, l0, l1
  params = self:OnEnter_box_MultipleAND_v2_121()
  l0 = self.box_OnceOnly_v3_17
  l1 = self.box_MultipleAND_v2_121
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1359578678", "1359578678", "ASLT_PMGMain", "box_OnceOnly_v3_17.Out", "box_MultipleAND_v2_121.Condition", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, params, 0)
end
function export:f_box_GetActivityState_v2_53_Inactive()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_133
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1329877806", "1329877806", "ASLT_PMGMain", "box_GetActivityState_v2_53.Inactive", "box_MultipleOR_133.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_GetActivityState_v2_53_Unavailable()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_133
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|31123256", "31123256", "ASLT_PMGMain", "box_GetActivityState_v2_53.Unavailable", "box_MultipleOR_133.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_GetActivityState_v2_141_Active()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_151
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|2070737200", "2070737200", "ASLT_PMGMain", "box_GetActivityState_v2_141.Active", "box_MultipleOR_151.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_GetActivityState_v2_141_Unavailable()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_151
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1300209272", "1300209272", "ASLT_PMGMain", "box_GetActivityState_v2_141.Unavailable", "box_MultipleOR_151.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_OutputOrder_v2_107_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_GroupSizeListener_v6_30()
  l0 = self.box_GroupSizeListener_v6_30
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|296653517", "296653517", "ASLT_PMGMain", "box_OutputOrder_v2_107.Out", "box_GroupSizeListener_v6_30.Disable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_107_Out_1()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_MultipleOR_97
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1802590934", "1802590934", "ASLT_PMGMain", "box_OutputOrder_v2_107.Out", "box_MultipleOR_97.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_GetActivityState_v2_5_Active()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_110
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1071167334", "1071167334", "ASLT_PMGMain", "box_GetActivityState_v2_5.Active", "box_MultipleOR_110.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 2)
end
function export:f_box_GetActivityState_v2_5_Inactive()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_110
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|572237703", "572237703", "ASLT_PMGMain", "box_GetActivityState_v2_5.Inactive", "box_MultipleOR_110.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_GetActivityState_v2_5_Unavailable()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_110
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1085012974", "1085012974", "ASLT_PMGMain", "box_GetActivityState_v2_5.Unavailable", "box_MultipleOR_110.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_Lib_Aslt_IsAssault_37_IsASLT01()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_102()
  l0 = self.box_Lib_Aslt_IsAssault_37
  l1 = self.box_PreconditionListener_102
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1554586641", "1554586641", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_37.IsASLT01", "box_PreconditionListener_102.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_Lib_Aslt_IsAssault_37_IsASLT02()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_74()
  l0 = self.box_Lib_Aslt_IsAssault_37
  l1 = self.box_PreconditionListener_74
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|58190371", "58190371", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_37.IsASLT02", "box_PreconditionListener_74.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_Lib_Aslt_IsAssault_37_IsASLT03()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_67()
  l0 = self.box_Lib_Aslt_IsAssault_37
  l1 = self.box_PreconditionListener_67
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|404874486", "404874486", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_37.IsASLT03", "box_PreconditionListener_67.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_Lib_Aslt_IsAssault_37_IsASLT04()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_72()
  l0 = self.box_Lib_Aslt_IsAssault_37
  l1 = self.box_PreconditionListener_72
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|721127938", "721127938", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_37.IsASLT04", "box_PreconditionListener_72.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_Lib_Aslt_IsAssault_37_IsASLT05()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_70()
  l0 = self.box_Lib_Aslt_IsAssault_37
  l1 = self.box_PreconditionListener_70
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|2138176523", "2138176523", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_37.IsASLT05", "box_PreconditionListener_70.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_Lib_Aslt_IsAssault_37_IsASLT06()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_62()
  l0 = self.box_Lib_Aslt_IsAssault_37
  l1 = self.box_PreconditionListener_62
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|883111569", "883111569", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_37.IsASLT06", "box_PreconditionListener_62.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_Delay_v5_135_TimeElapsed()
  local l0, l1
  l0 = self.box_Delay_v5_135
  l1 = self.box_Lib_Aslt_IsAssault_37
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|343617370", "343617370", "ASLT_PMGMain", "box_Delay_v5_135.TimeElapsed", "box_Lib_Aslt_IsAssault_37.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, {})
end
function export:f_box_PreconditionListener_85_PreconditionMet()
  local l0, l1
  l0 = self.box_PreconditionListener_85
  l1 = self.box_MultipleOR_94
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|2099047218", "2099047218", "ASLT_PMGMain", "box_PreconditionListener_85.PreconditionMet", "box_MultipleOR_94.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 3)
end
function export:f_box_PreconditionListener_73_Enabled()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_85()
  l0 = self.box_PreconditionListener_73
  l1 = self.box_PreconditionListener_85
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|922715353", "922715353", "ASLT_PMGMain", "box_PreconditionListener_73.Enabled", "box_PreconditionListener_85.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_PreconditionListener_73_PreconditionMet()
  local l0, l1
  l0 = self.box_PreconditionListener_73
  l1 = self.box_MultipleOR_69
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|662728215", "662728215", "ASLT_PMGMain", "box_PreconditionListener_73.PreconditionMet", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 3)
end
function export:f_box_SetActivityFact_7_Out()
  local params, l0
  l0 = Boxes["13904165977888905445"]
  local clone = l0
  params = self:OnEnter_box_MessageListener_v3_57()
  l0 = self.box_MessageListener_v3_57
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1210856932", "1210856932", "ASLT_PMGMain", "box_SetActivityFact_7.Out", "box_MessageListener_v3_57.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_EndActivityObjective_v2_80_Out()
  local l0
  l0 = Boxes["13547473717942993420"]
  local clone = l0
  l0 = self.box_MultipleOR_93
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|653061599", "653061599", "ASLT_PMGMain", "box_EndActivityObjective_v2_80.Out", "box_MultipleOR_93.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_RequestPhoneConversation_47_Completed()
  local l0, l1
  l0 = self.box_RequestPhoneConversation_47
  l1 = self.box_MultipleOR_41
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1010255681", "1010255681", "ASLT_PMGMain", "box_RequestPhoneConversation_47.Completed", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 4)
end
function export:f_box_RequestPhoneConversation_47_Failed()
  local l0, l1
  l0 = self.box_RequestPhoneConversation_47
  l1 = self.box_MultipleOR_41
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|254196270", "254196270", "ASLT_PMGMain", "box_RequestPhoneConversation_47.Failed", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 5)
end
function export:f_box_MultipleOR_94_Out()
  local params, l0, l1
  params = self:OnEnter_box_EndActivityObjective_v2_92()
  l0 = self.box_MultipleOR_94
  l1 = Boxes["13547473717942993420"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|305291523", "305291523", "ASLT_PMGMain", "box_MultipleOR_94.Out", "box_EndActivityObjective_v2_92.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_148_Out()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityState_v2_48()
  l0 = self.box_MultipleOR_148
  l1 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|873265087", "873265087", "ASLT_PMGMain", "box_MultipleOR_148.Out", "box_GetActivityState_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_152_Out()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityState_v2_53()
  l0 = self.box_MultipleOR_152
  l1 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|148501667", "148501667", "ASLT_PMGMain", "box_MultipleOR_152.Out", "box_GetActivityState_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_150_Out()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityState_v2_49()
  l0 = self.box_MultipleOR_150
  l1 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1555146634", "1555146634", "ASLT_PMGMain", "box_MultipleOR_150.Out", "box_GetActivityState_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Delay_v5_75_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_RequestPhoneConversation_81()
  l0 = self.box_Delay_v5_75
  l1 = self.box_RequestPhoneConversation_81
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1862305929", "1862305929", "ASLT_PMGMain", "box_Delay_v5_75.TimeElapsed", "box_RequestPhoneConversation_81.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_MessageListener_v3_83_Enabled()
  local l0, l1
  l0 = self.box_MessageListener_v3_83
  l1 = self.box_Lib_Aslt_IsAssault_58
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|320686973", "320686973", "ASLT_PMGMain", "box_MessageListener_v3_83.Enabled", "box_Lib_Aslt_IsAssault_58.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, {})
end
function export:f_box_MessageListener_v3_83_Received()
  local params, l0, l1
  params = self:OnEnter_box_IsValueNil_v3_82()
  l0 = self.box_MessageListener_v3_83
  l1 = Boxes["16744489399474769823"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1645943405", "1645943405", "ASLT_PMGMain", "box_MessageListener_v3_83.Received", "box_IsValueNil_v3_82.Entity", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(4, params)
  l1:SetParentGraph(nil)
end
function export:f_box_GetActivityState_v2_117_Active()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  params = self:OnEnter_box_RequestPhoneConversation_50()
  l0 = self.box_RequestPhoneConversation_50
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1429024142", "1429024142", "ASLT_PMGMain", "box_GetActivityState_v2_117.Active", "box_RequestPhoneConversation_50.Start", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_MultipleOR_97_Out()
  local params, l0, l1
  params = self:OnEnter_box_TaggingModifier_v4_28()
  l0 = self.box_MultipleOR_97
  l1 = Boxes["12605073564839505774"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1150693592", "1150693592", "ASLT_PMGMain", "box_MultipleOR_97.Out", "box_TaggingModifier_v4_28.TagEntity", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_153_Out()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityState_v2_54()
  l0 = self.box_MultipleOR_153
  l1 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1338808509", "1338808509", "ASLT_PMGMain", "box_MultipleOR_153.Out", "box_GetActivityState_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_AddActivityObjective_v4_78_Out()
  local params, l0
  l0 = Boxes["13549342794267410956"]
  local clone = l0
  params = self:OnEnter_box_AddActivityObjectiveHint_79()
  l0 = Boxes["5427364974617541755"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1099322446", "1099322446", "ASLT_PMGMain", "box_AddActivityObjective_v4_78.Out", "box_AddActivityObjectiveHint_79.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_GetActivityState_v2_116_Active()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  params = self:OnEnter_box_RequestPhoneConversation_47()
  l0 = self.box_RequestPhoneConversation_47
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|231339716", "231339716", "ASLT_PMGMain", "box_GetActivityState_v2_116.Active", "box_RequestPhoneConversation_47.Start", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_36_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_PawnReadyListener_38()
  l0 = self.box_PawnReadyListener_38
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|950761716", "950761716", "ASLT_PMGMain", "box_OutputOrder_v2_36.Out", "box_PawnReadyListener_38.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_OutputOrder_v2_36_Out_2()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_GetOperationDifficultyLevel_v2_39()
  l0 = Boxes["2501178966389413891"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|316531496", "316531496", "ASLT_PMGMain", "box_OutputOrder_v2_36.Out", "box_GetOperationDifficultyLevel_v2_39.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_EndActivityObjective_v2_92_Out()
  local l0
  l0 = Boxes["13547473717942993420"]
  local clone = l0
  l0 = self.box_MultipleOR_93
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|301689708", "301689708", "ASLT_PMGMain", "box_EndActivityObjective_v2_92.Out", "box_MultipleOR_93.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_MessageListener_v3_57_Enabled()
  local params, l0, l1
  params = self:OnEnter_box_MessageListener_v3_104()
  l0 = self.box_MessageListener_v3_57
  l1 = self.box_MessageListener_v3_104
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|906202525", "906202525", "ASLT_PMGMain", "box_MessageListener_v3_57.Enabled", "box_MessageListener_v3_104.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_MessageListener_v3_57_Received()
  local params, l0, l1
  params = self:OnEnter_box_ActivityForceAndLockTracking_59()
  l0 = self.box_MessageListener_v3_57
  l1 = Boxes["3602759992400399369"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|707736163", "707736163", "ASLT_PMGMain", "box_MessageListener_v3_57.Received", "box_ActivityForceAndLockTracking_59.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
  l1:SetParentGraph(nil)
end
function export:f_box_GetOperationDifficultyLevel_v2_39_Mastery1()
  local l0
  l0 = Boxes["2501178966389413891"]
  local clone = l0
  l0 = self.box_MultipleOR_40
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|634739614", "634739614", "ASLT_PMGMain", "box_GetOperationDifficultyLevel_v2_39.Mastery1", "box_MultipleOR_40.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_GetOperationDifficultyLevel_v2_39_Mastery2()
  local l0
  l0 = Boxes["2501178966389413891"]
  local clone = l0
  l0 = self.box_MultipleOR_40
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|846171474", "846171474", "ASLT_PMGMain", "box_GetOperationDifficultyLevel_v2_39.Mastery2", "box_MultipleOR_40.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_GetOperationDifficultyLevel_v2_39_Mastery3()
  local l0
  l0 = Boxes["2501178966389413891"]
  local clone = l0
  l0 = self.box_MultipleOR_40
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|214333327", "214333327", "ASLT_PMGMain", "box_GetOperationDifficultyLevel_v2_39.Mastery3", "box_MultipleOR_40.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 2)
end
function export:f_box_Lib_Aslt_IsAssault_111_IsASLT01()
  local l0, l1
  l0 = self.box_Lib_Aslt_IsAssault_111
  l1 = self.box_MultipleOR_113
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|954555278", "954555278", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_111.IsASLT01", "box_MultipleOR_113.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_Lib_Aslt_IsAssault_111_IsASLT02()
  local l0, l1
  l0 = self.box_Lib_Aslt_IsAssault_111
  l1 = self.box_MultipleOR_113
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1142120942", "1142120942", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_111.IsASLT02", "box_MultipleOR_113.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_Lib_Aslt_IsAssault_111_IsASLT03()
  local l0, l1
  l0 = self.box_Lib_Aslt_IsAssault_111
  l1 = self.box_MultipleOR_113
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1277731550", "1277731550", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_111.IsASLT03", "box_MultipleOR_113.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 2)
end
function export:f_box_Lib_Aslt_IsAssault_111_IsASLT05()
  local l0, l1
  l0 = self.box_Lib_Aslt_IsAssault_111
  l1 = self.box_MultipleOR_113
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|373870374", "373870374", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_111.IsASLT05", "box_MultipleOR_113.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 3)
end
function export:f_box_Lib_Aslt_IsAssault_111_IsASLT06()
  local l0, l1
  l0 = self.box_Lib_Aslt_IsAssault_111
  l1 = self.box_MultipleOR_113
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|97709788", "97709788", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_111.IsASLT06", "box_MultipleOR_113.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 4)
end
function export:f_box_MultipleAND_v2_121_Out()
  local params, l0, l1
  params = self:OnEnter_box_AddActivityObjective_v4_78()
  l0 = self.box_MultipleAND_v2_121
  l1 = Boxes["13549342794267410956"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|422715569", "422715569", "ASLT_PMGMain", "box_MultipleAND_v2_121.Out", "box_AddActivityObjective_v4_78.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_93_Out()
  local params, l0, l1
  params = self:OnEnter_box_Simple_Node_87()
  l0 = self.box_MultipleOR_93
  l1 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1538244934", "1538244934", "ASLT_PMGMain", "box_MultipleOR_93.Out", "box_Simple_Node_87.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Delay_v5_142_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityState_v2_138()
  l0 = self.box_Delay_v5_142
  l1 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|13719241", "13719241", "ASLT_PMGMain", "box_Delay_v5_142.TimeElapsed", "box_GetActivityState_v2_138.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Ops_ProximityTrigger_Listener_v3_14_Entered()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_15()
  l0 = self.box_Ops_ProximityTrigger_Listener_v3_14
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1143890109", "1143890109", "ASLT_PMGMain", "box_Ops_ProximityTrigger_Listener_v3_14.Entered", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_110_Out()
  local l0, l1
  l0 = self.box_MultipleOR_110
  l1 = self.box_OnceOnly_v3_112
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1420877483", "1420877483", "ASLT_PMGMain", "box_MultipleOR_110.Out", "box_OnceOnly_v3_112.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_PreconditionListener_89_PreconditionMet()
  local l0, l1
  l0 = self.box_PreconditionListener_89
  l1 = self.box_MultipleOR_94
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1095420649", "1095420649", "ASLT_PMGMain", "box_PreconditionListener_89.PreconditionMet", "box_MultipleOR_94.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_GetActivityFact_125_FactNotSet()
  local l0
  l0 = Boxes["13904194869060163813"]
  local clone = l0
  l0 = self.box_MultipleOR_130
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|563130732", "563130732", "ASLT_PMGMain", "box_GetActivityFact_125.FactNotSet", "box_MultipleOR_130.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_PreconditionListener_77_Enabled()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_88()
  l0 = self.box_PreconditionListener_77
  l1 = self.box_PreconditionListener_88
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|617904384", "617904384", "ASLT_PMGMain", "box_PreconditionListener_77.Enabled", "box_PreconditionListener_88.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_PreconditionListener_77_PreconditionMet()
  local l0, l1
  l0 = self.box_PreconditionListener_77
  l1 = self.box_MultipleOR_69
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1991862039", "1991862039", "ASLT_PMGMain", "box_PreconditionListener_77.PreconditionMet", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 5)
end
function export:f_box_MessageListener_v3_105_Received()
  local params, l0, l1
  params = self:OnEnter_box_Delay_v5_103()
  l0 = self.box_MessageListener_v3_105
  l1 = self.box_Delay_v5_103
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1618818411", "1618818411", "ASLT_PMGMain", "box_MessageListener_v3_105.Received", "box_Delay_v5_103.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_MultipleOR_149_Out()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityState_v2_32()
  l0 = self.box_MultipleOR_149
  l1 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1998528011", "1998528011", "ASLT_PMGMain", "box_MultipleOR_149.Out", "box_GetActivityState_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_GetActivityFact_127_FactNotSet()
  local l0
  l0 = Boxes["13904194869060163813"]
  local clone = l0
  l0 = self.box_MultipleOR_130
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1940709328", "1940709328", "ASLT_PMGMain", "box_GetActivityFact_127.FactNotSet", "box_MultipleOR_130.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 5)
end
function export:f_box_OutputOrder_v2_64_Out_0()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_MultipleOR_65
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1562738238", "1562738238", "ASLT_PMGMain", "box_OutputOrder_v2_64.Out", "box_MultipleOR_65.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_OutputOrder_v2_64_Out_1()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_CoopActivePlayers_60
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|262498850", "262498850", "ASLT_PMGMain", "box_OutputOrder_v2_64.Out", "box_CoopActivePlayers_60.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, {})
end
function export:f_box_Compare_Integers_154_A_ge_B()
  local l0
  l0 = Boxes["3063960780267220778"]
  local clone = l0
  l0 = self.box_MultipleOR_25
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1851898677", "1851898677", "ASLT_PMGMain", "box_Compare_Integers_154.A_ge_B", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_GetActivityState_v2_136_Active()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_149
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|437311714", "437311714", "ASLT_PMGMain", "box_GetActivityState_v2_136.Active", "box_MultipleOR_149.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_GetActivityState_v2_136_Unavailable()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_149
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1453737678", "1453737678", "ASLT_PMGMain", "box_GetActivityState_v2_136.Unavailable", "box_MultipleOR_149.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_RequestPhoneConversation_52_Completed()
  local l0, l1
  l0 = self.box_RequestPhoneConversation_52
  l1 = self.box_MultipleOR_41
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|953733544", "953733544", "ASLT_PMGMain", "box_RequestPhoneConversation_52.Completed", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 8)
end
function export:f_box_RequestPhoneConversation_52_Failed()
  local l0, l1
  l0 = self.box_RequestPhoneConversation_52
  l1 = self.box_MultipleOR_41
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|29857684", "29857684", "ASLT_PMGMain", "box_RequestPhoneConversation_52.Failed", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 9)
end
function export:f_box_OutputOrder_v2_56_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_GetActivityState_v2_5()
  l0 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|430912466", "430912466", "ASLT_PMGMain", "box_OutputOrder_v2_56.Out", "box_GetActivityState_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_56_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_IsValueNil_v3_12()
  l0 = Boxes["16744489399474769823"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|710349845", "710349845", "ASLT_PMGMain", "box_OutputOrder_v2_56.Out", "box_IsValueNil_v3_12.Entity", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(4, params)
  l0:SetParentGraph(nil)
end
function export:f_box_GetActivityState_v2_114_Active()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  params = self:OnEnter_box_RequestPhoneConversation_31()
  l0 = self.box_RequestPhoneConversation_31
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1319666510", "1319666510", "ASLT_PMGMain", "box_GetActivityState_v2_114.Active", "box_RequestPhoneConversation_31.Start", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_IsValueNil_v3_10_No()
  local params, l0
  l0 = Boxes["16744489399474769823"]
  local clone = l0
  params = self:OnEnter_box_Ops_ProximityTrigger_Listener_v3_8()
  l0 = self.box_Ops_ProximityTrigger_Listener_v3_8
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|17644199", "17644199", "ASLT_PMGMain", "box_IsValueNil_v3_10.No", "box_Ops_ProximityTrigger_Listener_v3_8.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_GetActivityState_v2_35_Inactive()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_132
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1691682623", "1691682623", "ASLT_PMGMain", "box_GetActivityState_v2_35.Inactive", "box_MultipleOR_132.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_GetActivityState_v2_35_Unavailable()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_132
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|789585824", "789585824", "ASLT_PMGMain", "box_GetActivityState_v2_35.Unavailable", "box_MultipleOR_132.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_PreconditionListener_70_PreconditionMet()
  local params, l0, l1
  params = self:OnEnter_box_Delay_v5_146()
  l0 = self.box_PreconditionListener_70
  l1 = self.box_Delay_v5_146
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1517540152", "1517540152", "ASLT_PMGMain", "box_PreconditionListener_70.PreconditionMet", "box_Delay_v5_146.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(2, params)
end
function export:f_box_ActivityInitialized_3_Out()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_36()
  l0 = self.box_ActivityInitialized_3
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|648190399", "648190399", "ASLT_PMGMain", "box_ActivityInitialized_3.Out", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_OnceOnly_v3_112_Out_0()
  local params, l0, l1
  params = self:OnEnter_box_Lib_Aslt_StartCallDialogueOnEvent_55()
  l0 = self.box_OnceOnly_v3_112
  l1 = self.box_Lib_Aslt_StartCallDialogueOnEvent_55
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|2088334713", "2088334713", "ASLT_PMGMain", "box_OnceOnly_v3_112.Out", "box_Lib_Aslt_StartCallDialogueOnEvent_55.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
end
function export:f_box_MultipleOR_69_Out()
  local params, l0, l1
  params = self:OnEnter_box_SetActivityFact_63()
  l0 = self.box_MultipleOR_69
  l1 = Boxes["13904165977888905445"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1894321994", "1894321994", "ASLT_PMGMain", "box_MultipleOR_69.Out", "box_SetActivityFact_63.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_Delay_v5_144_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityState_v2_136()
  l0 = self.box_Delay_v5_144
  l1 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|530348672", "530348672", "ASLT_PMGMain", "box_Delay_v5_144.TimeElapsed", "box_GetActivityState_v2_136.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_134_Out()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityFact_127()
  l0 = self.box_MultipleOR_134
  l1 = Boxes["13904194869060163813"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|2099212161", "2099212161", "ASLT_PMGMain", "box_MultipleOR_134.Out", "box_GetActivityFact_127.GetFact", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_GetActivityState_v2_137_Active()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_148
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|14674879", "14674879", "ASLT_PMGMain", "box_GetActivityState_v2_137.Active", "box_MultipleOR_148.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_GetActivityState_v2_137_Unavailable()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_148
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|26117362", "26117362", "ASLT_PMGMain", "box_GetActivityState_v2_137.Unavailable", "box_MultipleOR_148.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_MultipleOR_130_Out()
  local l0, l1
  l0 = self.box_MultipleOR_130
  l1 = self.box_OnceOnly_v3_17
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1333658660", "1333658660", "ASLT_PMGMain", "box_MultipleOR_130.Out", "box_OnceOnly_v3_17.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_IsValueNil_v3_12_No()
  local params, l0
  l0 = Boxes["16744489399474769823"]
  local clone = l0
  params = self:OnEnter_box_Ops_ProximityTrigger_Listener_v3_14()
  l0 = self.box_Ops_ProximityTrigger_Listener_v3_14
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1274628620", "1274628620", "ASLT_PMGMain", "box_IsValueNil_v3_12.No", "box_Ops_ProximityTrigger_Listener_v3_14.Enable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(1, params)
end
function export:f_box_IsValueNil_v3_12_Yes()
  local params, l0
  l0 = Boxes["16744489399474769823"]
  local clone = l0
  params = self:OnEnter_box_Print_v2_13()
  l0 = Boxes["8578475447439923801"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|370473208", "370473208", "ASLT_PMGMain", "box_IsValueNil_v3_12.Yes", "box_Print_v2_13.ToAll", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_GetActivityFact_26_FactSet()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  local clone = l0
  params = self:OnEnter_box_GetActivityState_v2_27()
  l0 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|772707825", "772707825", "ASLT_PMGMain", "box_GetActivityFact_26.FactSet", "box_GetActivityState_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Delay_v5_143_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_GetActivityState_v2_137()
  l0 = self.box_Delay_v5_143
  l1 = Boxes["10169349419534082083"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1767334974", "1767334974", "ASLT_PMGMain", "box_Delay_v5_143.TimeElapsed", "box_GetActivityState_v2_137.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_GetActivityState_v2_32_Inactive()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_33
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|828462447", "828462447", "ASLT_PMGMain", "box_GetActivityState_v2_32.Inactive", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_GetActivityState_v2_32_Unavailable()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_33
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|426732674", "426732674", "ASLT_PMGMain", "box_GetActivityState_v2_32.Unavailable", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:f_box_OutputOrder_v2_15_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_GetFromGroup_98()
  l0 = Boxes["13454466678413635966"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|542516095", "542516095", "ASLT_PMGMain", "box_OutputOrder_v2_15.Out", "box_GetFromGroup_98.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_OutputOrder_v2_15_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Ops_ProximityTrigger_Listener_v3_14()
  l0 = self.box_Ops_ProximityTrigger_Listener_v3_14
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1788973683", "1788973683", "ASLT_PMGMain", "box_OutputOrder_v2_15.Out", "box_Ops_ProximityTrigger_Listener_v3_14.Disable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_SetActivityFact_63_Out()
  local params, l0
  l0 = Boxes["13904165977888905445"]
  local clone = l0
  params = self:OnEnter_box_EndActivityObjective_v2_80()
  l0 = Boxes["13547473717942993420"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1706528218", "1706528218", "ASLT_PMGMain", "box_SetActivityFact_63.Out", "box_EndActivityObjective_v2_80.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_Delay_v5_101_TimeElapsed()
  local params, l0, l1
  params = self:OnEnter_box_RequestPhoneConversation_99()
  l0 = self.box_Delay_v5_101
  l1 = self.box_RequestPhoneConversation_99
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1325462934", "1325462934", "ASLT_PMGMain", "box_Delay_v5_101.TimeElapsed", "box_RequestPhoneConversation_99.Start", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_Lib_Aslt_IsAssault_58_IsASLT01()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_66()
  l0 = self.box_Lib_Aslt_IsAssault_58
  l1 = self.box_PreconditionListener_66
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|316167310", "316167310", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_58.IsASLT01", "box_PreconditionListener_66.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_Lib_Aslt_IsAssault_58_IsASLT02()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_68()
  l0 = self.box_Lib_Aslt_IsAssault_58
  l1 = self.box_PreconditionListener_68
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1943995492", "1943995492", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_58.IsASLT02", "box_PreconditionListener_68.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_Lib_Aslt_IsAssault_58_IsASLT03()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_71()
  l0 = self.box_Lib_Aslt_IsAssault_58
  l1 = self.box_PreconditionListener_71
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|82334634", "82334634", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_58.IsASLT03", "box_PreconditionListener_71.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_Lib_Aslt_IsAssault_58_IsASLT04()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_73()
  l0 = self.box_Lib_Aslt_IsAssault_58
  l1 = self.box_PreconditionListener_73
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|436109682", "436109682", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_58.IsASLT04", "box_PreconditionListener_73.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_Lib_Aslt_IsAssault_58_IsASLT05()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_76()
  l0 = self.box_Lib_Aslt_IsAssault_58
  l1 = self.box_PreconditionListener_76
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|12265869", "12265869", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_58.IsASLT05", "box_PreconditionListener_76.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_Lib_Aslt_IsAssault_58_IsASLT06()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_77()
  l0 = self.box_Lib_Aslt_IsAssault_58
  l1 = self.box_PreconditionListener_77
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|717412808", "717412808", "ASLT_PMGMain", "box_Lib_Aslt_IsAssault_58.IsASLT06", "box_PreconditionListener_77.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_OutputOrder_v2_34_Out_0()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_InventoryItemListener_22()
  l0 = self.box_InventoryItemListener_22
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|891803955", "891803955", "ASLT_PMGMain", "box_OutputOrder_v2_34.Out", "box_InventoryItemListener_22.Disable", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_OutputOrder_v2_34_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_SetActivityFact_21()
  l0 = Boxes["13904165977888905445"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|983264057", "983264057", "ASLT_PMGMain", "box_OutputOrder_v2_34.Out", "box_SetActivityFact_21.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_ListLength_v2_120_Empty()
  self:OnExit_box_ListLength_v2_120_Empty()
end
function export:f_box_ListLength_v2_120_NotEmpty()
  local params, l0
  self:OnExit_box_ListLength_v2_120_NotEmpty()
  l0 = Boxes["15750412361101265620"]
  local clone = l0
  params = self:OnEnter_box_Compare_Integers_119()
  l0 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|2147004547", "2147004547", "ASLT_PMGMain", "box_ListLength_v2_120.NotEmpty", "box_Compare_Integers_119.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_PreconditionListener_86_PreconditionMet()
  local l0, l1
  l0 = self.box_PreconditionListener_86
  l1 = self.box_MultipleOR_94
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|686973060", "686973060", "ASLT_PMGMain", "box_PreconditionListener_86.PreconditionMet", "box_MultipleOR_94.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 4)
end
function export:f_box_MultipleOR_44_Out()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_46()
  l0 = self.box_MultipleOR_44
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|812828184", "812828184", "ASLT_PMGMain", "box_MultipleOR_44.Out", "box_OutputOrder_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_40_Out()
  local l0, l1
  l0 = self.box_MultipleOR_40
  l1 = self.box_Lib_Aslt_IsAssault_111
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|648830159", "648830159", "ASLT_PMGMain", "box_MultipleOR_40.Out", "box_Lib_Aslt_IsAssault_111.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, {})
end
function export:f_box_PreconditionListener_68_Enabled()
  local params, l0, l1
  params = self:OnEnter_box_PreconditionListener_89()
  l0 = self.box_PreconditionListener_68
  l1 = self.box_PreconditionListener_89
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1527362864", "1527362864", "ASLT_PMGMain", "box_PreconditionListener_68.Enabled", "box_PreconditionListener_89.Enable", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(1, params)
end
function export:f_box_PreconditionListener_68_PreconditionMet()
  local l0, l1
  l0 = self.box_PreconditionListener_68
  l1 = self.box_MultipleOR_69
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1317220035", "1317220035", "ASLT_PMGMain", "box_PreconditionListener_68.PreconditionMet", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_OutputOrder_v2_6_Out_0()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_ActivityAcknowledgeGate_v2_9
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|887783884", "887783884", "ASLT_PMGMain", "box_OutputOrder_v2_6.Out", "box_ActivityAcknowledgeGate_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, {})
end
function export:f_box_OutputOrder_v2_6_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Print_v2_4()
  l0 = Boxes["8578475447439923801"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|527086016", "527086016", "ASLT_PMGMain", "box_OutputOrder_v2_6.Out", "box_Print_v2_4.ToScreen", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_InventoryItemListener_22_Enabled()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_64()
  l0 = self.box_InventoryItemListener_22
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1494954092", "1494954092", "ASLT_PMGMain", "box_InventoryItemListener_22.Enabled", "box_OutputOrder_v2_64.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_InventoryItemListener_22_ItemAdded()
  local params, l0, l1
  params = self:OnEnter_box_Compare_Integers_154()
  l0 = self.box_InventoryItemListener_22
  l1 = Boxes["3063960780267220778"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|961596490", "961596490", "ASLT_PMGMain", "box_InventoryItemListener_22.ItemAdded", "box_Compare_Integers_154.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_MultipleOR_51_Out()
  local params, l0, l1
  params = self:OnEnter_box_OutputOrder_v2_107()
  l0 = self.box_MultipleOR_51
  l1 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|144877414", "144877414", "ASLT_PMGMain", "box_MultipleOR_51.Out", "box_OutputOrder_v2_107.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:f_box_GetLocalPlayer_v2_109_Out()
  local params, l0
  self:OnExit_box_GetLocalPlayer_v2_109_Out()
  l0 = Boxes["238599533382071246"]
  local clone = l0
  params = self:OnEnter_box_EntityEventListener_v2_108()
  l0 = self.box_EntityEventListener_v2_108
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|823091187", "823091187", "ASLT_PMGMain", "box_GetLocalPlayer_v2_109.Out", "box_EntityEventListener_v2_108.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, params)
end
function export:f_box_GetActivityState_v2_49_Inactive()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_131
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1628575024", "1628575024", "ASLT_PMGMain", "box_GetActivityState_v2_49.Inactive", "box_MultipleOR_131.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 1)
end
function export:f_box_GetActivityState_v2_49_Unavailable()
  local l0
  l0 = Boxes["10169349419534082083"]
  local clone = l0
  l0 = self.box_MultipleOR_131
  TraceConnection("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|320388067", "320388067", "ASLT_PMGMain", "box_GetActivityState_v2_49.Unavailable", "box_MultipleOR_131.Input", clone:GetLuaBox(), l0:GetLuaBox())
  l0:ExecDynInt(0, {}, 0)
end
function export:OnEnter_box_Simple_Node_87()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_87")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|@OldChestCleanup")
  l0:SetConnections({
    [0] = self.f_box_Simple_Node_87_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_PreconditionListener_66()
  local params
  params = {
    [0] = true,
    [1] = "9015492607918116",
    [2] = true
  }
  return params
end
function export:OnEnter_box_PreconditionListener_72()
  local params
  params = {
    [0] = true,
    [1] = "9015530491818010",
    [2] = true
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_61()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_61")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|32922357")
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
function export:OnEnter_box_PawnReadyListener_38()
  local params
  params = {
    [0] = true
  }
  return params
end
function export:OnEnter_box_Print_v2_13()
  local params, l0
  l0 = Boxes["8578475447439923801"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Print_v2_13")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|87654922")
  l0:SetConnections({})
  params = {
    [1] = "orange",
    [3] = 15,
    [7] = "C:\\Print.log",
    [8] = ">> The SpecOpsTrigger2 is not set!",
    [9] = true
  }
  return params
end
function export:OnEnter_box_GetActivityState_v2_48()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_48")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|94167338")
  l0:SetConnections({
    [4] = self.f_box_GetActivityState_v2_48_Inactive,
    [6] = self.f_box_GetActivityState_v2_48_Unavailable
  })
  params = {
    [0] = "9015395336000726"
  }
  return params
end
function export:OnEnter_box_GetActivityFact_126()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityFact_126")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|155058241")
  l0:SetConnections({
    [0] = self.f_box_GetActivityFact_126_FactNotSet
  })
  params = {
    [0] = "9015431044187212",
    [1] = "oldchest_looted"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_46()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_46")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|161787864")
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
        [0] = self.f_box_OutputOrder_v2_46_Out_0,
        [1] = self.f_box_OutputOrder_v2_46_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_PreconditionListener_88()
  local params
  params = {
    [0] = true,
    [1] = "9015494354500110",
    [2] = true
  }
  return params
end
function export:OnEnter_box_RequestPhoneConversation_99()
  local params
  params = {
    [0] = "9015530370776179",
    [2] = "9015463113730980",
    [3] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_ActivityForceAndLockTracking_59()
  local params, l0
  l0 = Boxes["3602759992400399369"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ActivityForceAndLockTracking_59")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|230225276")
  l0:SetConnections({})
  params = {}
  return params
end
function export:OnEnter_box_GetActivityState_v2_138()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_138")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|247025025")
  l0:SetConnections({
    [0] = self.f_box_GetActivityState_v2_138_Active,
    [6] = self.f_box_GetActivityState_v2_138_Unavailable
  })
  params = {
    [0] = "9015431042812664"
  }
  return params
end
function export:OnEnter_box_TaggingModifier_v4_28()
  local params, l0
  l0 = Boxes["12605073564839505774"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_TaggingModifier_v4_28")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|271663328")
  l0:SetConnections({})
  params = {
    [0] = "#AD5111F4",
    [1] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_MessageListener_v3_106()
  local params
  params = {
    [0] = true,
    [1] = "aslt_winCall"
  }
  return params
end
function export:OnEnter_box_Lib_Aslt_StartCallDialogueOnEvent_55()
  local params
  params = {
    [1] = "9015430604722666",
    [2] = 7,
    [3] = "BRIEF_END_CALL_DONE"
  }
  return params
end
function export:OnEnter_box_RequestPhoneConversation_45()
  local params
  params = {
    [0] = "9015530370776179",
    [2] = "9015482414221995",
    [3] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_71()
  local params
  params = {
    [0] = true,
    [1] = "9015492607984238",
    [2] = true
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_1")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|431061468")
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
        [0] = self.f_box_OutputOrder_v2_1_Out_0,
        [1] = self.f_box_OutputOrder_v2_1_Out_1,
        [2] = self.f_box_OutputOrder_v2_1_Out_2
      },
      count = 3
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_TaggingModifier_v4_20()
  local params, l0
  l0 = Boxes["12605073564839505774"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_TaggingModifier_v4_20")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|435499046")
  l0:SetConnections({})
  params = {
    [0] = "#B44C37AF",
    [1] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_MessageListener_v3_104()
  local params
  params = {
    [0] = true,
    [1] = "aslt_failedCall"
  }
  return params
end
function export:OnEnter_box_GetActivityState_v2_115()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_115")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|498005677")
  l0:SetConnections({
    [0] = self.f_box_GetActivityState_v2_115_Active
  })
  params = {
    [0] = "9015395334508244"
  }
  return params
end
function export:OnEnter_box_GetActivityFact_128()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityFact_128")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|498527501")
  l0:SetConnections({
    [0] = self.f_box_GetActivityFact_128_FactNotSet
  })
  params = {
    [0] = "9015431043640608",
    [1] = "oldchest_looted"
  }
  return params
end
function export:OnEnter_box_GetInventoryItemQuantity_23()
  local params, l0
  l0 = Boxes["1451683877634324830"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetInventoryItemQuantity_23")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|524392366")
  l0:SetConnections({
    [0] = self.f_box_GetInventoryItemQuantity_23_Out
  })
  params = {
    [0] = "9015426036250382",
    [2] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_GetActivityState_v2_140()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_140")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|553952500")
  l0:SetConnections({
    [0] = self.f_box_GetActivityState_v2_140_Active,
    [6] = self.f_box_GetActivityState_v2_140_Unavailable
  })
  params = {
    [0] = "9015431044818684"
  }
  return params
end
function export:OnEnter_box_GroupSizeListener_v6_30()
  local params
  params = {
    [0] = false,
    [1] = "#AD5111F4"
  }
  return params
end
function export:OnEnter_box_GetActivityState_v2_54()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_54")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|577456400")
  l0:SetConnections({
    [4] = self.f_box_GetActivityState_v2_54_Inactive,
    [6] = self.f_box_GetActivityState_v2_54_Unavailable
  })
  params = {
    [0] = "9015411161466122"
  }
  return params
end
function export:OnEnter_box_Compare_Integers_119()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_119")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|594105941")
  l0:SetConnections({
    [5] = self.f_box_Compare_Integers_119_A_ne_B
  })
  params = {
    [0] = self._sld_Length_box_ListLength_v2_120,
    [1] = 0
  }
  return params
end
function export:OnEnter_box_GetActivityFact_129()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityFact_129")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|604510713")
  l0:SetConnections({
    [0] = self.f_box_GetActivityFact_129_FactNotSet
  })
  params = {
    [0] = "9015431042073210",
    [1] = "oldchest_looted"
  }
  return params
end
function export:OnEnter_box_AddActivityObjectiveHint_79()
  local params, l0
  l0 = Boxes["5427364974617541755"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_AddActivityObjectiveHint_79")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|619136970")
  l0:SetConnections({
    [0] = self.f_box_AddActivityObjectiveHint_79_Out
  })
  params = {
    [0] = {
      section = "ASLT_DEADDROPS",
      item = "OBJ_ASLT_HINT_DEADDROP",
      id = "1117201"
    },
    [1] = {
      section = "ASLT_DEADDROPS",
      item = "OBJ_ASLT_DEADDROP",
      id = "1117200"
    }
  }
  return params
end
function export:OnEnter_box_GetFromGroup_98()
  local params, l0
  l0 = Boxes["13454466678413635966"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetFromGroup_98")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|644925140")
  l0:SetConnections({
    [0] = self.f_box_GetFromGroup_98_Out
  })
  params = {
    [0] = "#B44C37AF"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_74()
  local params
  params = {
    [0] = true,
    [1] = "9015530489109987",
    [2] = true
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_96()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_96")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|671946122")
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
function export:OnEnter_box_Delay_v5_146()
  local params
  params = {
    [0] = false,
    [2] = 5
  }
  return params
end
function export:OnEnter_box_PreconditionListener_91()
  local params
  params = {
    [0] = true,
    [1] = "9015494354449006",
    [2] = true
  }
  return params
end
function export:OnEnter_box_PreconditionListener_67()
  local params
  params = {
    [0] = true,
    [1] = "9015530491794311",
    [2] = true
  }
  return params
end
function export:OnEnter_box_GetActivityState_v2_139()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_139")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|748315187")
  l0:SetConnections({
    [0] = self.f_box_GetActivityState_v2_139_Active,
    [6] = self.f_box_GetActivityState_v2_139_Unavailable
  })
  params = {
    [0] = "9015431044360920"
  }
  return params
end
function export:OnEnter_box_GetActivityFact_124()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityFact_124")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|751555455")
  l0:SetConnections({
    [0] = self.f_box_GetActivityFact_124_FactNotSet
  })
  params = {
    [0] = "9015421909668244",
    [1] = "oldchest_looted"
  }
  return params
end
function export:OnEnter_box_RequestPhoneConversation_50()
  local params
  params = {
    [0] = "9015530370776179",
    [2] = "9015482414250913",
    [3] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_102()
  local params
  params = {
    [0] = true,
    [1] = "9015530482353461",
    [2] = true
  }
  return params
end
function export:OnEnter_box_Delay_v5_145()
  local params
  params = {
    [0] = false,
    [2] = 5
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_16()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_16")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|847413517")
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
        [0] = self.f_box_OutputOrder_v2_16_Out_0,
        [1] = self.f_box_OutputOrder_v2_16_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_GetActivityState_v2_27()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_27")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|856622230")
  l0:SetConnections({
    [2] = self.f_box_GetActivityState_v2_27_Completed
  })
  params = {
    [0] = self.SpecOpsActivity
  }
  return params
end
function export:OnEnter_box_GetActivityState_v2_118()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_118")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|875379664")
  l0:SetConnections({
    [0] = self.f_box_GetActivityState_v2_118_Active
  })
  params = {
    [0] = "9015411161387159"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_122()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_122")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|890316378")
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
function export:OnEnter_box_RequestPhoneConversation_31()
  local params
  params = {
    [0] = "9015530370776179",
    [2] = "9015482412702589",
    [3] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_62()
  local params
  params = {
    [0] = true,
    [1] = "9015530491858578",
    [2] = true
  }
  return params
end
function export:OnEnter_box_EntityEventListener_v2_108()
  local params, l0
  l0 = Boxes["238599533382071246"]
  params = {
    [0] = true,
    [1] = l0:GetDataOutValue(0),
    [2] = "DeadDropPmgActive"
  }
  return params
end
function export:OnEnter_box_Compare_Integers_24()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_24")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|960756303")
  l0:SetConnections({
    [1] = self.f_box_Compare_Integers_24_A_ge_B
  })
  params = {
    [0] = self._sld_numItems_box_GetInventoryItemQuantity_23,
    [1] = 1
  }
  return params
end
function export:OnEnter_box_Ops_ProximityTrigger_Listener_v3_8()
  local params
  params = {
    [0] = "#5B9E5CA4",
    [1] = false,
    [2] = self.SpecOpsTrigger1
  }
  return params
end
function export:OnEnter_box_RequestPhoneConversation_100()
  local params
  params = {
    [0] = "9015530370776179",
    [2] = "9015463113346468",
    [3] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_76()
  local params
  params = {
    [0] = true,
    [1] = "9015492608460210",
    [2] = true
  }
  return params
end
function export:OnEnter_box_Delay_v5_147()
  local params
  params = {
    [0] = false,
    [2] = 5
  }
  return params
end
function export:OnEnter_box_Delay_v5_103()
  local params
  params = {
    [0] = false,
    [2] = 5
  }
  return params
end
function export:OnEnter_box_IsValueNil_v3_82()
  local params, l0
  l0 = Boxes["16744489399474769823"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_IsValueNil_v3_82")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1057910684")
  l0:SetConnections({
    [0] = self.f_box_IsValueNil_v3_82_No
  })
  params = {
    [4] = PersistentGlobals.Lib_Aslt_OldChest.SearchArea
  }
  return params
end
function export:OnEnter_box_PreconditionListener_90()
  local params
  params = {
    [0] = true,
    [1] = "9015494354462011",
    [2] = true
  }
  return params
end
function export:OnEnter_box_GroupSizeListener_v6_19()
  local params
  params = {
    [0] = false,
    [1] = "#B44C37AF"
  }
  return params
end
function export:OnEnter_box_SetActivityFact_21()
  local params, l0
  l0 = Boxes["13904165977888905445"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetActivityFact_21")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1146950416")
  l0:SetConnections({
    [0] = self.f_box_SetActivityFact_21_Out
  })
  params = {
    [0] = "playerhasoldchestkey"
  }
  return params
end
function export:OnEnter_box_GetActivityState_v2_53()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_53")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1181481034")
  l0:SetConnections({
    [4] = self.f_box_GetActivityState_v2_53_Inactive,
    [6] = self.f_box_GetActivityState_v2_53_Unavailable
  })
  params = {
    [0] = "9015411411690948"
  }
  return params
end
function export:OnEnter_box_GetActivityState_v2_141()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_141")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1188901337")
  l0:SetConnections({
    [0] = self.f_box_GetActivityState_v2_141_Active,
    [6] = self.f_box_GetActivityState_v2_141_Unavailable
  })
  params = {
    [0] = "9015431043763120"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_107()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_107")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1289948850")
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
function export:OnEnter_box_GetActivityState_v2_5()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_5")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1296428457")
  l0:SetConnections({
    [0] = self.f_box_GetActivityState_v2_5_Active,
    [4] = self.f_box_GetActivityState_v2_5_Inactive,
    [6] = self.f_box_GetActivityState_v2_5_Unavailable
  })
  params = {
    [0] = self.SpecOpsActivity
  }
  return params
end
function export:OnEnter_box_Delay_v5_135()
  local params
  params = {
    [0] = false,
    [2] = 2
  }
  return params
end
function export:OnEnter_box_PreconditionListener_85()
  local params
  params = {
    [0] = true,
    [1] = "9015494354478535",
    [2] = true
  }
  return params
end
function export:OnEnter_box_PreconditionListener_73()
  local params
  params = {
    [0] = true,
    [1] = "9015492608422358",
    [2] = true
  }
  return params
end
function export:OnEnter_box_SetActivityFact_7()
  local params, l0
  l0 = Boxes["13904165977888905445"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetActivityFact_7")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1370862462")
  l0:SetConnections({
    [0] = self.f_box_SetActivityFact_7_Out
  })
  params = {
    [0] = "SPECOPSSTART"
  }
  return params
end
function export:OnEnter_box_EndActivityObjective_v2_80()
  local params, l0
  l0 = Boxes["13547473717942993420"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EndActivityObjective_v2_80")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1387625509")
  l0:SetConnections({
    [0] = self.f_box_EndActivityObjective_v2_80_Out
  })
  params = {
    [0] = {
      section = "ASLT_DEADDROPS",
      item = "OBJ_ASLT_DEADDROP",
      id = "1117200"
    },
    [1] = true
  }
  return params
end
function export:OnEnter_box_RequestPhoneConversation_47()
  local params
  params = {
    [0] = "9015530370776179",
    [2] = "9015482414230964",
    [3] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_Delay_v5_75()
  local params
  params = {
    [0] = false,
    [2] = 5
  }
  return params
end
function export:OnEnter_box_MessageListener_v3_83()
  local params
  params = {
    [0] = false,
    [1] = "OldChestSetSearchArea"
  }
  return params
end
function export:OnEnter_box_GetActivityState_v2_117()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_117")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1503080254")
  l0:SetConnections({
    [0] = self.f_box_GetActivityState_v2_117_Active
  })
  params = {
    [0] = "9015411411601793"
  }
  return params
end
function export:OnEnter_box_AddActivityObjective_v4_78()
  local params, l0
  l0 = Boxes["13549342794267410956"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_AddActivityObjective_v4_78")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1527530818")
  l0:SetConnections({
    [0] = self.f_box_AddActivityObjective_v4_78_Out
  })
  params = {
    [0] = false,
    [1] = {
      section = "ASLT_DEADDROPS",
      item = "OBJ_ASLT_DEADDROP",
      id = "1117200"
    },
    [2] = false,
    [3] = 1,
    [4] = "#ED455357",
    [5] = 0
  }
  return params
end
function export:OnEnter_box_GetActivityState_v2_116()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_116")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1540433737")
  l0:SetConnections({
    [0] = self.f_box_GetActivityState_v2_116_Active
  })
  params = {
    [0] = "9015395465044874"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_36()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_36")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1559846945")
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
        [1] = self.f_box_OutputOrder_v2_36_Out_1,
        [2] = self.f_box_OutputOrder_v2_36_Out_2
      },
      count = 4
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_EndActivityObjective_v2_92()
  local params, l0
  l0 = Boxes["13547473717942993420"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_EndActivityObjective_v2_92")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1577284703")
  l0:SetConnections({
    [0] = self.f_box_EndActivityObjective_v2_92_Out
  })
  params = {
    [0] = {
      section = "ASLT_DEADDROPS",
      item = "OBJ_ASLT_DEADDROP",
      id = "1117200"
    },
    [1] = false
  }
  return params
end
function export:OnEnter_box_MessageListener_v3_57()
  local params
  params = {
    [0] = true,
    [1] = "SPECOPS_DONE"
  }
  return params
end
function export:OnEnter_box_GetOperationDifficultyLevel_v2_39()
  local params, l0
  l0 = Boxes["2501178966389413891"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetOperationDifficultyLevel_v2_39")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1581630237")
  l0:SetConnections({
    [0] = self.f_box_GetOperationDifficultyLevel_v2_39_Mastery1,
    [1] = self.f_box_GetOperationDifficultyLevel_v2_39_Mastery2,
    [2] = self.f_box_GetOperationDifficultyLevel_v2_39_Mastery3
  })
  params = {}
  return params
end
function export:OnEnter_box_MultipleAND_v2_121()
  local params
  params = {
    [0] = false
  }
  return params
end
function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_84()
  local params, l0
  l0 = Boxes["12441205433938900539"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_84")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1597503262")
  l0:SetConnections({})
  params = {
    [1] = PersistentGlobals.Lib_Aslt_OldChest.SearchArea,
    [2] = {
      section = "ASLT_DEADDROPS",
      item = "OBJ_ASLT_DEADDROP",
      id = "1117200"
    }
  }
  return params
end
function export:OnEnter_box_Print_v2_4()
  local params, l0
  l0 = Boxes["8578475447439923801"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Print_v2_4")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1608891428")
  l0:SetConnections({})
  params = {
    [1] = "green",
    [3] = 15,
    [7] = "C:\\Print.log",
    [8] = ">> PMG Main is running",
    [9] = true
  }
  return params
end
function export:OnEnter_box_Delay_v5_142()
  local params
  params = {
    [0] = false,
    [2] = 5
  }
  return params
end
function export:OnEnter_box_Ops_ProximityTrigger_Listener_v3_14()
  local params
  params = {
    [0] = "#5B9E5CA4",
    [1] = false,
    [2] = self.SpecOpsTrigger2
  }
  return params
end
function export:OnEnter_box_PreconditionListener_89()
  local params
  params = {
    [0] = true,
    [1] = "9015494354424369",
    [2] = true
  }
  return params
end
function export:OnEnter_box_GetActivityFact_125()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityFact_125")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1636327356")
  l0:SetConnections({
    [0] = self.f_box_GetActivityFact_125_FactNotSet
  })
  params = {
    [0] = "9015421909241649",
    [1] = "oldchest_looted"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_77()
  local params
  params = {
    [0] = true,
    [1] = "9015492608492120",
    [2] = true
  }
  return params
end
function export:OnEnter_box_MessageListener_v3_105()
  local params
  params = {
    [0] = true,
    [1] = "aslt_winPartCall"
  }
  return params
end
function export:OnEnter_box_GetActivityFact_127()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityFact_127")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1678287279")
  l0:SetConnections({
    [0] = self.f_box_GetActivityFact_127_FactNotSet
  })
  params = {
    [0] = "9015431044731720",
    [1] = "oldchest_looted"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_64()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_64")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1682225846")
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
        [0] = self.f_box_OutputOrder_v2_64_Out_0,
        [1] = self.f_box_OutputOrder_v2_64_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_Compare_Integers_154()
  local params, l0
  l0 = Boxes["3063960780267220778"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Compare_Integers_154")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1720059058")
  l0:SetConnections({
    [1] = self.f_box_Compare_Integers_154_A_ge_B
  })
  l0 = self.box_InventoryItemListener_22
  params = {
    [0] = l0:GetDataOutValue(0),
    [1] = 1
  }
  return params
end
function export:OnEnter_box_GetActivityState_v2_136()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_136")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1720544610")
  l0:SetConnections({
    [0] = self.f_box_GetActivityState_v2_136_Active,
    [6] = self.f_box_GetActivityState_v2_136_Unavailable
  })
  params = {
    [0] = "9015426743796813"
  }
  return params
end
function export:OnEnter_box_RequestPhoneConversation_52()
  local params
  params = {
    [0] = "9015530370776179",
    [2] = "9015482414258743",
    [3] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_56()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_56")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1740084039")
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
        [0] = self.f_box_OutputOrder_v2_56_Out_0,
        [1] = self.f_box_OutputOrder_v2_56_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_GetActivityState_v2_114()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_114")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1745251827")
  l0:SetConnections({
    [0] = self.f_box_GetActivityState_v2_114_Active
  })
  params = {
    [0] = "9015395198992130"
  }
  return params
end
function export:OnEnter_box_IsValueNil_v3_10()
  local params, l0
  l0 = Boxes["16744489399474769823"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_IsValueNil_v3_10")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1756959528")
  l0:SetConnections({
    [0] = self.f_box_IsValueNil_v3_10_No
  })
  params = {
    [4] = self.SpecOpsTrigger1
  }
  return params
end
function export:OnEnter_box_GetActivityState_v2_35()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_35")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1779991371")
  l0:SetConnections({
    [4] = self.f_box_GetActivityState_v2_35_Inactive,
    [6] = self.f_box_GetActivityState_v2_35_Unavailable
  })
  params = {
    [0] = "9015411416466680"
  }
  return params
end
function export:OnEnter_box_PreconditionListener_70()
  local params
  params = {
    [0] = true,
    [1] = "9015530491837721",
    [2] = true
  }
  return params
end
function export:OnEnter_box_RequestPhoneConversation_81()
  local params
  params = {
    [0] = "9015530370776179",
    [2] = "9015463113661167",
    [3] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_Delay_v5_144()
  local params
  params = {
    [0] = false,
    [2] = 5
  }
  return params
end
function export:OnEnter_box_GetActivityState_v2_137()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_137")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1870046893")
  l0:SetConnections({
    [0] = self.f_box_GetActivityState_v2_137_Active,
    [6] = self.f_box_GetActivityState_v2_137_Unavailable
  })
  params = {
    [0] = "9015431041632600"
  }
  return params
end
function export:OnEnter_box_IsValueNil_v3_12()
  local params, l0
  l0 = Boxes["16744489399474769823"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_IsValueNil_v3_12")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1898840827")
  l0:SetConnections({
    [0] = self.f_box_IsValueNil_v3_12_No,
    [1] = self.f_box_IsValueNil_v3_12_Yes
  })
  params = {
    [4] = self.SpecOpsTrigger2
  }
  return params
end
function export:OnEnter_box_GetActivityFact_26()
  local params, l0
  l0 = Boxes["13904194869060163813"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityFact_26")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1924467215")
  l0:SetConnections({
    [1] = self.f_box_GetActivityFact_26_FactSet
  })
  params = {
    [0] = self.SpecOpsActivity,
    [1] = "SpecOpsPOIEntered"
  }
  return params
end
function export:OnEnter_box_Delay_v5_143()
  local params
  params = {
    [0] = false,
    [2] = 5
  }
  return params
end
function export:OnEnter_box_Print_v2_29()
  local params, l0
  l0 = Boxes["8578475447439923801"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Print_v2_29")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1940497051")
  l0:SetConnections({})
  params = {
    [1] = "orange",
    [3] = 15,
    [7] = "C:\\Print.log",
    [8] = ">> SPECOPS GUERILLA REWARD ACTIVATE!",
    [9] = true
  }
  return params
end
function export:OnEnter_box_GetActivityState_v2_32()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_32")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1941501774")
  l0:SetConnections({
    [4] = self.f_box_GetActivityState_v2_32_Inactive,
    [6] = self.f_box_GetActivityState_v2_32_Unavailable
  })
  params = {
    [0] = "9015395199027022"
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_15()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_15")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1942797415")
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
        [0] = self.f_box_OutputOrder_v2_15_Out_0,
        [1] = self.f_box_OutputOrder_v2_15_Out_1
      },
      count = 3
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_SetActivityFact_63()
  local params, l0
  l0 = Boxes["13904165977888905445"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_SetActivityFact_63")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1967797657")
  l0:SetConnections({
    [0] = self.f_box_SetActivityFact_63_Out
  })
  params = {
    [0] = "oldchest_looted"
  }
  return params
end
function export:OnEnter_box_Delay_v5_101()
  local params
  params = {
    [0] = false,
    [2] = 5
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_34()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_34")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|1987456548")
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
function export:OnEnter_box_ListLength_v2_120()
  local params, l0
  l0 = Boxes["15750412361101265620"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ListLength_v2_120")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|2010477152")
  l0:SetConnections({
    [0] = self.f_box_ListLength_v2_120_Empty,
    [1] = self.f_box_ListLength_v2_120_NotEmpty
  })
  params = {
    [0] = self._sld_Pawns_box_GetFromGroup_98
  }
  return params
end
function export:OnEnter_box_PreconditionListener_86()
  local params
  params = {
    [0] = true,
    [1] = "9015494354489405",
    [2] = true
  }
  return params
end
function export:OnEnter_box_PreconditionListener_68()
  local params
  params = {
    [0] = true,
    [1] = "9015492607963474",
    [2] = true
  }
  return params
end
function export:OnEnter_box_OutputOrder_v2_6()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_6")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|2063570596")
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
        [0] = self.f_box_OutputOrder_v2_6_Out_0,
        [1] = self.f_box_OutputOrder_v2_6_Out_1
      },
      count = 3
    }
  })
  params = {}
  return params
end
function export:OnEnter_box_Print_v2_11()
  local params, l0
  l0 = Boxes["8578475447439923801"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Print_v2_11")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|2076644012")
  l0:SetConnections({})
  params = {
    [1] = "white",
    [3] = 20,
    [7] = "C:\\Print.log",
    [8] = "Start specops",
    [9] = true
  }
  return params
end
function export:OnEnter_box_InventoryItemListener_22()
  local params
  params = {
    [0] = false,
    [1] = "9015426036250382",
    [3] = "#ED455357"
  }
  return params
end
function export:OnEnter_box_GetLocalPlayer_v2_109()
  local params, l0
  l0 = Boxes["238599533382071246"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetLocalPlayer_v2_109")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|2124717063")
  l0:SetConnections({
    [0] = self.f_box_GetLocalPlayer_v2_109_Out
  })
  params = {}
  return params
end
function export:OnEnter_box_GetActivityState_v2_49()
  local params, l0
  l0 = Boxes["10169349419534082083"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_GetActivityState_v2_49")
  l0:SetElementPathId("DocumentContainer|fc6_Ops\\ASLT_ReplayabilityMissions\\ASLT_PMGMain.domino|@ASLT_PMGMain|2141508102")
  l0:SetConnections({
    [4] = self.f_box_GetActivityState_v2_49_Inactive,
    [6] = self.f_box_GetActivityState_v2_49_Unavailable
  })
  params = {
    [0] = "9015395465096390"
  }
  return params
end
function export:OnExit_box_GetInventoryItemQuantity_23_Out()
  local l0
  l0 = Boxes["1451683877634324830"]
  self._sld_numItems_box_GetInventoryItemQuantity_23 = l0:GetDataOutValue(0)
end
function export:OnExit_box_GetFromGroup_98_Out()
  local l0
  l0 = Boxes["13454466678413635966"]
  self._sld_Pawns_box_GetFromGroup_98 = l0:GetDataOutValue(0)
end
function export:OnExit_box_ListLength_v2_120_Empty()
  local l0
  l0 = Boxes["15750412361101265620"]
  self._sld_Length_box_ListLength_v2_120 = l0:GetDataOutValue(0)
end
function export:OnExit_box_ListLength_v2_120_NotEmpty()
  local l0
  l0 = Boxes["15750412361101265620"]
  self._sld_Length_box_ListLength_v2_120 = l0:GetDataOutValue(0)
end
function export:OnExit_box_GetLocalPlayer_v2_109_Out()
  local l0, l1
  l0 = Boxes["238599533382071246"]
  l1 = self.box_EntityEventListener_v2_108
  l1:GetLuaBox().EntityId = l0:GetDataOutValue(0)
end
_compilerVersion = 60
