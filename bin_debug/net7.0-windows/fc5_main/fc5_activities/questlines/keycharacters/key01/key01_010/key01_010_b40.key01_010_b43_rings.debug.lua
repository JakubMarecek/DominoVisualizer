LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key01/key01_010/key01_010_b40.domino
-- User graph: KEY01_010_B43_Rings
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Generic.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlaySimpleAnimation_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[4218538320.bnk]], "CSoundResource");
        cboxRes:LoadResource([[entityarchetypeslibrary/9015256522055681.ark.fcb]], "CEntityArchetypeRes");
        cboxRes:LoadResource([[animations\ai\stp\simpleanimation\generic\unsafe\aistp_unsafe-suicide_-st_noweap__-end.mab]], "CAnimationResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.KEY01_010_B43_Rings.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Generic.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Started",
                delayed = false,
            },
            [1] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "aVehicleArchetype",
                type = "archetype",
            },
            [1] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [2] = {
                name = "hasObjective",
                type = "bool",
            },
            [3] = {
                name = "o_Objective",
                type = "oasis",
            },
            [4] = {
                name = "sVehicleType",
                type = "string",
            },
        },
        dataInCount = 5,
        dataOut = {
            [0] = {
                name = "e_GenericVehicleID",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")] = {
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
            [0] = {
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "TargetGroup",
                type = "group",
            },
            [3] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Delay_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
            },
            [2] = {
                name = "Start",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "LoopingEnded",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Resumed",
                delayed = false,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Stopped",
                delayed = false,
            },
            [5] = {
                name = "TimeElapsed",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "loop",
                type = "bool",
            },
            [1] = {
                name = "nbLoop",
                type = "int",
            },
            [2] = {
                name = "seconds",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "currentLoop",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/ParticleSystem_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Clean",
            },
            [1] = {
                name = "Pause",
            },
            [2] = {
                name = "Start",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Cleaned",
                delayed = false,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "TargetEntities",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlaySimpleAnimation_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "AnimFinished",
                delayed = true,
            },
            [1] = {
                name = "Played",
                delayed = false,
            },
            [2] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "animation",
                type = "simpleAnimation",
            },
            [1] = {
                name = "animPlayMode",
                type = "int",
            },
            [2] = {
                name = "blendDuration",
                type = "float",
            },
            [3] = {
                name = "loopAnim",
                type = "bool",
            },
            [4] = {
                name = "speedScale",
                type = "float",
            },
            [5] = {
                name = "target",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PositionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "StartOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "blendCurve",
                type = "archetype",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "endPos",
                type = "list",
            },
            [3] = {
                name = "endRot",
                type = "list",
            },
            [4] = {
                name = "endTarget",
                type = "entity",
            },
            [5] = {
                name = "players",
                type = "group",
            },
            [6] = {
                name = "targets",
                type = "group",
            },
            [7] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 8,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ProximityRadiusListener_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "AllFar",
                delayed = true,
            },
            [1] = {
                name = "AllNear",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Enabled",
                delayed = false,
            },
            [4] = {
                name = "SomeoneFar",
                delayed = true,
            },
            [5] = {
                name = "SomeoneNear",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "Entities",
                type = "group",
            },
            [2] = {
                name = "farZone",
                type = "float",
            },
            [3] = {
                name = "id2",
                type = "entity",
            },
            [4] = {
                name = "nearZone",
                type = "float",
            },
            [5] = {
                name = "use2d",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "currentEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/RemoveEntity_v2.lua")] = {
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
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Failed",
                delayed = false,
            },
            [1] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "CallSoundID",
                type = "Sound",
            },
            [1] = {
                name = "eTargetMarker",
                type = "entity",
            },
            [2] = {
                name = "eTargetTrigger",
                type = "entity",
            },
            [3] = {
                name = "eVehicle",
                type = "entity",
            },
            [4] = {
                name = "eVehicleMarker",
                type = "entity",
            },
            [5] = {
                name = "eVFX",
                type = "entity",
            },
            [6] = {
                name = "FailReason",
                type = "oasis",
            },
            [7] = {
                name = "ObjectiveID",
                type = "oasis",
            },
        },
        dataInCount = 8,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "KEY01_010_B43_Rings";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings";
    self.Out = DummyFunction;
    self.ePlayerVehicle = nil;
    self.box_PlaySimpleAnimation_v2_12 = cbox:CreateBox("Domino/System/PlaySimpleAnimation_v2.lua");
    l0 = self.box_PlaySimpleAnimation_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySimpleAnimation_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|16594939");
    l0:SetConnections({
        -- Played,
        [1] = self.f_box_PlaySimpleAnimation_v2_12_Played,
    });
    self.box_RemoveEntity_v2_5 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|26727751");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_14 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|505025587");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_14_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_14_SomeoneNear,
    });
    self.box_Custom_Brick_Deliver_v5_9 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
    l0 = self.box_Custom_Brick_Deliver_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Brick_Deliver_v5_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|544326946");
    l0:SetConnections({
        -- Failed,
        [0] = self.f_box_Custom_Brick_Deliver_v5_9_Failed,
        -- Success,
        [1] = self.f_box_Custom_Brick_Deliver_v5_9_Success,
    });
    self.box_Delay_v5_2 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|999284162");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_2_TimeElapsed,
    });
    self.box_Custom_Brick_Deliver_v5_7 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
    l0 = self.box_Custom_Brick_Deliver_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Brick_Deliver_v5_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|1113161019");
    l0:SetConnections({
        -- Failed,
        [0] = self.f_box_Custom_Brick_Deliver_v5_7_Failed,
        -- Success,
        [1] = self.f_box_Custom_Brick_Deliver_v5_7_Success,
    });
    self.box_Custom_Brick_Deliver_v5_3 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
    l0 = self.box_Custom_Brick_Deliver_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Brick_Deliver_v5_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|1552763322");
    l0:SetConnections({
        -- Failed,
        [0] = self.f_box_Custom_Brick_Deliver_v5_3_Failed,
        -- Success,
        [1] = self.f_box_Custom_Brick_Deliver_v5_3_Success,
    });
    self.box_Brick_TakeControl_Vehicle_Generic_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Generic.debug.lua");
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_TakeControl_Vehicle_Generic_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|1590153188");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_Brick_TakeControl_Vehicle_Generic_1_Started,
        -- Success,
        [1] = self.f_box_Brick_TakeControl_Vehicle_Generic_1_Success,
    });
    self.box_PositionModifier_v2_17 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|1896467020");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_17_Done,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_TakeControl_Vehicle_Generic_1();
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|1296666333", "1296666333", "KEY01_010_B43_Rings", "In", "box_Brick_TakeControl_Vehicle_Generic_1.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_PlaySimpleAnimation_v2_12_Played()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_PlaySimpleAnimation_v2_12;
    l1 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|1696481776", "1696481776", "KEY01_010_B43_Rings", "box_PlaySimpleAnimation_v2_12.Played", "box_Delay_v5_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_14_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_Brick_Deliver_v5_3();
    l0 = self.box_ProximityRadiusListener_v3_14;
    l1 = self.box_Custom_Brick_Deliver_v5_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|376780656", "376780656", "KEY01_010_B43_Rings", "box_ProximityRadiusListener_v3_14.Enabled", "box_Custom_Brick_Deliver_v5_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_14_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySimpleAnimation_v2_12();
    l0 = self.box_ProximityRadiusListener_v3_14;
    l1 = self.box_PlaySimpleAnimation_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|1051702497", "1051702497", "KEY01_010_B43_Rings", "box_ProximityRadiusListener_v3_14.SomeoneNear", "box_PlaySimpleAnimation_v2_12.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Custom_Brick_Deliver_v5_9_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_Custom_Brick_Deliver_v5_9;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|2064217140", "2064217140", "KEY01_010_B43_Rings", "box_Custom_Brick_Deliver_v5_9.Failed", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Custom_Brick_Deliver_v5_9_Success()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_14();
    l0 = self.box_Custom_Brick_Deliver_v5_9;
    l1 = self.box_ProximityRadiusListener_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|878458600", "878458600", "KEY01_010_B43_Rings", "box_Custom_Brick_Deliver_v5_9.Success", "box_ProximityRadiusListener_v3_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_2_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_17();
    l0 = self.box_Delay_v5_2;
    l1 = self.box_PositionModifier_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|1054907179", "1054907179", "KEY01_010_B43_Rings", "box_Delay_v5_2.TimeElapsed", "box_PositionModifier_v2_17.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Custom_Brick_Deliver_v5_7_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_Custom_Brick_Deliver_v5_7;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|718083494", "718083494", "KEY01_010_B43_Rings", "box_Custom_Brick_Deliver_v5_7.Failed", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Custom_Brick_Deliver_v5_7_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_Brick_Deliver_v5_9();
    l0 = self.box_Custom_Brick_Deliver_v5_7;
    l1 = self.box_Custom_Brick_Deliver_v5_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|1307040371", "1307040371", "KEY01_010_B43_Rings", "box_Custom_Brick_Deliver_v5_7.Success", "box_Custom_Brick_Deliver_v5_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Custom_Brick_Deliver_v5_3_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_Custom_Brick_Deliver_v5_3;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|2115310108", "2115310108", "KEY01_010_B43_Rings", "box_Custom_Brick_Deliver_v5_3.Failed", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Custom_Brick_Deliver_v5_3_Success()
    local l0;
    l0 = self.box_Custom_Brick_Deliver_v5_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|2071168599", "2071168599", "KEY01_010_B43_Rings", "box_Custom_Brick_Deliver_v5_3.Success", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_Brick_TakeControl_Vehicle_Generic_1_Started()
    self:OnExit_box_Brick_TakeControl_Vehicle_Generic_1_Started();
