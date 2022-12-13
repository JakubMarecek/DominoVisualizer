LUAC�D  
--Created with Domino Visualizer v1.00 by ArmanIII

export = {}
function export:LuaDependencies()
  local luaDepTable = {}
  return luaDepTable
end
function export:Create(cboxRes)
  --if cboxRes:ShouldLoadResources() == true then
    cboxRes:RegisterBox("domino/system/simplenode.lua")
    cboxRes:RegisterBox("domino/system/entitystatuslistener.lua")
    cboxRes:RegisterBox("domino/system/universalinteractionmodifier_v2.lua")
    cboxRes:RegisterBox("domino/system/multipleor.lua")
    cboxRes:RegisterBox("domino/system/delay_v5.lua")
    cboxRes:RegisterBox("domino/system/universalinterationlistener.lua")
    cboxRes:RegisterBox("domino/library/narrative/lib_narrative.prenarrativeplusnarrativesetup.lua")
    cboxRes:RegisterBox("domino/system/resetinputs.lua")
    cboxRes:RegisterBox("domino/system/narrative/playsequence_v11.lua")
    cboxRes:RegisterBox("domino/system/cheat_setenvironmenttimescale.lua")
    cboxRes:RegisterBox("domino/library/narrative/lib_narrative.narrativefade.lua")
    cboxRes:RegisterBox("domino/system/soundmodifier_v2.lua")
    cboxRes:RegisterBox("domino/system/getplayergroup_v2.lua")
    cboxRes:RegisterBox("domino/system/player/postfx_v3.lua")
    cboxRes:RegisterBox("domino/library/narrative/lib_narrative.narrativescenecleanup_v2.lua")
    cboxRes:RegisterBox("domino/library/sp/lib_music.music_quest_v2.lua")
    cboxRes:RegisterBox("domino/system/multipleand_v2.lua")
    cboxRes:LoadResource("2155005249.bnk", "CSoundResource")
    cboxRes:LoadResource("352711792.bnk", "CSoundResource")
    cboxRes:LoadResource("1874977976.bnk", "CSoundResource")
  --end
end
function export:Init(cbox)
  local l0
  self.CurrentObj = nil
  self.SceneEntity = nil
  self.SeqFile = ""
  self[0] = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self[0]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [2] = self.f_0_Loaded,
    [3] = self.f_0_Unloaded
  })
  self[4] = cbox:CreateBox_PathID("13544820704881371989")
  l0 = self[4]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [0] = self.f_4_Disabled
  })
  self[3] = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self[3]
  l0:SetParentGraph(self._cbox)
  l0:SetDynAnchorCount({
    controlIn = {
      [0] = 3
    },
    controlOut = {},
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_3_Out
  })
  self[6] = cbox:CreateBox_PathID("13544820704881371989")
  l0 = self[6]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [1] = self.f_6_Enabled,
    [0] = self.f_6_Disabled
  })
  self[5] = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self[5]
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
    [0] = self.f_5_Out
  })
  self[9] = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self[9]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [5] = self.f_9_TimeElapsed
  })
  self[7] = cbox:CreateBox_PathID("10234146408315319439")
  l0 = self[7]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [2] = self.f_7_Interacted
  })
  self[8] = cbox:CreateBox_PathID("9549667173196098009")
  l0 = self[8]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [0] = self.f_8_Out
  })
  self[11] = cbox:CreateBox_PathID("3630847175453805982")
  l0 = self[11]
  l0:SetParentGraph(self._cbox)
  l0:SetDynAnchorCount({
    controlIn = {},
    controlOut = {
      [4] = 2
    },
    dataIn = {},
    dataOut = {}
  })
  l0:SetConnections({
    [0] = self.f_11_Finished,
    [4] = {
      connections = {
        [0] = {
          string = "STOP_POSTFX",
          value = self.f_11_SPOut__STOP_POSTFX_
        },
        [1] = {
          string = "START_POSTFX",
          value = self.f_11_SPOut__START_POSTFX_
        }
      },
      count = 2
    }
  })
  self[12] = cbox:CreateBox_PathID("1283216948796650860")
  l0 = self[12]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({})
  self[13] = cbox:CreateBox_PathID("6236974536498622781")
  l0 = self[13]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({})
  self[14] = cbox:CreateBox_PathID("6236974536498622781")
  l0 = self[14]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({})
  self[15] = cbox:CreateBox_PathID("1283216948796650860")
  l0 = self[15]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({})
  self[16] = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self[16]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [5] = self.f_16_TimeElapsed
  })
  self[17] = cbox:CreateBox_PathID("2014996336733026343")
  l0 = self[17]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({})
  self[18] = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self[18]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [5] = self.f_18_TimeElapsed
  })
  self[19] = cbox:CreateBox_PathID("6236974536498622781")
  l0 = self[19]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [0] = self.f_19_FadedIn
  })
  self[21] = cbox:CreateBox_PathID("16860920477943881611")
  l0 = self[21]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [0] = self.f_21_Disabled
  })
  self[22] = cbox:CreateBox_PathID("13411251043963668119")
  l0 = self[22]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [0] = self.f_22_Out
  })
  self[23] = cbox:CreateBox_PathID("16727504205060445460")
  l0 = self[23]
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
    [0] = self.f_23_Out
  })
  self[24] = cbox:CreateBox_PathID("4791421245946677023")
  l0 = self[24]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [2] = self.f_24_Loaded,
    [3] = self.f_24_Unloaded
  })
  self[26] = cbox:CreateBox_PathID("2284761936918359779")
  l0 = self[26]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({})
  self[27] = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self[27]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [5] = self.f_27_TimeElapsed
  })
  self[28] = cbox:CreateBox_PathID("2284761936918359779")
  l0 = self[28]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({})
  self[29] = cbox:CreateBox_PathID("16355840665919232595")
  l0 = self[29]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [5] = self.f_29_TimeElapsed
  })
  self[30] = cbox:CreateBox_PathID("8856851018964989888")
  l0 = self[30]
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
    [0] = self.f_30_Out
  })
  self[31] = cbox:CreateBox_PathID("8856851018964989888")
  l0 = self[31]
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
    [0] = self.f_31_Out
  })
