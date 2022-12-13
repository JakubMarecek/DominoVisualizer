LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/expeditions/c7/swamp_c7_ctp_010_intro.domino
-- User graph: Swamp_C7_CTP_010_Intro
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
        cboxRes:RegisterBox("Domino/System/GetExpeditionGameplayElements.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Main.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2143837073.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3340710227.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3757372511.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3429021045.bnk]], "CSoundResource");
        cboxRes:LoadResource([[645226521.bnk]], "CSoundResource");
        cboxRes:LoadResource([[510154609.bnk]], "CSoundResource");
        cboxRes:LoadResource([[733471300.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Intro.Swamp_C7_CTP_010_Intro.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
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
            [0] = {
                name = "ExpeditionDifficultyLevel",
                type = "int",
            },
            [1] = {
                name = "ExplosiveSpawnerList",
                type = "list",
            },
            [2] = {
                name = "ExtractionPOIIndex",
                type = "int",
            },
            [3] = {
                name = "FogIndex",
                type = "int",
            },
            [4] = {
                name = "LootSpawnerList",
                type = "list",
            },
            [5] = {
                name = "PackagePOIIndex",
                type = "int",
            },
            [6] = {
                name = "PackageSpawner",
                type = "entity",
            },
            [7] = {
                name = "PickupSpawnerList",
                type = "list",
            },
            [8] = {
                name = "PlayerSpawnPOIIndex",
                type = "int",
            },
            [9] = {
                name = "TimeOfDayIndex",
                type = "int",
            },
            [10] = {
                name = "TurretSpawnerList",
                type = "list",
            },
        },
        dataOutCount = 11,
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
    metadataTable[GetPathID("Domino/System/IntegerArithmetics_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Abs",
            },
            [1] = {
                name = "Add",
            },
            [2] = {
                name = "Div",
            },
            [3] = {
                name = "Exp",
            },
            [4] = {
                name = "Max",
            },
            [5] = {
                name = "Min",
            },
            [6] = {
                name = "Mod",
            },
            [7] = {
                name = "Mul",
            },
            [8] = {
                name = "Sub",
            },
        },
        controlInCount = 9,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
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
            [0] = {
                name = "Result",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/OutputOrder_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
                dynamicType = 1,
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
    metadataTable[GetPathID("Domino/System/SetInteger_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromFloat",
            },
            [1] = {
                name = "FromInteger",
            },
            [2] = {
                name = "FromString",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Float",
                type = "float",
            },
            [1] = {
                name = "Integer",
                type = "int",
            },
            [2] = {
                name = "String",
                type = "string",
            },
            [3] = {
                name = "UseFloor",
                type = "bool",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "Target",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Swamp_C7_CTP_010_Intro";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro";
    self.i_PackagePositionID = 0;
    self.box_ActivityInitialized_21 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|26038384");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_21_Out,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|287655395");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_Brick_Exp_Common_BasicSetups_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|578219231");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_11_Out,
    });
    self.box_IndexList_v2_15 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|593599693");
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
                [0] = self.f_box_IndexList_v2_15_Output_0,
                [1] = self.f_box_IndexList_v2_15_Output_1,
                [2] = self.f_box_IndexList_v2_15_Output_2,
                [3] = self.f_box_IndexList_v2_15_Output_3,
                [4] = self.f_box_IndexList_v2_15_Output_4,
                [5] = self.f_box_IndexList_v2_15_Output_5,
            },
            count = 6,
        },
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|635177199");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_Brick_Exp_Intro_v5_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_Intro_v5.debug.lua");
    l0 = self.box_Brick_Exp_Intro_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Intro_v5_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|1088483248");
    l0:SetConnections({
        -- End,
        [0] = self.f_box_Brick_Exp_Intro_v5_26_End,
        -- Initialized,
        [1] = self.f_box_Brick_Exp_Intro_v5_26_Initialized,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|1487648632");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_IndexList_v2_4 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|1764755911");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 3,
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
                [0] = self.f_box_IndexList_v2_4_Output_0,
                [1] = self.f_box_IndexList_v2_4_Output_1,
                [2] = self.f_box_IndexList_v2_4_Output_2,
            },
            count = 3,
        },
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|963956221", "963956221", "Swamp_C7_CTP_010_Intro", "In", "box_ActivityAcknowledgeGate_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_ActivityInitialized_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Intro_v5_26();
    l0 = self.box_ActivityInitialized_21;
    l1 = self.box_Brick_Exp_Intro_v5_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|921196178", "921196178", "Swamp_C7_CTP_010_Intro", "box_ActivityInitialized_21.Out", "box_Brick_Exp_Intro_v5_26.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_SetInteger_v2_13_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|775809423", "775809423", "Swamp_C7_CTP_010_Intro", "box_SetInteger_v2_13.Out", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_15();
    l0 = self.box_MultipleOR_1;
    l1 = self.box_IndexList_v2_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|638286835", "638286835", "Swamp_C7_CTP_010_Intro", "box_MultipleOR_1.Out", "box_IndexList_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_11_Out()
    local l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_11_Out();
    l0 = self.box_Brick_Exp_Common_BasicSetups_11;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|671115957", "671115957", "Swamp_C7_CTP_010_Intro", "box_Brick_Exp_Common_BasicSetups_11.Out", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IndexList_v2_15_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_12();
    l0 = self.box_IndexList_v2_15;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|22244641", "22244641", "Swamp_C7_CTP_010_Intro", "box_IndexList_v2_15.Output", "box_MissionBlockLayer_12.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_15_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_16();
    l0 = self.box_IndexList_v2_15;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|172530223", "172530223", "Swamp_C7_CTP_010_Intro", "box_IndexList_v2_15.Output", "box_MissionBlockLayer_16.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_15_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_10();
    l0 = self.box_IndexList_v2_15;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|926861602", "926861602", "Swamp_C7_CTP_010_Intro", "box_IndexList_v2_15.Output", "box_MissionBlockLayer_10.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_15_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_17();
    l0 = self.box_IndexList_v2_15;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|235565779", "235565779", "Swamp_C7_CTP_010_Intro", "box_IndexList_v2_15.Output", "box_MissionBlockLayer_17.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_15_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_9();
    l0 = self.box_IndexList_v2_15;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|575371425", "575371425", "Swamp_C7_CTP_010_Intro", "box_IndexList_v2_15.Output", "box_MissionBlockLayer_9.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_15_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_19();
    l0 = self.box_IndexList_v2_15;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|565951443", "565951443", "Swamp_C7_CTP_010_Intro", "box_IndexList_v2_15.Output", "box_MissionBlockLayer_19.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|1417182399", "1417182399", "Swamp_C7_CTP_010_Intro", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|1146394061", "1146394061", "Swamp_C7_CTP_010_Intro", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Intro_v5_26_End()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_22();
    l0 = self.box_Brick_Exp_Intro_v5_26;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|349002090", "349002090", "Swamp_C7_CTP_010_Intro", "box_Brick_Exp_Intro_v5_26.End", "box_ActivityEnd_22.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Intro_v5_26_Initialized()
    local l0, l1;
    l0 = self.box_Brick_Exp_Intro_v5_26;
    l1 = self.box_ActivityInitialized_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|107579819", "107579819", "Swamp_C7_CTP_010_Intro", "box_Brick_Exp_Intro_v5_26.Initialized", "box_ActivityInitialized_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_IntegerArithmetics_v2_6_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_4();
    l0 = self.box_IndexList_v2_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|2001871224", "2001871224", "Swamp_C7_CTP_010_Intro", "box_IntegerArithmetics_v2_6.Out", "box_IndexList_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetInteger_v2_18_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_18_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|2079110076", "2079110076", "Swamp_C7_CTP_010_Intro", "box_SetInteger_v2_18.Out", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_MultipleOR_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|1142427284", "1142427284", "Swamp_C7_CTP_010_Intro", "box_MultipleOR_5.Out", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_4_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_18();
    l0 = self.box_IndexList_v2_4;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|2125666070", "2125666070", "Swamp_C7_CTP_010_Intro", "box_IndexList_v2_4.Output", "box_SetInteger_v2_18.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_4_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_13();
    l0 = self.box_IndexList_v2_4;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|668882742", "668882742", "Swamp_C7_CTP_010_Intro", "box_IndexList_v2_4.Output", "box_SetInteger_v2_13.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_4_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_11();
    l0 = self.box_IndexList_v2_4;
    l1 = self.box_Brick_Exp_Common_BasicSetups_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|1967987757", "1967987757", "Swamp_C7_CTP_010_Intro", "box_IndexList_v2_4.Output", "box_Brick_Exp_Common_BasicSetups_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetExpeditionGameplayElements_14();
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|1116923254", "1116923254", "Swamp_C7_CTP_010_Intro", "box_OutputOrder_v2_20.Out", "box_GetExpeditionGameplayElements_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Intro_v5_26();
    l0 = self.box_Brick_Exp_Intro_v5_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|1654237272", "1654237272", "Swamp_C7_CTP_010_Intro", "box_OutputOrder_v2_20.Out", "box_Brick_Exp_Intro_v5_26.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(0, params);
