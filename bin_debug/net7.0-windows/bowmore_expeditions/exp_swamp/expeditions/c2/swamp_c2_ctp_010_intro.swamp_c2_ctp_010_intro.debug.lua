LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/expeditions/c2/swamp_c2_ctp_010_intro.domino
-- User graph: Swamp_C2_CTP_010_Intro
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
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1919232388.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2005327232.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3719151969.bnk]], "CSoundResource");
        cboxRes:LoadResource([[955781200.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3170886769.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1118699467.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1549670302.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C2/Swamp_C2_CTP_010_Intro.Swamp_C2_CTP_010_Intro.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/SimpleNode.lua")] = {
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
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Swamp_C2_CTP_010_Intro";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro";
    self.iPackagePositionID = 0;
    self.iDifficulty = 0;
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|148562194");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_Brick_Exp_Common_BasicSetups_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|753980123");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_22_Out,
    });
    self.box_IndexList_v2_23 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|794615019");
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
                [0] = self.f_box_IndexList_v2_23_Output_0,
                [1] = self.f_box_IndexList_v2_23_Output_1,
                [2] = self.f_box_IndexList_v2_23_Output_2,
            },
            count = 3,
        },
    });
    self.box_Brick_Exp_Intro_v5_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_Intro_v5.debug.lua");
    l0 = self.box_Brick_Exp_Intro_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Intro_v5_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|1074734250");
    l0:SetConnections({
        -- End,
        [0] = self.f_box_Brick_Exp_Intro_v5_2_End,
        -- Initialized,
        [1] = self.f_box_Brick_Exp_Intro_v5_2_Initialized,
    });
    self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|1105764707");
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
        [0] = self.f_box_MultipleOR_24_Out,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|1265411125");
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
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|1276720746");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|576589053", "576589053", "Swamp_C2_CTP_010_Intro", "In", "box_ActivityAcknowledgeGate_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Intro_v5_2();
    l0 = self.box_ActivityInitialized_1;
    l1 = self.box_Brick_Exp_Intro_v5_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|1618845862", "1618845862", "Swamp_C2_CTP_010_Intro", "box_ActivityInitialized_1.Out", "box_Brick_Exp_Intro_v5_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_9();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|982376255", "982376255", "Swamp_C2_CTP_010_Intro", "box_OutputOrder_v2_12.Out", "box_Simple_Node_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_22();
    l0 = self.box_Brick_Exp_Common_BasicSetups_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|934114781", "934114781", "Swamp_C2_CTP_010_Intro", "box_OutputOrder_v2_12.Out", "box_Brick_Exp_Common_BasicSetups_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_22_Out()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_22_Out();
    params = self:OnEnter_box_IndexList_v2_23();
    l0 = self.box_Brick_Exp_Common_BasicSetups_22;
    l1 = self.box_IndexList_v2_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|1932763635", "1932763635", "Swamp_C2_CTP_010_Intro", "box_Brick_Exp_Common_BasicSetups_22.Out", "box_IndexList_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_23_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_20();
    l0 = self.box_IndexList_v2_23;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|169485699", "169485699", "Swamp_C2_CTP_010_Intro", "box_IndexList_v2_23.Output", "box_SetInteger_v2_20.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_23_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_21();
    l0 = self.box_IndexList_v2_23;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|717623434", "717623434", "Swamp_C2_CTP_010_Intro", "box_IndexList_v2_23.Output", "box_SetInteger_v2_21.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_23_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_23;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|1166794146", "1166794146", "Swamp_C2_CTP_010_Intro", "box_IndexList_v2_23.Output", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Simple_Node_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Intro_v5_2();
    l0 = self.box_Brick_Exp_Intro_v5_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|592746847", "592746847", "Swamp_C2_CTP_010_Intro", "box_Simple_Node_9.Out", "box_Brick_Exp_Intro_v5_2.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_19_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_17();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|688867023", "688867023", "Swamp_C2_CTP_010_Intro", "box_Compare_Integers_19.A_eq_B", "box_MissionBlockLayer_17.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_19_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_18();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|1340907077", "1340907077", "Swamp_C2_CTP_010_Intro", "box_Compare_Integers_19.A_gt_B", "box_MissionBlockLayer_18.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_19_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_16();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|1614594284", "1614594284", "Swamp_C2_CTP_010_Intro", "box_Compare_Integers_19.A_lt_B", "box_MissionBlockLayer_16.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Intro_v5_2_End()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = self.box_Brick_Exp_Intro_v5_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|1054291217", "1054291217", "Swamp_C2_CTP_010_Intro", "box_Brick_Exp_Intro_v5_2.End", "box_ActivityEnd_4.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Intro_v5_2_Initialized()
    local l0, l1;
    l0 = self.box_Brick_Exp_Intro_v5_2;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|1026263711", "1026263711", "Swamp_C2_CTP_010_Intro", "box_Brick_Exp_Intro_v5_2.Initialized", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_19();
    l0 = self.box_MultipleOR_24;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|189715834", "189715834", "Swamp_C2_CTP_010_Intro", "box_MultipleOR_24.Out", "box_Compare_Integers_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_MultipleOR_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|1476393806", "1476393806", "Swamp_C2_CTP_010_Intro", "box_MultipleOR_6.Out", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|2043950262", "2043950262", "Swamp_C2_CTP_010_Intro", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|545400938", "545400938", "Swamp_C2_CTP_010_Intro", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetInteger_v2_21_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_21_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|1836843963", "1836843963", "Swamp_C2_CTP_010_Intro", "box_SetInteger_v2_21.Out", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetInteger_v2_20_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_20_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|499336916", "499336916", "Swamp_C2_CTP_010_Intro", "box_SetInteger_v2_20.Out", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_MissionBlockLayer_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|217572303");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160310099165069",
        -- missionLayerId,
        [1] = "36167509353906061",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|355542367");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|420157931");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160310099165069",
        -- missionLayerId,
        [1] = "54181907863450786",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|740361428");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_22()
    local params;
    params = {
        -- DebugMode,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_23()
    local params;
    params = {
        -- Index,
        [0] = self.iDifficulty,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|920610895");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|921108138");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_19_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_19_A_gt_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_19_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iPackagePositionID,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Intro_v5_2()
    local params;
    params = {
        -- CameraEntity,
        [0] = "2107734874998711488",
        -- LocationName,
        [1] = {
            section = "IntroSequence_LocationName",
            item = "LOC_ExpeditionLocation_Swamp_C2",
            id = "959294",
        },
        -- PlayerSpawnpoint_A,
        [2] = "2107152547073491844",
        -- PlayerSpawnpoint_B,
        [3] = "2107152549208392582",
        -- PlayerSpawnpoint_C,
        [4] = "2107152551360070536",
        -- PlayMusicEvent,
        [5] = "3719151969",
        -- SceneEntity_A,
        [6] = "2107721301004131366",
        -- SceneEntity_B,
        [7] = "2107721309453556776",
        -- SceneEntity_C,
        [8] = "2107721315082312746",
        -- Sequence,
        [9] = "Sequences/bowmore_expedition/intro/expedition_intro_swamp_v2.seq",
        -- StateName,
        [10] = {
            section = "IntroSequence_LocationName",
            item = "LOC_ExpeditionLocation_Swamp_C2_State",
            id = "1029782",
        },
        -- StopMusicEvent,
        [11] = "1549670302",
        -- VO_Intro_Unique_1,
        [12] = "1919232388",
        -- VO_Intro_Unique_2,
        [13] = "955781200",
        -- VO_Intro_Unique_3,
        [14] = "3170886769",
        -- VO_Intro_Unique_4,
        [15] = "1118699467",
        -- VO_Intro_Unique_5,
        [16] = "2005327232",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|1355538778");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_21_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|1722322474");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160310099165069",
        -- missionLayerId,
        [1] = "45174708608690047",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Intro.domino|@Swamp_C2_CTP_010_Intro|2091631776");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_20_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_22_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_22;
    self.iDifficulty = l0:GetDataOutValue(0);
    self.iPackagePositionID = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetInteger_v2_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPackagePositionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPackagePositionID = l0:GetDataOutValue(0);
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