end
function export:In()
  local params, l0
  params = self:en_2()
  l0 = Boxes["11682720508110024183"]
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_1_TimeElapsed()
  local params, l0
  params = self:en_9()
  l0 = self[9]
  l0:Exec(2, params)
end
function export:f_0_Loaded()
  local params, l0
  self:ex_0_Loaded()
  params = self:en_30()
  l0 = self[30]
  l0:Exec(1, params)
  params = self:en_33()
  l0 = Boxes["11682720508110024183"]
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_0_Unloaded()
  local params, l0
  params = self:en_30()
  l0 = self[30]
  l0:ExecDynInt(0, params, 1)
end
function export:f_4_Disabled()
  local params, l0
  params = self:en_8()
  l0 = self[8]
  l0:Exec(0, params)
end
function export:f_2_Out()
  local params, l0
  params = self:en_0()
  l0 = self[0]
  l0:Exec(1, params)
  params = self:en_24()
  l0 = self[24]
  l0:Exec(1, params)
end
function export:f_3_Out()
  local params, l0
  params = self:en_6()
  l0 = self[6]
  l0:Exec(1, params)
end
function export:f_6_Enabled()
  local l0
  l0 = self[5]
  l0:ExecDynInt(0, {}, 0)
end
function export:f_6_Disabled()
  local l0
  l0 = self[5]
  l0:ExecDynInt(0, {}, 1)
end
function export:f_5_Out()
  local params, l0
  params = self:en_7()
  l0 = self[7]
  l0:Exec(1, params)
end
function export:f_9_TimeElapsed()
  local l0
  l0 = self[3]
  l0:ExecDynInt(0, {}, 1)
end
function export:f_7_Interacted()
  local params, l0
  params = self:en_4()
  l0 = self[4]
  l0:Exec(0, params)
end
function export:f_8_Out()
  local params, l0
  params = self:en_10()
  l0 = Boxes["365025127496910410"]
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_10_Out()
  local params, l0
  params = self:en_11()
  l0 = self[11]
  l0:Exec(1, params)
end
function export:f_11_Finished()
  local params, l0
  params = self:en_18()
  l0 = self[18]
  l0:Exec(2, params)
