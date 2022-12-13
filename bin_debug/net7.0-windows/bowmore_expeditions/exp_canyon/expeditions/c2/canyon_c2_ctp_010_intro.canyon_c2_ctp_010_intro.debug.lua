LUACߠ  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/c2/canyon_c2_ctp_010_intro.domino
-- User graph: Canyon_C2_CTP_010_Intro
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
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1831381375.bnk]], "CSoundResource");
        cboxRes:LoadResource([[30992813.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2067496926.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1711870921.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2067889058.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4272675246.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2583714736.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Intro.Canyon_C2_CTP_010_Intro.debug.lua")] = {
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
    self._name = "Canyon_C2_CTP_010_Intro";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro";
    self.PackageID = 0;
    self.Difficulty = 0;
    self.box_ActivityInitialized_11 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|81525549");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_11_Out,
    });
    self.box_Brick_Exp_Intro_v5_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_Intro_v5.debug.lua");
    l0 = self.box_Brick_Exp_Intro_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Intro_v5_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|161600400");
    l0:SetConnections({
        -- End,
        [0] = self.f_box_Brick_Exp_Intro_v5_13_End,
        -- Initialized,
        [1] = self.f_box_Brick_Exp_Intro_v5_13_Initialized,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|461657954");
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
    self.box_Brick_Exp_Common_BasicSetups_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|630494375");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_10_Out,
    });
    self.box_IndexList_v2_22 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|783216535");
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
                [0] = self.f_box_IndexList_v2_22_Output_0,
                [1] = self.f_box_IndexList_v2_22_Output_1,
                [2] = self.f_box_IndexList_v2_22_Output_2,
                [3] = self.f_box_IndexList_v2_22_Output_3,
                [4] = self.f_box_IndexList_v2_22_Output_4,
                [5] = self.f_box_IndexList_v2_22_Output_5,
            },
            count = 6,
        },
    });
    self.box_IndexList_v2_19 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|942207211");
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
                [0] = self.f_box_IndexList_v2_19_Output_0,
                [1] = self.f_box_IndexList_v2_19_Output_1,
                [2] = self.f_box_IndexList_v2_19_Output_2,
            },
            count = 3,
        },
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1992591172");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|828527840", "828527840", "Canyon_C2_CTP_010_Intro", "In", "box_ActivityAcknowledgeGate_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_ActivityInitialized_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Intro_v5_13();
    l0 = self.box_ActivityInitialized_11;
    l1 = self.box_Brick_Exp_Intro_v5_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1122458807", "1122458807", "Canyon_C2_CTP_010_Intro", "box_ActivityInitialized_11.Out", "box_Brick_Exp_Intro_v5_13.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Intro_v5_13_End()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_8();
    l0 = self.box_Brick_Exp_Intro_v5_13;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|993476614", "993476614", "Canyon_C2_CTP_010_Intro", "box_Brick_Exp_Intro_v5_13.End", "box_ActivityEnd_8.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Intro_v5_13_Initialized()
    local l0, l1;
    l0 = self.box_Brick_Exp_Intro_v5_13;
    l1 = self.box_ActivityInitialized_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|16475820", "16475820", "Canyon_C2_CTP_010_Intro", "box_Brick_Exp_Intro_v5_13.Initialized", "box_ActivityInitialized_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_MultipleOR_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1523510667", "1523510667", "Canyon_C2_CTP_010_Intro", "box_MultipleOR_5.Out", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_37_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|889387644", "889387644", "Canyon_C2_CTP_010_Intro", "box_MissionBlockLayer_37.Activated", "box_Simple_Node_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_10_Out()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_10_Out();
    params = self:OnEnter_box_IndexList_v2_19();
    l0 = self.box_Brick_Exp_Common_BasicSetups_10;
    l1 = self.box_IndexList_v2_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1900751544", "1900751544", "Canyon_C2_CTP_010_Intro", "box_Brick_Exp_Common_BasicSetups_10.Out", "box_IndexList_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_22_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_24();
    l0 = self.box_IndexList_v2_22;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|401679738", "401679738", "Canyon_C2_CTP_010_Intro", "box_IndexList_v2_22.Output", "box_MissionBlockLayer_24.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_22_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_32();
    l0 = self.box_IndexList_v2_22;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1501619589", "1501619589", "Canyon_C2_CTP_010_Intro", "box_IndexList_v2_22.Output", "box_MissionBlockLayer_32.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_22_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_29();
    l0 = self.box_IndexList_v2_22;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|781365786", "781365786", "Canyon_C2_CTP_010_Intro", "box_IndexList_v2_22.Output", "box_MissionBlockLayer_29.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_22_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_25();
    l0 = self.box_IndexList_v2_22;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|489529705", "489529705", "Canyon_C2_CTP_010_Intro", "box_IndexList_v2_22.Output", "box_MissionBlockLayer_25.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_22_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_31();
    l0 = self.box_IndexList_v2_22;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|657981392", "657981392", "Canyon_C2_CTP_010_Intro", "box_IndexList_v2_22.Output", "box_MissionBlockLayer_31.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_22_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_35();
    l0 = self.box_IndexList_v2_22;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1534269826", "1534269826", "Canyon_C2_CTP_010_Intro", "box_IndexList_v2_22.Output", "box_MissionBlockLayer_35.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_19_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_37();
    l0 = self.box_IndexList_v2_19;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|276840491", "276840491", "Canyon_C2_CTP_010_Intro", "box_IndexList_v2_19.Output", "box_MissionBlockLayer_37.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_19_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_27();
    l0 = self.box_IndexList_v2_19;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1377922275", "1377922275", "Canyon_C2_CTP_010_Intro", "box_IndexList_v2_19.Output", "box_MissionBlockLayer_27.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_19_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_IndexList_v2_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1990095140", "1990095140", "Canyon_C2_CTP_010_Intro", "box_IndexList_v2_19.Output", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_27_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_28();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1702561689", "1702561689", "Canyon_C2_CTP_010_Intro", "box_MissionBlockLayer_27.Activated", "box_Simple_Node_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Intro_v5_13();
    l0 = self.box_Brick_Exp_Intro_v5_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1601442721", "1601442721", "Canyon_C2_CTP_010_Intro", "box_OutputOrder_v2_15.Out", "box_Brick_Exp_Intro_v5_13.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_10();
    l0 = self.box_Brick_Exp_Common_BasicSetups_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|717020587", "717020587", "Canyon_C2_CTP_010_Intro", "box_OutputOrder_v2_15.Out", "box_Brick_Exp_Common_BasicSetups_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_4();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|793488355", "793488355", "Canyon_C2_CTP_010_Intro", "box_OutputOrder_v2_20.Out", "box_MissionBlockLayer_4.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_22();
    l0 = self.box_IndexList_v2_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1825619739", "1825619739", "Canyon_C2_CTP_010_Intro", "box_OutputOrder_v2_20.Out", "box_IndexList_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1232185882", "1232185882", "Canyon_C2_CTP_010_Intro", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1469797690", "1469797690", "Canyon_C2_CTP_010_Intro", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_MissionBlockLayer_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|95894676");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "54181910782095594",
        -- missionLayerId,
        [1] = "90210707801300928",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Intro_v5_13()
    local params;
    params = {
        -- CameraEntity,
        [0] = "2109645085711811032",
        -- LocationName,
        [1] = {
            section = "IntroSequence_LocationName",
            item = "LOC_ExpeditionLocation_Canyon_C2",
            id = "1024180",
        },
        -- PlayerSpawnpoint_A,
        [2] = "2107623356982362533",
        -- PlayerSpawnpoint_B,
        [3] = "2107623356982362532",
        -- PlayerSpawnpoint_C,
        [4] = "2107623356982362534",
        -- PlayMusicEvent,
        [5] = "30992813",
        -- SceneEntity_A,
        [6] = "2108234812748730782",
        -- SceneEntity_B,
        [7] = "2108991406698670821",
        -- SceneEntity_C,
        [8] = "2108234805492584854",
        -- Sequence,
        [9] = "Sequences/bowmore_expedition/intro/expedition_intro_canyon_v2.seq",
        -- StateName,
        [10] = {
            section = "IntroSequence_LocationName",
            item = "LOC_ExpeditionLocation_Canyon_C2_State",
            id = "1029787",
        },
        -- StopMusicEvent,
        [11] = "2583714736",
        -- VO_Intro_Unique_1,
        [12] = "2067496926",
        -- VO_Intro_Unique_2,
        [13] = "1831381375",
        -- VO_Intro_Unique_3,
        [14] = "1711870921",
        -- VO_Intro_Unique_4,
        [15] = "2067889058",
        -- VO_Intro_Unique_5,
        [16] = "4272675246",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|231060942");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160322015570823",
        -- missionLayerId,
        [1] = "63189119040896838",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|278136924");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160322015570823",
        -- missionLayerId,
        [1] = "45174720528844057",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|463315544");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_37_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160322015570823",
        -- missionLayerId,
        [1] = "36167521270311816",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_10()
    local params;
    params = {
        -- DebugMode,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|686957202");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|757343588");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160322015570823",
        -- missionLayerId,
        [1] = "54181919786146207",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_22()
    local params;
    params = {
        -- Index,
        [0] = self.PackageID,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_19()
    local params;
    params = {
        -- Index,
        [0] = self.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|966959163");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_27_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160322015570823",
        -- missionLayerId,
        [1] = "45174720528844057",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|972639647");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1068905583");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1131530927");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160322015570823",
        -- missionLayerId,
        [1] = "36167521274085767",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1568814476");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160322015570823",
        -- missionLayerId,
        [1] = "36167521270311816",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1674816010");
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

function export:OnEnter_box_MissionBlockLayer_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1677491233");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160322015570823",
        -- missionLayerId,
        [1] = "27160322019327573",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Intro.domino|@Canyon_C2_CTP_010_Intro|1678052144");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_10_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_10;
    self.Difficulty = l0:GetDataOutValue(0);
    self.PackageID = l0:GetDataOutValue(2);
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
