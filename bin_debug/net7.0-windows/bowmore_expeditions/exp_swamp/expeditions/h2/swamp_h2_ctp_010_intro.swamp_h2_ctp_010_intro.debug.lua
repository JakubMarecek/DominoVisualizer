LUACӾ  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/expeditions/h2/swamp_h2_ctp_010_intro.domino
-- User graph: Swamp_H2_CTP_010_Intro
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection /> 
]]--
-- *** END OF SCRIPT INPUT REFLECTION ***


export = {
};


function export:LuaDependencies()
    local luaDepTable = {
    };
    return luaDepTable;
end;

function export:Create(cboxRes)
    if (cboxRes:ShouldLoadResources() == true) then
        -- External box dependencies
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_Intro_v5.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        
        -- Load resources
        cboxRes:LoadResource([[925292918.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2085429361.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3925056949.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1389945141.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2226418254.bnk]], "CSoundResource");
        cboxRes:LoadResource([[948632679.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2794462597.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Swamp_H2_CTP_010_Intro = nil;
    Globals.Swamp_H2_CTP_010_Intro = {
        IPlayerSpawnPOIIndex = 0,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/H2/Swamp_H2_CTP_010_Intro.Swamp_H2_CTP_010_Intro.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnlyQuicklaunchPlayerLoadout",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Debug_ExtractionPOIID",
                type = "int",
            },
            [1] = {
                name = "Debug_PackagePositionID",
                type = "int",
            },
            [2] = {
                name = "Debug_PackageSpawner",
                type = "entity",
            },
            [3] = {
                name = "Debug_PlayerSpawnPOIIndex",
                type = "int",
            },
            [4] = {
                name = "DebugMode",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
            [0] = {
                name = "Difficulty",
                type = "int",
            },
            [1] = {
                name = "ExtractionPOIIndex",
                type = "int",
            },
            [2] = {
                name = "PackagePositionIndex",
                type = "int",
            },
            [3] = {
                name = "PackageSpawner",
                type = "entity",
            },
            [4] = {
                name = "PlayerSpawnPOIIndex",
                type = "int",
            },
        },
        dataOutCount = 5,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_Intro_v5.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Initialize",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "End",
                delayed = false,
            },
            [1] = {
                name = "Initialized",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "CameraEntity",
                type = "entity",
            },
            [1] = {
                name = "LocationName",
                type = "oasis",
            },
            [2] = {
                name = "PlayerSpawnpoint_A",
                type = "entity",
            },
            [3] = {
                name = "PlayerSpawnpoint_B",
                type = "entity",
            },
            [4] = {
                name = "PlayerSpawnpoint_C",
                type = "entity",
            },
            [5] = {
                name = "PlayMusicEvent",
                type = "Sound",
            },
            [6] = {
                name = "SceneEntity_A",
                type = "entity",
            },
            [7] = {
                name = "SceneEntity_B",
                type = "entity",
            },
            [8] = {
                name = "SceneEntity_C",
                type = "entity",
            },
            [9] = {
                name = "Sequence",
                type = "sequence",
            },
            [10] = {
                name = "StateName",
                type = "oasis",
            },
            [11] = {
                name = "StopMusicEvent",
                type = "Sound",
            },
            [12] = {
                name = "VO_Intro_Unique_1",
                type = "Sound",
            },
            [13] = {
                name = "VO_Intro_Unique_2",
                type = "Sound",
            },
            [14] = {
                name = "VO_Intro_Unique_3",
                type = "Sound",
            },
            [15] = {
                name = "VO_Intro_Unique_4",
                type = "Sound",
            },
            [16] = {
                name = "VO_Intro_Unique_5",
                type = "Sound",
            },
        },
        dataInCount = 17,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityAcknowledgeGate.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Acknowledged",
                delayed = true,
            },
            [1] = {
                name = "Reloaded",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityEnd.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EndHardSave",
            },
            [1] = {
                name = "EndNoSave",
            },
            [2] = {
                name = "EndSoftSave",
            },
        },
        controlInCount = 3,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityInitialized.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = true,
            },
        },
        controlOutCount = 1,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareIntegers.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_eq_B",
                delayed = false,
            },
            [1] = {
                name = "A_ge_B",
                delayed = false,
            },
            [2] = {
                name = "A_gt_B",
                delayed = false,
            },
            [3] = {
                name = "A_le_B",
                delayed = false,
            },
            [4] = {
                name = "A_lt_B",
                delayed = false,
            },
            [5] = {
                name = "A_ne_B",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "A",
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/IndexList_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Index",
                type = "int",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/MissionBlockLayer.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "Disable",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionLayerId",
                type = "missionblocklayer",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/MultipleOR.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Input",
                dynamicType = 1,
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Swamp_H2_CTP_010_Intro";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro";
    self.iDifficulty = 0;
    self.iPlayerSpawnPOIIndex = 0;
    self.iExtractionPOIIndex = 0;
    self.iPackagePositionID = 0;
    self.box_Brick_Exp_Intro_v5_30 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_Intro_v5.debug.lua");
    l0 = self.box_Brick_Exp_Intro_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Intro_v5_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|117944093");
    l0:SetConnections({
        -- End,
        [0] = self.f_box_Brick_Exp_Intro_v5_30_End,
        -- Initialized,
        [1] = self.f_box_Brick_Exp_Intro_v5_30_Initialized,
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|122995520");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_ActivityInitialized_28 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|398771111");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_28_Out,
    });
    self.box_Brick_Exp_Common_BasicSetups_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|442384021");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_3_Out,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|501727648");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_IndexList_v2_13 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|816885309");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 6,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_13_Output_0,
                [1] = self.f_box_IndexList_v2_13_Output_1,
                [2] = self.f_box_IndexList_v2_13_Output_2,
                [3] = self.f_box_IndexList_v2_13_Output_3,
                [4] = self.f_box_IndexList_v2_13_Output_4,
                [5] = self.f_box_IndexList_v2_13_Output_5,
            },
            count = 6,
        },
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|952240449");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1184487576");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1605367937");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1975523568");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MultipleOR_6_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1403463610", "1403463610", "Swamp_H2_CTP_010_Intro", "In", "box_ActivityAcknowledgeGate_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MissionBlockLayer_18_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|424585438", "424585438", "Swamp_H2_CTP_010_Intro", "box_MissionBlockLayer_18.Activated", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Intro_v5_30_End()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_26();
    l0 = self.box_Brick_Exp_Intro_v5_30;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|857170866", "857170866", "Swamp_H2_CTP_010_Intro", "box_Brick_Exp_Intro_v5_30.End", "box_ActivityEnd_26.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Intro_v5_30_Initialized()
    local l0, l1;
    l0 = self.box_Brick_Exp_Intro_v5_30;
    l1 = self.box_ActivityInitialized_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1960804890", "1960804890", "Swamp_H2_CTP_010_Intro", "box_Brick_Exp_Intro_v5_30.Initialized", "box_ActivityInitialized_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|342000517", "342000517", "Swamp_H2_CTP_010_Intro", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|2107057700", "2107057700", "Swamp_H2_CTP_010_Intro", "box_ActivityAcknowledgeGate_1.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_24_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|156167133", "156167133", "Swamp_H2_CTP_010_Intro", "box_MissionBlockLayer_24.Activated", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_10_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1923727893", "1923727893", "Swamp_H2_CTP_010_Intro", "box_MissionBlockLayer_10.Activated", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_21_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|506296400", "506296400", "Swamp_H2_CTP_010_Intro", "box_MissionBlockLayer_21.Activated", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityInitialized_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Intro_v5_30();
    l0 = self.box_ActivityInitialized_28;
    l1 = self.box_Brick_Exp_Intro_v5_30;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|602651893", "602651893", "Swamp_H2_CTP_010_Intro", "box_ActivityInitialized_28.Out", "box_Brick_Exp_Intro_v5_30.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_3_Out()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_3_Out();
    params = self:OnEnter_box_Compare_Integers_22();
    l0 = self.box_Brick_Exp_Common_BasicSetups_3;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|424825596", "424825596", "Swamp_H2_CTP_010_Intro", "box_Brick_Exp_Common_BasicSetups_3.Out", "box_Compare_Integers_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_3();
    l0 = self.box_MultipleOR_2;
    l1 = self.box_Brick_Exp_Common_BasicSetups_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|306415629", "306415629", "Swamp_H2_CTP_010_Intro", "box_MultipleOR_2.Out", "box_Brick_Exp_Common_BasicSetups_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_23_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|303654515", "303654515", "Swamp_H2_CTP_010_Intro", "box_MissionBlockLayer_23.Activated", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IndexList_v2_13_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_19();
    l0 = self.box_IndexList_v2_13;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1252551297", "1252551297", "Swamp_H2_CTP_010_Intro", "box_IndexList_v2_13.Output", "box_MissionBlockLayer_19.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_13_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_23();
    l0 = self.box_IndexList_v2_13;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|814983906", "814983906", "Swamp_H2_CTP_010_Intro", "box_IndexList_v2_13.Output", "box_MissionBlockLayer_23.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_13_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_21();
    l0 = self.box_IndexList_v2_13;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|276325023", "276325023", "Swamp_H2_CTP_010_Intro", "box_IndexList_v2_13.Output", "box_MissionBlockLayer_21.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_13_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_24();
    l0 = self.box_IndexList_v2_13;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|412306590", "412306590", "Swamp_H2_CTP_010_Intro", "box_IndexList_v2_13.Output", "box_MissionBlockLayer_24.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_13_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_5();
    l0 = self.box_IndexList_v2_13;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1618823543", "1618823543", "Swamp_H2_CTP_010_Intro", "box_IndexList_v2_13.Output", "box_MissionBlockLayer_5.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_13_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_10();
    l0 = self.box_IndexList_v2_13;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|694713739", "694713739", "Swamp_H2_CTP_010_Intro", "box_IndexList_v2_13.Output", "box_MissionBlockLayer_10.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Intro_v5_30();
    l0 = self.box_MultipleOR_15;
    l1 = self.box_Brick_Exp_Intro_v5_30;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1918701127", "1918701127", "Swamp_H2_CTP_010_Intro", "box_MultipleOR_15.Out", "box_Brick_Exp_Intro_v5_30.Initialize", l0:GetLuaBox(), l1:GetLuaBox());
    -- Initialize
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_20();
    l0 = self.box_MultipleOR_12;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|416116802", "416116802", "Swamp_H2_CTP_010_Intro", "box_MultipleOR_12.Out", "box_MissionBlockLayer_20.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_5_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1520566456", "1520566456", "Swamp_H2_CTP_010_Intro", "box_MissionBlockLayer_5.Activated", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_22_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_14();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|426068285", "426068285", "Swamp_H2_CTP_010_Intro", "box_Compare_Integers_22.A_eq_B", "box_MissionBlockLayer_14.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_22_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_13();
    l0 = self.box_IndexList_v2_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|543487579", "543487579", "Swamp_H2_CTP_010_Intro", "box_Compare_Integers_22.A_gt_B", "box_IndexList_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_22_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_9();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1123803304", "1123803304", "Swamp_H2_CTP_010_Intro", "box_Compare_Integers_22.A_lt_B", "box_MissionBlockLayer_9.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_11_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1168026682", "1168026682", "Swamp_H2_CTP_010_Intro", "box_MissionBlockLayer_11.Activated", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MissionBlockLayer_19_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|172154345", "172154345", "Swamp_H2_CTP_010_Intro", "box_MissionBlockLayer_19.Activated", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_18();
    l0 = self.box_MultipleOR_16;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|764275248", "764275248", "Swamp_H2_CTP_010_Intro", "box_MultipleOR_16.Out", "box_MissionBlockLayer_18.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_14_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|268069821", "268069821", "Swamp_H2_CTP_010_Intro", "box_MissionBlockLayer_14.Activated", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_17_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1122860314", "1122860314", "Swamp_H2_CTP_010_Intro", "box_MissionBlockLayer_17.Activated", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_9_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_17();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1122705144", "1122705144", "Swamp_H2_CTP_010_Intro", "box_MissionBlockLayer_9.Activated", "box_MissionBlockLayer_17.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_11();
    l0 = self.box_MultipleOR_6;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1563876281", "1563876281", "Swamp_H2_CTP_010_Intro", "box_MultipleOR_6.Out", "box_MissionBlockLayer_11.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_20_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|380917367", "380917367", "Swamp_H2_CTP_010_Intro", "box_MissionBlockLayer_20.Activated", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:OnEnter_box_MissionBlockLayer_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|46200389");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_18_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "27160323900167600",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Intro_v5_30()
    local params;
    params = {
        -- CameraEntity,
        [0] = "2109200956095740042",
        -- LocationName,
        [1] = {
            section = "IntroSequence_LocationName",
            item = "LOC_ExpeditionLocation_Swamp_H2",
            id = "1024176",
        },
        -- PlayerSpawnpoint_A,
        [2] = "2107637090775728678",
        -- PlayerSpawnpoint_B,
        [3] = "2107637090775728676",
        -- PlayerSpawnpoint_C,
        [4] = "2107637090775728677",
        -- PlayMusicEvent,
        [5] = "2226418254",
        -- SceneEntity_A,
        [6] = "2108249881196894515",
        -- SceneEntity_B,
        [7] = "2108249881194797359",
        -- SceneEntity_C,
        [8] = "2108249881192700203",
        -- Sequence,
        [9] = "Sequences/bowmore_expedition/intro/expedition_intro_swamp_v2.seq",
        -- StateName,
        [10] = {
            section = "IntroSequence_LocationName",
            item = "LOC_ExpeditionLocation_Swamp_H2_State",
            id = "1029784",
        },
        -- StopMusicEvent,
        [11] = "2794462597",
        -- VO_Intro_Unique_1,
        [12] = "925292918",
        -- VO_Intro_Unique_2,
        [13] = "3925056949",
        -- VO_Intro_Unique_3,
        [14] = "1389945141",
        -- VO_Intro_Unique_4,
        [15] = "948632679",
        -- VO_Intro_Unique_5,
        [16] = "2085429361",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|304037949");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_24_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "36167523964164453",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|333996370");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_10_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "54181922473661606",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|350668971");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_21_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "45174723218912012",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_3()
    local params;
    params = {
        -- DebugMode,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|526836263");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_23_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "27160324709406247",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_13()
    local params;
    params = {
        -- Index,
        [0] = self.iPackagePositionID,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1327992476");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_5_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "63189121728408522",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1375292304");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_22_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_22_A_gt_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_22_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iDifficulty,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1400338297");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_11_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "45174722409678132",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1433208468");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_19_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "27160324709406247",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1554744451");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1636441849");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_14_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "27160324709406247",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1719344120");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_17_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "36167523154927760",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|1956474703");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_9_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "36167523964164453",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Intro.domino|@Swamp_H2_CTP_010_Intro|2035800331");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_20_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "36167523154927760",
    };
    return params;
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_3_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_3;
    self.iDifficulty = l0:GetDataOutValue(0);
    self.iPackagePositionID = l0:GetDataOutValue(2);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