end;

function export:f_box_GetExpeditionGameplayElements_14_Out()
    local params, l0;
    self:OnExit_box_GetExpeditionGameplayElements_14_Out();
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_6();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|1426199020", "1426199020", "Swamp_C7_CTP_010_Intro", "box_GetExpeditionGameplayElements_14.Out", "box_IntegerArithmetics_v2_6.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_MissionBlockLayer_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|29407956");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "54181922579949940",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|77516264");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "63189121834698925",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|110107094");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_13_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_11()
    local params;
    params = {
        -- DebugMode,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_15()
    local params;
    params = {
        -- Index,
        [0] = self.i_PackagePositionID,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|634444601");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|948679179");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "27160324815702339",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Intro_v5_26()
    local params;
    params = {
        -- CameraEntity,
        [0] = "2108235380451978424",
        -- LocationName,
        [1] = {
            section = "IntroSequence_LocationName",
            item = "LOC_ExpeditionLocation_Swamp_C7",
            id = "1024175",
        },
        -- PlayerSpawnpoint_A,
        [2] = "2107636906780000800",
        -- PlayerSpawnpoint_B,
        [3] = "2107636906780000798",
        -- PlayerSpawnpoint_C,
        [4] = "2107636906780000799",
        -- PlayMusicEvent,
        [5] = "645226521",
        -- SceneEntity_A,
        [6] = "2108235346939489452",
        -- SceneEntity_B,
        [7] = "2108235347199536304",
        -- SceneEntity_C,
        [8] = "2108235347488943284",
        -- Sequence,
        [9] = "Sequences/bowmore_expedition/intro/expedition_intro_swamp_v2.seq",
        -- StateName,
        [10] = {
            section = "IntroSequence_LocationName",
            item = "LOC_ExpeditionLocation_Swamp_C7_State",
            id = "1029783",
        },
        -- StopMusicEvent,
        [11] = "3757372511",
        -- VO_Intro_Unique_1,
        [12] = "3429021045",
        -- VO_Intro_Unique_2,
        [13] = "733471300",
        -- VO_Intro_Unique_3,
        [14] = "510154609",
        -- VO_Intro_Unique_4,
        [15] = "2143837073",
        -- VO_Intro_Unique_5,
        [16] = "3340710227",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|1282357145");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "36167524070450487",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|1326066755");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_6_Out,
    });
    params = {
        -- A,
        [0] = self._sld_ExpeditionDifficultyLevel_box_GetExpeditionGameplayElements_14,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|1332201637");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_18_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|1448002212");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "45174723325202631",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_4()
    local params;
    params = {
        -- Index,
        [0] = Globals.Swamp_C7_CTP_010_Main.i_Difficulty,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|1878910939");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "72196321089447012",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|1903245215");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetExpeditionGameplayElements_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetExpeditionGameplayElements_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Intro.domino|@Swamp_C7_CTP_010_Intro|1923478723");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetExpeditionGameplayElements_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_PackagePositionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_11_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_11;
    self.i_PackagePositionID = l0:GetDataOutValue(2);
end;

function export:OnExit_box_IntegerArithmetics_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    Globals.Swamp_C7_CTP_010_Main.i_Difficulty = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_18_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_PackagePositionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetExpeditionGameplayElements_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    self._sld_ExpeditionDifficultyLevel_box_GetExpeditionGameplayElements_14 = l0:GetDataOutValue(0);
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