end
function export:f_11_SPOut__STOP_POSTFX_()
  local params, l0
  params = self:en_12()
  l0 = self[12]
  l0:Exec(0, params)
  params = self:en_13()
  l0 = self[13]
  l0:Exec(0, params)
  params = self:en_25()
  l0 = Boxes["11682720508110024183"]
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_11_SPOut__START_POSTFX_()
  local params, l0
  params = self:en_14()
  l0 = self[14]
  l0:Exec(1, params)
  params = self:en_15()
  l0 = self[15]
  l0:Exec(0, params)
  params = self:en_27()
  l0 = self[27]
  l0:Exec(2, params)
  params = self:en_29()
  l0 = self[29]
  l0:Exec(2, params)
end
function export:f_16_TimeElapsed()
  local params, l0
  params = self:en_17()
  l0 = self[17]
  l0:Exec(0, params)
end
function export:f_18_TimeElapsed()
  local params, l0
  params = self:en_19()
  l0 = self[19]
  l0:Exec(0, params)
end
function export:f_19_FadedIn()
  local params, l0
  params = self:en_20()
  l0 = Boxes["9581874586206389174"]
  l0:Exec(1, params)
  l0:SetParentGraph(nil)
end
function export:f_20_Out()
  local params, l0
  self:ex_20_Out()
  params = self:en_21()
  l0 = self[21]
  l0:Exec(0, params)
end
function export:f_21_Disabled()
  local params, l0
  params = self:en_22()
  l0 = self[22]
  l0:Exec(0, params)
end
function export:f_22_Out()
  local params, l0
  params = self:en_1()
  l0 = Boxes["11682720508110024183"]
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_23_Out()
  local params, l0
  params = self:en_7()
  l0 = self[7]
  l0:Exec(0, params)
end
function export:f_24_Loaded()
  local params, l0
  self:ex_24_Loaded()
  params = self:en_31()
  l0 = self[31]
  l0:Exec(1, params)
  params = self:en_34()
  l0 = Boxes["11682720508110024183"]
  l0:Exec(0, params)
  l0:SetParentGraph(nil)
end
function export:f_24_Unloaded()
  local params, l0
  params = self:en_31()
  l0 = self[31]
  l0:ExecDynInt(0, params, 1)
end
function export:f_25_Out()
  local params, l0
  params = self:en_26()
  l0 = self[26]
  l0:Exec(1, params)
end
function export:f_27_TimeElapsed()
  local params, l0
  params = self:en_28()
  l0 = self[28]
  l0:Exec(3, params)
end
function export:f_29_TimeElapsed()
  local params, l0
  params = self:en_16()
  l0 = self[16]
  l0:Exec(2, params)
end
function export:f_30_Out()
  local l0
  l0 = self[23]
  l0:ExecDynInt(0, {}, 0)
end
function export:f_31_Out()
  local l0
  l0 = self[23]
  l0:ExecDynInt(0, {}, 1)
end
function export:f_33_Out()
  local params, l0
  params = self:en_30()
  l0 = self[30]
  l0:ExecDynInt(0, params, 0)
  l0 = self[3]
  l0:ExecDynInt(0, {}, 0)
end
function export:f_34_Out()
  local params, l0
  params = self:en_31()
  l0 = self[31]
  l0:ExecDynInt(0, params, 0)
  l0 = self[3]
  l0:ExecDynInt(0, {}, 2)
end
function export:en_2()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [0] = self.f_2_Out
  })
  params = {}
  return params
end
function export:en_9()
  local params
  params = {
    [0] = false,
    [2] = 5
  }
  return params
end
function export:en_30()
  local params
  params = {
    [0] = true
  }
  return params
end
function export:en_33()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [0] = self.f_33_Out
  })
  params = {}
  return params
end
function export:en_8()
  local params
  params = {
    [0] = false,
    [1] = false,
    [2] = 1.6,
    [3] = false,
    [4] = false,
    [6] = "cinematicfade45to60frames"
  }
  return params
end
function export:en_0()
  local params
  params = {
    [0] = false,
    [1] = true,
    [2] = "2114319690288355551"
  }
  return params
end
function export:en_24()
  local params
  params = {
    [0] = false,
    [1] = true,
    [2] = "2114319690288355552"
  }
  return params
