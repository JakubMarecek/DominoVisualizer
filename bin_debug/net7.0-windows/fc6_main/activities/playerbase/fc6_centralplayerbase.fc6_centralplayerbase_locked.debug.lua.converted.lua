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
    cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua")
    cboxRes:RegisterBox("Domino/System/MultipleOR.lua")
    cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua")
    cboxRes:RegisterBox("Domino/System/Print_v2.lua")
    cboxRes:RegisterBox("Domino/System/SimpleNode.lua")
  end
end
function export:Init(cbox)
  local l0
  self._name = "FC6_CentralPlayerBase_Locked"
  self._elementPathId = "DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase_Locked"
  self.box_MultipleOR_5 = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self.box_MultipleOR_5
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_MultipleOR_5")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase_Locked|45908878")
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_box_MultipleOR_5_Out
  })
  self.box_ActivityAcknowledgeGate_v2_6 = cbox:CreateBox_PathID("11524929585773902845")
  l0 = self.box_ActivityAcknowledgeGate_v2_6
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ActivityAcknowledgeGate_v2_6")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase_Locked|794325252")
  l0:SetConnections({
    [0] = self.f_box_ActivityAcknowledgeGate_v2_6_Acknowledged,
    [1] = self.f_box_ActivityAcknowledgeGate_v2_6_Reloaded
  })
  self.box_ActivityInitialized_2 = cbox:CreateBox_PathID("5136111808265235631")
  l0 = self.box_ActivityInitialized_2
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_ActivityInitialized_2")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase_Locked|1303445020")
  l0:SetConnections({
    [0] = self.f_box_ActivityInitialized_2_Out
  })
end
function export:In()
  local params, l0
  params = self:OnEnter_box_OutputOrder_v2_3()
  l0 = Boxes["15098650334638743252"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase_Locked|1667425730", "1667425730", "FC6_CentralPlayerBase_Locked", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox())
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_box_MultipleOR_5_Out()
  local l0, l1
  l0 = self.box_MultipleOR_5
  l1 = self.box_ActivityInitialized_2
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase_Locked|1763237382", "1763237382", "FC6_CentralPlayerBase_Locked", "box_MultipleOR_5.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, {})
end
function export:f_box_ActivityAcknowledgeGate_v2_6_Acknowledged()
  local l0, l1
  l0 = self.box_ActivityAcknowledgeGate_v2_6
  l1 = self.box_MultipleOR_5
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase_Locked|1573322327", "1573322327", "FC6_CentralPlayerBase_Locked", "box_ActivityAcknowledgeGate_v2_6.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 0)
end
function export:f_box_ActivityAcknowledgeGate_v2_6_Reloaded()
  local l0, l1
  l0 = self.box_ActivityAcknowledgeGate_v2_6
  l1 = self.box_MultipleOR_5
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase_Locked|1277007772", "1277007772", "FC6_CentralPlayerBase_Locked", "box_ActivityAcknowledgeGate_v2_6.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox())
  l1:ExecDynInt(0, {}, 1)
end
function export:f_box_OutputOrder_v2_3_Out_0()
  local l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  l0 = self.box_ActivityAcknowledgeGate_v2_6
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase_Locked|937517228", "937517228", "FC6_CentralPlayerBase_Locked", "box_OutputOrder_v2_3.Out", "box_ActivityAcknowledgeGate_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(0, {})
end
function export:f_box_OutputOrder_v2_3_Out_1()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  local clone = l0
  params = self:OnEnter_box_Print_v2_1()
  l0 = Boxes["8578475447439923801"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase_Locked|752208888", "752208888", "FC6_CentralPlayerBase_Locked", "box_OutputOrder_v2_3.Out", "box_Print_v2_1.ToScreen", clone:GetLuaBox(), l0:GetLuaBox())
  l0:Exec(3, params)
  l0:SetParentGraph(nil)
end
function export:f_box_ActivityInitialized_2_Out()
  local params, l0, l1
  params = self:OnEnter_box_Simple_Node_4()
  l0 = self.box_ActivityInitialized_2
  l1 = Boxes["11682720508110024183"]
  TraceConnection("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase_Locked|1263104685", "1263104685", "FC6_CentralPlayerBase_Locked", "box_ActivityInitialized_2.Out", "box_Simple_Node_4.In", l0:GetLuaBox(), l1:GetLuaBox())
  l1:Exec(0, params)
  l1:SetParentGraph(nil)
end
function export:OnEnter_box_Simple_Node_4()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Simple_Node_4")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase_Locked|232506051")
  l0:SetConnections({})
  params = {}
  return params
end
function export:OnEnter_box_OutputOrder_v2_3()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_OutputOrder_v2_3")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase_Locked|853737255")
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
function export:OnEnter_box_Print_v2_1()
  local params, l0
  l0 = Boxes["8578475447439923801"]
  l0:SetParentGraph(self._cbox)
  l0:SetBoxName("box_Print_v2_1")
  l0:SetElementPathId("DocumentContainer|fc6_Main\\Activities\\PlayerBase\\FC6_CentralPlayerBase.domino|@FC6_CentralPlayerBase_Locked|2114609273")
  l0:SetConnections({})
  params = {
    [1] = "green",
    [3] = 3,
    [7] = "C:\\Print.log",
    [8] = "FC6_CentralPlayerBase_Locked script is running.",
    [9] = true
  }
  return params
end
_compilerVersion = 60