end;

function export:f_box_Brick_TakeControl_Vehicle_Generic_1_Success()
    local params, l0, l1;
    self:OnExit_box_Brick_TakeControl_Vehicle_Generic_1_Success();
    params = self:OnEnter_box_AddActivityObjective_v2_15();
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|1865518282", "1865518282", "KEY01_010_B43_Rings", "box_Brick_TakeControl_Vehicle_Generic_1.Success", "box_AddActivityObjective_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_5();
    l0 = self.box_RemoveEntity_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|1479727934", "1479727934", "KEY01_010_B43_Rings", "box_OutputOrder_v2_6.Out", "box_RemoveEntity_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_4();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|2104911736", "2104911736", "KEY01_010_B43_Rings", "box_OutputOrder_v2_6.Out", "box_ParticleSystem_v3_4.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_17_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_PositionModifier_v2_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|1682801398", "1682801398", "KEY01_010_B43_Rings", "box_PositionModifier_v2_17.Done", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Custom_Brick_Deliver_v5_7();
    l0 = self.box_Custom_Brick_Deliver_v5_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|1762615697", "1762615697", "KEY01_010_B43_Rings", "box_AddActivityObjective_v2_15.Out", "box_Custom_Brick_Deliver_v5_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_16()
    local params, l0;
    DrawTextToScreen("Comment: Fail", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'fail', Class: 'Simple Node')-- Comment: Fail");
    DrawTextToScreen("Comment: Fail", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'fail', Class: 'Simple Node')-- Comment: Fail");
    DrawTextToScreen("Comment: Fail", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'fail', Class: 'Simple Node')-- Comment: Fail");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|@fail");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySimpleAnimation_v2_12()
    local params;
    params = {
        -- animation,
        [0] = [[animations\ai\stp\simpleanimation\generic\unsafe\aistp_unsafe-suicide_-st_noweap__-end.mab]],
        -- animPlayMode,
        [1] = 0,
        -- blendDuration,
        [2] = 0,
        -- loopAnim,
        [3] = false,
        -- speedScale,
        [4] = 1,
        -- target,
        [5] = "2104428477907219788",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_5()
    local params;
    params = {
        -- Group,
        [0] = "2104428477907219788",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.ePlayerVehicle,
        -- id2,
        [3] = "2104428477907219788",
        -- nearZone,
        [4] = 150,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Custom_Brick_Deliver_v5_9()
    local params;
    params = {
        -- eTargetMarker,
        [1] = "2102489294443714283",
        -- eTargetTrigger,
        [2] = "2102542068518815047",
        -- eVehicle,
        [3] = self.ePlayerVehicle,
        -- eVehicleMarker,
        [4] = "2097663611706043228",
        -- eVFX,
        [5] = "2102489294450005741",
        -- FailReason,
        [6] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- ObjectiveID,
        [7] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_2()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.75,
    };
    return params;
end;

function export:OnEnter_box_Custom_Brick_Deliver_v5_7()
    local params;
    DrawTextToScreen("Comment: Still, makes my goddamn blood boil that I gotta uproot from the place my family worked so hard to put together. They earned every inch of this land with blood and sweat, and now I gotta lose it to some man-bunned little twerp and his posse of inbreeds? Fuck it! You don't mess with a Rye without it leavin' a scar. Let's give 'em a long kiss goodbye, partner!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Custom_Brick_Deliver_v5')-- Comment: Still, makes my goddamn blood boil that I gotta uproot from the place my family worked so hard to put together. They earned every inch of this land with blood and sweat, and now I gotta lose it to some man-bunned little twerp and his posse of inbreeds? Fuck it! You don't mess with a Rye without it leavin' a scar. Let's give 'em a long kiss goodbye, partner!");
    params = {
        -- CallSoundID,
        [0] = "4218538320",
        -- eTargetMarker,
        [1] = "2102489294422742753",
        -- eTargetTrigger,
        [2] = "2102542068523009355",
        -- eVehicle,
        [3] = self.ePlayerVehicle,
        -- eVehicleMarker,
        [4] = "2097663611706043228",
        -- eVFX,
        [5] = "2102489294429034211",
        -- FailReason,
        [6] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- ObjectiveID,
        [7] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
    };
    return params;
end;

function export:OnEnter_box_Custom_Brick_Deliver_v5_3()
    local params;
    params = {
        -- eTargetMarker,
        [1] = "2102489294462588661",
        -- eTargetTrigger,
        [2] = "2102542068516717891",
        -- eVehicle,
        [3] = self.ePlayerVehicle,
        -- eVehicleMarker,
        [4] = "2097663611706043228",
        -- eVFX,
        [5] = "2102489294468880119",
        -- FailReason,
        [6] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- ObjectiveID,
        [7] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
    };
    return params;
end;

function export:OnEnter_box_Brick_TakeControl_Vehicle_Generic_1()
    local params;
    params = {
        -- aVehicleArchetype,
        [0] = "9015256522055681",
        -- bCompletePreviousObjective,
        [1] = false,
        -- hasObjective,
        [2] = false,
        -- o_Objective,
        [3] = {
            section = "BRICK_Steal_Vehicle",
            item = "BRICK_Steal_Vehicle_OBJ",
            id = "376562",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|1798239229");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_17()
    local params;
    params = {
        -- blendTime,
        [1] = 0.7,
        -- endTarget,
        [4] = "2104430050387454208",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104428477907219788",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|2000488182");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_15_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B43_Rings|2025812507");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104430050387454208",
    };
    return params;
end;

function export:OnExit_box_Brick_TakeControl_Vehicle_Generic_1_Started()
    local l0;
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_1;
    self.ePlayerVehicle = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_TakeControl_Vehicle_Generic_1_Success()
    local l0;
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_1;
    self.ePlayerVehicle = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