end
function export:en_6()
  local params
  params = {
    [1] = {
      id = 9993266
    },
    [4] = self.CurrentObj,
    [5] = "9993266"
  }
  return params
end
function export:en_7()
  local params
  params = {
    [0] = true,
    [1] = self.CurrentObj
  }
  return params
end
function export:en_4()
  local params
  params = {
    [4] = self.CurrentObj
  }
  return params
end
function export:en_10()
  local params, l0
  l0 = Boxes["365025127496910410"]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [0] = self.f_10_Out
  })
  params = {}
  return params
end
function export:en_11()
  local params
  params = {
    [0] = false,
    [1] = false,
    [2] = false,
    [5] = self.SceneEntity,
    [6] = self.SeqFile,
    [7] = false,
    [8] = "blackscreenfx"
  }
  return params
end
function export:en_18()
  local params
  params = {
    [0] = false,
    [2] = 0.5
  }
  return params
end
function export:en_12()
  local params
  params = {
    [0] = 120
  }
  return params
end
function export:en_13()
  local params
  params = {
    [1] = "cinematicfade45to60frames"
  }
  return params
end
function export:en_25()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [0] = self.f_25_Out
  })
  params = {}
  return params
end
function export:en_14()
  local params
  params = {
    [1] = "cinematicfade45to60frames"
  }
  return params
end
function export:en_15()
  local params
  params = {
    [0] = 1
  }
  return params
end
function export:en_27()
  local params
  params = {
    [0] = false,
    [2] = 1.5
  }
  return params
end
function export:en_29()
  local params
  params = {
    [0] = false,
    [2] = 2
  }
  return params
end
function export:en_17()
  local params
  params = {
    [1] = "1874977976",
    [2] = 11,
    [3] = 0.5,
    [4] = false
  }
  return params
end
function export:en_19()
  local params
  params = {
    [1] = "cinematicfade45to60frames"
  }
  return params
end
function export:en_20()
  local params, l0
  l0 = Boxes["9581874586206389174"]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [0] = self.f_20_Out
  })
  params = {}
  return params
end
function export:en_21()
  local params
  params = {
    [0] = self.gPlayergroup,
    [1] = "blackscreenfx"
  }
  return params
end
function export:en_22()
  local params
  params = {
    [0] = false,
    [1] = false,
    [2] = false,
    [3] = false,
    [4] = false
  }
  return params
end
function export:en_1()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [0] = self.f_1_TimeElapsed
  })
  params = {}
  return params
end
function export:en_31()
  local params
  params = {
    [0] = true
  }
  return params
end
function export:en_34()
  local params, l0
  l0 = Boxes["11682720508110024183"]
  l0:SetParentGraph(self._cbox)
  l0:SetConnections({
    [0] = self.f_34_Out
  })
  params = {}
  return params
end
function export:en_26()
  local params
  params = {
    [0] = "-1",
    [1] = 4,
    [2] = 0,
    [3] = 0,
    [4] = 0,
    [5] = 17,
    [6] = false,
    [7] = "352711792",
    [8] = "2155005249",
    [9] = 0.5,
    [10] = 0,
    [11] = false,
    [12] = false
  }
  return params
end
function export:en_28()
  local params
  params = {
    [0] = "-1",
    [1] = 4,
    [2] = 0,
    [3] = 0,
    [4] = 0,
    [5] = 17,
    [6] = false,
    [7] = "352711792",
    [8] = "2155005249",
    [9] = 0.5,
    [10] = 0,
    [11] = false,
    [12] = false
  }
  return params
end
function export:en_16()
  local params
  params = {
    [0] = true,
    [1] = 3,
    [2] = 1
  }
  return params
end
function export:ex_0_Loaded()
  self.CurrentObj = "2114319690288355551"
  self.SceneEntity = "2114319690288341079"
  self.SeqFile = "Sequences/cin_sleep_central.seq"
end
function export:ex_20_Out()
  local l0
  l0 = Boxes["9581874586206389174"]
  self.gPlayergroup = l0:GetDataOutValue(0)
end
function export:ex_24_Loaded()
  self.CurrentObj = "2114319690288355552"
  self.SceneEntity = "2114319690288341080"
  self.SeqFile = "Sequences/cin_sleep_west.seq"
end
_compilerVersion = 60
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>