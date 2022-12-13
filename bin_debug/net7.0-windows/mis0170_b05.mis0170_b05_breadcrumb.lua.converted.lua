--Converted by FCBConverter v20221102-1800, author ArmanIII.
--Converted using UnluacNET by Fireboyd78

export = {}
function export:LuaDependencies()
  local luaDepTable = {}
  return luaDepTable
end
function export:Create(cboxRes)
  if cboxRes:ShouldLoadResources() == true then
    cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")
    cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua")
    cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua")
    cboxRes:RegisterBox("Domino/System/MultipleOR.lua")
    cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua")
    cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua")
  end
end
function export:Init(cbox)
  local l0
  self.SomeoneNear = DummyFunction
  self.g_PlayerGroup = nil
  self.o_ActiveObjective = {
    section = "",
    item = "",
    id = ""
  }
  self.e_ObjectiveMarker = nil
  self.e_ProximitySP = nil
  self.f_ProximityRadius = 0
  self.blocked = false
  self[6] = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self[6]
  l0:SetParentGraph(self._cbox)
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_6_Out
  })
  self[2] = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self[2]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [0] = self.f_2_Disabled,
    [2] = self.f_2_Loaded,
    [3] = self.f_2_Unloaded
  })
  self[1] = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self[1]
  l0:SetParentGraph(self._cbox)
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 2
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_1_Out
  })
  self[3] = cbox:CreateBox_PathID("4056822721701917943")
  l0 = self[3]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [0] = self.f_3_AllFar,
    [5] = self.f_3_SomeoneNear
  })
end
function export:In()
  local l0
  l0 = self[1]
  l0:ExecDynInt(0, {}, 0)
end
function export:f_6_Out()
  local params, l0
  params = self:en_3()
  l0 = self[3]
  l0:Exec(0, params)
end
function export:f_2_Disabled()
  local l0
  l0 = self[6]
  l0:ExecDynInt(0, {}, 0)
end
function export:f_2_Loaded()
  local params, l0
  params = self:en_8()
  l0 = Boxes["9581874586206389174"]
  l0:Exec(2, params)
  l0:SetParentGraph(nil)
end
function export:f_2_Unloaded()
  local l0
  l0 = self[6]
  l0:ExecDynInt(0, {}, 1)
end
function export:f_1_Out()
  local params, l0
  params = self:en_4()
  l0 = Boxes["12441205433938900539"]
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_3_AllFar()
  local l0
  l0 = self[1]
  l0:ExecDynInt(0, {}, 1)
end
function export:f_3_SomeoneNear()
  local params, l0
  params = self:en_12()
  l0 = Boxes["15098650334638743252"]
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_12_Out_0()
  local params, l0
  params = self:en_4()
  l0 = Boxes["12441205433938900539"]
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_12_Out_1()
  self:SomeoneNear()
end
function export:f_4_Disabled()
  local params, l0
  params = self:en_2()
  l0 = self[2]
  l0:Exec(0, params)
end
function export:f_4_Enabled()
  local params, l0
  params = self:en_2()
  l0 = self[2]
  l0:Exec(1, params)
end
function export:f_8_Out()
  local params, l0
  self:ex_8_Out()
  params = self:en_3()
  l0 = self[3]
  l0:Exec(1, params)
end
function export:en_2()
  local params
  params = {
    [0] = false,
    [1] = true,
    [2] = self.ProximitySP
  }
  return params
end
function export:en_3()
  local params, l0
  l0 = Boxes["9581874586206389174"]
  params = {
    [0] = true,
    [1] = l0:GetDataOutValue(0),
    [2] = 35,
    [3] = self.ProximitySP,
    [4] = self.ProximityRadius,
    [5] = false
  }
  return params
end
function export:en_12()
  local params, l0
  l0 = Boxes["15098650334638743252"]
  l0:SetParentGraph(self._cbox)
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
        [0] = self.f_12_Out_0,
        [1] = self.f_12_Out_1
      },
      count = 2
    }
  })
  params = {}
  return params
end
function export:en_4()
  local params, l0
  l0 = Boxes["12441205433938900539"]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [0] = self.f_4_Disabled,
    [1] = self.f_4_Enabled
  })
  params = {
    [1] = self.ObjectiveMarker,
    [2] = self.ActiveObjective
  }
  return params
end
function export:en_8()
  local params, l0
  l0 = Boxes["9581874586206389174"]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [0] = self.f_8_Out
  })
  params = {}
  return params
end
function export:ex_8_Out()
  local l0, l1
  l0 = Boxes["9581874586206389174"]
  l1 = self[3]
  l1:GetLuaBox().Entities = l0:GetDataOutValue(0)
end
function export:SomeoneNear()
end
_compilerVersion = 60
