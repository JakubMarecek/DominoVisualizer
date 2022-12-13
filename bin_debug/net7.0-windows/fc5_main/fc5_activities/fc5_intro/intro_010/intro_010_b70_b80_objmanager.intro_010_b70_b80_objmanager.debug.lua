LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_010/intro_010_b70_b80_objmanager.domino
-- User graph: INTRO_010_B70_B80_OBJManager
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetOasis.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B70_B80_OBJManager.INTRO_010_B70_B80_OBJManager.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")] = {
        stateless = true,
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
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "CharacterId",
                type = "genericdb",
            },
            [1] = {
                name = "Marker",
                type = "entity",
            },
            [2] = {
                name = "ObjectiveId",
                type = "oasis",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")] = {
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
                name = "ObjectiveId",
                type = "oasis",
            },
            [1] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/GetActivityFact.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetFact",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FactNotSet",
                delayed = false,
            },
            [1] = {
                name = "FactSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ActivityIDOrEncounterPrefabID",
                type = "genericdb",
            },
            [1] = {
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener.lua")] = {
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
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "EntityUnloaded",
                delayed = true,
            },
            [3] = {
                name = "LoadedIdReceived",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "CharacterId",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/HealthListener_v6.lua")] = {
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
                name = "Critical",
                delayed = true,
            },
            [1] = {
                name = "Damaged",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Downed",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "Healed",
                delayed = true,
            },
            [6] = {
                name = "Killed",
                delayed = true,
            },
            [7] = {
                name = "Revived",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "current",
                type = "float",
            },
            [1] = {
                name = "delta",
                type = "float",
            },
            [2] = {
                name = "emitterName",
                type = "string",
            },
            [3] = {
                name = "hitLocation",
                type = "string",
            },
            [4] = {
                name = "instigator",
                type = "entity",
            },
            [5] = {
                name = "sourceType",
                type = "string",
            },
            [6] = {
                name = "victim",
                type = "entity",
            },
        },
        dataOutCount = 7,
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
    metadataTable[GetPathID("Domino/System/OnceOnly_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
                dynamicType = 1,
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out",
                dynamicType = 1,
                delayed = false,
            },
            [1] = {
                name = "ResetOut",
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
    metadataTable[GetPathID("Domino/System/Print_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ToAll",
            },
            [1] = {
                name = "ToConsole",
            },
            [2] = {
                name = "ToFile",
            },
            [3] = {
                name = "ToScreen",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Error",
                delayed = false,
            },
            [1] = {
                name = "PrintedToConsole",
                delayed = false,
            },
            [2] = {
                name = "PrintedToFile",
                delayed = false,
            },
            [3] = {
                name = "PrintedToScreen",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bool",
                type = "bool",
            },
            [1] = {
                name = "color",
                type = "string",
            },
            [2] = {
                name = "db",
                type = "genericdb",
            },
            [3] = {
                name = "duration",
                type = "float",
            },
            [4] = {
                name = "float",
                type = "float",
            },
            [5] = {
                name = "id",
                type = "entity",
            },
            [6] = {
                name = "int",
                type = "int",
            },
            [7] = {
                name = "path",
                type = "string",
            },
            [8] = {
                name = "str",
                type = "string",
            },
            [9] = {
                name = "useTimeTag",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
            [0] = {
                name = "errorMsg",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/SetOasis.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromDuniaOasis",
            },
            [1] = {
                name = "FromOasis",
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
                name = "Oasis",
                type = "oasis",
            },
            [1] = {
                name = "OasisFromEditor",
                type = "oasiseditor",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Target",
                type = "oasis",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/UI/OverrideMenuAccessibility.lua")] = {
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
                name = "ActivityLogMenuEnabled",
                type = "bool",
            },
            [1] = {
                name = "AvatarCreationMenuEnabled",
                type = "bool",
            },
            [2] = {
                name = "AvatarCustomizationMenuEnabled",
                type = "bool",
            },
            [3] = {
                name = "ChallengeMenuEnabled",
                type = "bool",
            },
            [4] = {
                name = "LootMenuEnabled",
                type = "bool",
            },
            [5] = {
                name = "OnlineMenuEnabled",
                type = "bool",
            },
            [6] = {
                name = "PerksMenuEnabled",
                type = "bool",
            },
            [7] = {
                name = "ResistanceMenuEnabled",
                type = "bool",
            },
            [8] = {
                name = "SquadMenuEnabled",
                type = "bool",
            },
            [9] = {
                name = "WorldmapMenuEnabled",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "INTRO_010_B70_B80_OBJManager";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager";
    self.marshal = nil;
    self.last_objective = {
        section = "",
        item = "",
        id = "",
    };
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|66977865");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_19_Started,
        -- Stopped,
        [4] = self.f_box_Delay_v5_19_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
    self.box_Delay_v5_47 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|172409249");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_47_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_47_TimeElapsed,
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|268534804");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_30_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_HealthListener_v6_3 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|417764303");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_3_Downed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_3_Revived,
    });
    self.box_MultipleOR_40 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|478450732");
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
        [0] = self.f_box_MultipleOR_40_Out,
    });
    self.box_Delay_v5_42 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|519599190");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_42_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_42_TimeElapsed,
    });
    self.box_MultipleOR_58 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|559071399");
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
        [0] = self.f_box_MultipleOR_58_Out,
    });
    self.box_OnceOnly_v3_13 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|622393007");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_13_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1025855188");
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
        [0] = self.f_box_MultipleOR_20_Out,
    });
    self.box_Delay_v5_52 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1157459571");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_52_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_52_TimeElapsed,
    });
    self.box_OverrideMenuAccessibility_7 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    l0 = self.box_OverrideMenuAccessibility_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1158796989");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_7_Out,
    });
    self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1214778782");
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
        [0] = self.f_box_MultipleOR_48_Out,
    });
    self.box_Delay_v5_56 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1337667451");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_56_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_56_TimeElapsed,
    });
    self.box_OnceOnly_v3_11 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1480193988");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_11_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_28 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1552498016");
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
        [0] = self.f_box_MultipleOR_28_Out,
    });
    self.box_Delay_v5_26 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1665715513");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_26_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_26_TimeElapsed,
    });
    self.box_OnceOnly_v3_9 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1682399383");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_9_Out_0,
            },
            count = 1,
        },
    });
    self.box_ActivityInitialized_6 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1688972805");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_6_Out,
    });
    self.box_MultipleOR_44 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1725623166");
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
        [0] = self.f_box_MultipleOR_44_Out,
    });
    self.box_MultipleOR_57 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1785852828");
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
        [0] = self.f_box_MultipleOR_57_Out,
    });
    self.box_OnceOnly_v3_41 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1813988069");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_41_Out_0,
            },
            count = 1,
        },
    });
    self.box_CharacterLoadedIdListener_10 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1832493242");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_10_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_10_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_10_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_10_LoadedIdReceived,
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1850882417");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1868635185");
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
        [0] = self.f_box_MultipleOR_53_Out,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|2058837721");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1542460092", "1542460092", "INTRO_010_B70_B80_OBJManager", "In", "box_OutputOrder_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_17_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|577594004", "577594004", "INTRO_010_B70_B80_OBJManager", "box_GetActivityFact_17.FactNotSet", "box_Delay_v5_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetActivityFact_17_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1155746414", "1155746414", "INTRO_010_B70_B80_OBJManager", "box_GetActivityFact_17.FactSet", "box_Delay_v5_19.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Delay_v5_19_Started()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_33();
    l0 = self.box_Delay_v5_19;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1467156793", "1467156793", "INTRO_010_B70_B80_OBJManager", "box_Delay_v5_19.Started", "box_GetActivityFact_33.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_19_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_Delay_v5_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|792704874", "792704874", "INTRO_010_B70_B80_OBJManager", "box_Delay_v5_19.Stopped", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_19;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1647873143", "1647873143", "INTRO_010_B70_B80_OBJManager", "box_Delay_v5_19.TimeElapsed", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityFact_25_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_26();
    l0 = self.box_Delay_v5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|2093090054", "2093090054", "INTRO_010_B70_B80_OBJManager", "box_GetActivityFact_25.FactNotSet", "box_Delay_v5_26.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetActivityFact_25_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_26();
    l0 = self.box_Delay_v5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1996963399", "1996963399", "INTRO_010_B70_B80_OBJManager", "box_GetActivityFact_25.FactSet", "box_Delay_v5_26.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Delay_v5_47_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_50();
    l0 = self.box_Delay_v5_47;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|75340582", "75340582", "INTRO_010_B70_B80_OBJManager", "box_Delay_v5_47.Stopped", "box_ActivityObjectiveMarkerModifier_v3_50.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_47_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_47;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1887794862", "1887794862", "INTRO_010_B70_B80_OBJManager", "box_Delay_v5_47.TimeElapsed", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetOasis_24_Out()
    local params, l0;
    self:OnExit_box_SetOasis_24_Out();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_39();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1355819773", "1355819773", "INTRO_010_B70_B80_OBJManager", "box_SetOasis_24.Out", "box_GetActivityFact_39.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|144025450", "144025450", "INTRO_010_B70_B80_OBJManager", "box_AddActivityObjective_v2_12.Out", "box_OnceOnly_v3_11.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_Delay_v5_30_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_30;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1329599327", "1329599327", "INTRO_010_B70_B80_OBJManager", "box_Delay_v5_30.Started", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_31();
    l0 = self.box_Delay_v5_30;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1818691318", "1818691318", "INTRO_010_B70_B80_OBJManager", "box_Delay_v5_30.TimeElapsed", "box_EndActivityObjective_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_3_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_3;
    l1 = self.box_OnceOnly_v3_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|847471871", "847471871", "INTRO_010_B70_B80_OBJManager", "box_HealthListener_v6_3.Downed", "box_OnceOnly_v3_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_3_Revived()
    local l0, l1;
    l0 = self.box_HealthListener_v6_3;
    l1 = self.box_OnceOnly_v3_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1047431862", "1047431862", "INTRO_010_B70_B80_OBJManager", "box_HealthListener_v6_3.Revived", "box_OnceOnly_v3_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_40_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_40;
    l1 = self.box_OnceOnly_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|946299670", "946299670", "INTRO_010_B70_B80_OBJManager", "box_MultipleOR_40.Out", "box_OnceOnly_v3_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_42_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_45();
    l0 = self.box_Delay_v5_42;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|471922504", "471922504", "INTRO_010_B70_B80_OBJManager", "box_Delay_v5_42.Stopped", "box_ActivityEnd_45.EndNoSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndNoSave
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_42_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_42;
    l1 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|562816258", "562816258", "INTRO_010_B70_B80_OBJManager", "box_Delay_v5_42.TimeElapsed", "box_MultipleOR_44.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AddActivityObjective_v2_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|893848849", "893848849", "INTRO_010_B70_B80_OBJManager", "box_AddActivityObjective_v2_29.Out", "box_OutputOrder_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_27();
    l0 = self.box_MultipleOR_58;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|486721293", "486721293", "INTRO_010_B70_B80_OBJManager", "box_MultipleOR_58.Out", "box_ActivityObjectiveMarkerModifier_v3_27.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_13_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_15();
    l0 = self.box_OnceOnly_v3_13;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|400555297", "400555297", "INTRO_010_B70_B80_OBJManager", "box_OnceOnly_v3_13.Out", "box_EndActivityObjective_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetOasis_32();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|343497484", "343497484", "INTRO_010_B70_B80_OBJManager", "box_EndActivityObjective_v2_21.Out", "box_SetOasis_32.FromOasis", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromOasis
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_50_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|17791941", "17791941", "INTRO_010_B70_B80_OBJManager", "box_ActivityObjectiveMarkerModifier_v3_50.Enabled", "box_MultipleOR_53.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1921153848", "1921153848", "INTRO_010_B70_B80_OBJManager", "box_OutputOrder_v2_2.Out", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|838263750", "838263750", "INTRO_010_B70_B80_OBJManager", "box_OutputOrder_v2_2.Out", "box_ActivityAcknowledgeGate_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_SetOasis_32_Out()
    local params, l0;
    self:OnExit_box_SetOasis_32_Out();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_22();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|97599448", "97599448", "INTRO_010_B70_B80_OBJManager", "box_SetOasis_32.Out", "box_AddActivityObjective_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|20312227", "20312227", "INTRO_010_B70_B80_OBJManager", "box_AddActivityObjective_v2_22.Out", "box_OutputOrder_v2_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|97177877", "97177877", "INTRO_010_B70_B80_OBJManager", "box_AddActivityObjective_v2_14.Out", "box_OnceOnly_v3_13.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_MultipleOR_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_17();
    l0 = self.box_MultipleOR_20;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1505878587", "1505878587", "INTRO_010_B70_B80_OBJManager", "box_MultipleOR_20.Out", "box_GetActivityFact_17.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_27_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|973445291", "973445291", "INTRO_010_B70_B80_OBJManager", "box_ActivityObjectiveMarkerModifier_v3_27.Enabled", "box_MultipleOR_28.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_52_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_50();
    l0 = self.box_Delay_v5_52;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1227086963", "1227086963", "INTRO_010_B70_B80_OBJManager", "box_Delay_v5_52.Stopped", "box_ActivityObjectiveMarkerModifier_v3_50.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_52_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_52;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1846416153", "1846416153", "INTRO_010_B70_B80_OBJManager", "box_Delay_v5_52.TimeElapsed", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OverrideMenuAccessibility_7_Out()
    local l0, l1;
    l0 = self.box_OverrideMenuAccessibility_7;
    l1 = self.box_ActivityInitialized_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|2030663775", "2030663775", "INTRO_010_B70_B80_OBJManager", "box_OverrideMenuAccessibility_7.Out", "box_ActivityInitialized_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_3();
    l0 = self.box_HealthListener_v6_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|757582950", "757582950", "INTRO_010_B70_B80_OBJManager", "box_OutputOrder_v2_23.Out", "box_HealthListener_v6_3.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetOasis_24();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1390147222", "1390147222", "INTRO_010_B70_B80_OBJManager", "box_OutputOrder_v2_23.Out", "box_SetOasis_24.FromOasis", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromOasis
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_46();
    l0 = self.box_MultipleOR_48;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|49046407", "49046407", "INTRO_010_B70_B80_OBJManager", "box_MultipleOR_48.Out", "box_GetActivityFact_46.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_16_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_14();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|608802400", "608802400", "INTRO_010_B70_B80_OBJManager", "box_EndActivityObjective_v2_16.Out", "box_AddActivityObjective_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_29();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|966365491", "966365491", "INTRO_010_B70_B80_OBJManager", "box_EndActivityObjective_v2_31.Out", "box_AddActivityObjective_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_56_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_56;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1323616187", "1323616187", "INTRO_010_B70_B80_OBJManager", "box_Delay_v5_56.Stopped", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_56_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_56;
    l1 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|613517433", "613517433", "INTRO_010_B70_B80_OBJManager", "box_Delay_v5_56.TimeElapsed", "box_MultipleOR_57.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityFact_51_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_52();
    l0 = self.box_Delay_v5_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1738749386", "1738749386", "INTRO_010_B70_B80_OBJManager", "box_GetActivityFact_51.FactNotSet", "box_Delay_v5_52.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetActivityFact_51_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_52();
    l0 = self.box_Delay_v5_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1996455544", "1996455544", "INTRO_010_B70_B80_OBJManager", "box_GetActivityFact_51.FactSet", "box_Delay_v5_52.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_EndActivityObjective_v2_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_12();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1766068533", "1766068533", "INTRO_010_B70_B80_OBJManager", "box_EndActivityObjective_v2_15.Out", "box_AddActivityObjective_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_11_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_16();
    l0 = self.box_OnceOnly_v3_11;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1924896793", "1924896793", "INTRO_010_B70_B80_OBJManager", "box_OnceOnly_v3_11.Out", "box_EndActivityObjective_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_55_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_56();
    l0 = self.box_Delay_v5_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|798738502", "798738502", "INTRO_010_B70_B80_OBJManager", "box_GetActivityFact_55.FactNotSet", "box_Delay_v5_56.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetActivityFact_55_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_56();
    l0 = self.box_Delay_v5_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1967808996", "1967808996", "INTRO_010_B70_B80_OBJManager", "box_GetActivityFact_55.FactSet", "box_Delay_v5_56.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_MultipleOR_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_25();
    l0 = self.box_MultipleOR_28;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|657386960", "657386960", "INTRO_010_B70_B80_OBJManager", "box_MultipleOR_28.Out", "box_GetActivityFact_25.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_26_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_26;
    l1 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1314814413", "1314814413", "INTRO_010_B70_B80_OBJManager", "box_Delay_v5_26.Stopped", "box_MultipleOR_40.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_26_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_26;
    l1 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|175542297", "175542297", "INTRO_010_B70_B80_OBJManager", "box_Delay_v5_26.TimeElapsed", "box_MultipleOR_28.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_9_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_8();
    l0 = self.box_OnceOnly_v3_9;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|2051753690", "2051753690", "INTRO_010_B70_B80_OBJManager", "box_OnceOnly_v3_9.Out", "box_AddActivityObjective_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_10();
    l0 = self.box_ActivityInitialized_6;
    l1 = self.box_CharacterLoadedIdListener_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1080093605", "1080093605", "INTRO_010_B70_B80_OBJManager", "box_ActivityInitialized_6.Out", "box_CharacterLoadedIdListener_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_43();
    l0 = self.box_MultipleOR_44;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|765597748", "765597748", "INTRO_010_B70_B80_OBJManager", "box_MultipleOR_44.Out", "box_GetActivityFact_43.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_39_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_21();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|253104726", "253104726", "INTRO_010_B70_B80_OBJManager", "box_GetActivityFact_39.FactNotSet", "box_EndActivityObjective_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_39_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|2024312902", "2024312902", "INTRO_010_B70_B80_OBJManager", "box_GetActivityFact_39.FactSet", "box_MultipleOR_40.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityFact_33_FactNotSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|460393032", "460393032", "INTRO_010_B70_B80_OBJManager", "box_GetActivityFact_33.FactNotSet", "box_OnceOnly_v3_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_57_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_55();
    l0 = self.box_MultipleOR_57;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|438149096", "438149096", "INTRO_010_B70_B80_OBJManager", "box_MultipleOR_57.Out", "box_GetActivityFact_55.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1460257986", "1460257986", "INTRO_010_B70_B80_OBJManager", "box_OutputOrder_v2_49.Out", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1421112083", "1421112083", "INTRO_010_B70_B80_OBJManager", "box_OutputOrder_v2_49.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_41_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_OnceOnly_v3_41;
    l1 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|2139903724", "2139903724", "INTRO_010_B70_B80_OBJManager", "box_OnceOnly_v3_41.Out", "box_Delay_v5_30.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_CharacterLoadedIdListener_10_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_10_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_CharacterLoadedIdListener_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1711571676", "1711571676", "INTRO_010_B70_B80_OBJManager", "box_CharacterLoadedIdListener_10.LoadedIdReceived", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1235454488", "1235454488", "INTRO_010_B70_B80_OBJManager", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|2017840475", "2017840475", "INTRO_010_B70_B80_OBJManager", "box_ActivityAcknowledgeGate_1.Reloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_51();
    l0 = self.box_MultipleOR_53;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|941622358", "941622358", "INTRO_010_B70_B80_OBJManager", "box_MultipleOR_53.Out", "box_GetActivityFact_51.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_46_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_47();
    l0 = self.box_Delay_v5_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1588841512", "1588841512", "INTRO_010_B70_B80_OBJManager", "box_GetActivityFact_46.FactNotSet", "box_Delay_v5_47.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetActivityFact_46_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_47();
    l0 = self.box_Delay_v5_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1099704398", "1099704398", "INTRO_010_B70_B80_OBJManager", "box_GetActivityFact_46.FactSet", "box_Delay_v5_47.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_AddActivityObjective_v2_8_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_3();
    l0 = self.box_HealthListener_v6_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|197015652", "197015652", "INTRO_010_B70_B80_OBJManager", "box_AddActivityObjective_v2_8.Out", "box_HealthListener_v6_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_27();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1633787419", "1633787419", "INTRO_010_B70_B80_OBJManager", "box_OutputOrder_v2_54.Out", "box_ActivityObjectiveMarkerModifier_v3_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|2091504690", "2091504690", "INTRO_010_B70_B80_OBJManager", "box_OutputOrder_v2_54.Out", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|674483297", "674483297", "INTRO_010_B70_B80_OBJManager", "box_OutputOrder_v2_18.Out", "box_MultipleOR_20.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideMenuAccessibility_7();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_OverrideMenuAccessibility_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|539554862", "539554862", "INTRO_010_B70_B80_OBJManager", "box_MultipleOR_4.Out", "box_OverrideMenuAccessibility_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetActivityFact_43_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_42();
    l0 = self.box_Delay_v5_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1316704443", "1316704443", "INTRO_010_B70_B80_OBJManager", "box_GetActivityFact_43.FactNotSet", "box_Delay_v5_42.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetActivityFact_43_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_42();
    l0 = self.box_Delay_v5_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1354426280", "1354426280", "INTRO_010_B70_B80_OBJManager", "box_GetActivityFact_43.FactSet", "box_Delay_v5_42.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:OnEnter_box_GetActivityFact_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|768571");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_17_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_17_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015252500589731",
        -- Fact,
        [1] = "INTRO_010_B80_CarOutOfGarage",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|123784481");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_25_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_25_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015252500589731",
        -- Fact,
        [1] = "INTRO_010_B80_PlayerInside_ChaseStart",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_47()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_SetOasis_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetOasis_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|185994740");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetOasis_24_Out,
    });
    params = {
        -- Oasis,
        [0] = {
            section = "Objectives",
            item = "LT04_010_B50_GoToBunker",
            id = "611818",
        },
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|212702609");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_12_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT04_010_B80_SheriffDowned",
            id = "555603",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_30()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_3()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.marshal,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_42()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|555793205");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_29_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT04_010_B80_Car",
            id = "555602",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|624611472");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_21_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = self.last_objective,
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|667769225");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_50_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2104061920435782873",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT04_010_B80_Car",
            id = "555602",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|700662537");
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
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [2] = self.f_box_OutputOrder_v2_2_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetOasis_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetOasis_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|743900547");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetOasis_32_Out,
    });
    params = {
        -- Oasis,
        [0] = {
            section = "Objectives",
            item = "LT04_010_B80_CarJoin",
            id = "836495",
        },
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|822946715");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_22_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = self.last_objective,
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|871089764");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_14_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT04_010_B50_GoToBunker",
            id = "611818",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|964807353");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "INTRO_010_B70_B80_OBJManager script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|983577508");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1027913631");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_27_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2103570709585588207",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT04_010_B80_CarJoin",
            id = "836495",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_52()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_7()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = false,
        -- AvatarCustomizationMenuEnabled,
        [2] = false,
        -- ChallengeMenuEnabled,
        [3] = false,
        -- LootMenuEnabled,
        [4] = false,
        -- OnlineMenuEnabled,
        [5] = false,
        -- PerksMenuEnabled,
        [6] = false,
        -- ResistanceMenuEnabled,
        [7] = false,
        -- SquadMenuEnabled,
        [8] = false,
        -- WorldmapMenuEnabled,
        [9] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1201139134");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1239875327");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_16_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT04_010_B80_SheriffDowned",
            id = "555603",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1268111650");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_31_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = self.last_objective,
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_56()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1370953166");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_51_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_51_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015252500589731",
        -- Fact,
        [1] = "INTRO_010_B80_HideDynMarker",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1430658788");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_15_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT04_010_B50_GoToBunker",
            id = "611818",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1500376619");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_55_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_55_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015252500589731",
        -- Fact,
        [1] = "INTRO_010_B80_HideGetInMarkerFAIL",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_26()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1767993785");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_39_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_39_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015252500589731",
        -- Fact,
        [1] = "INTRO_010_B80_PlayerInside_ChaseStart",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1778549835");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_33_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015252500589731",
        -- Fact,
        [1] = "INTRO_010_B80_Reloaded",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1811629877");
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
                [0] = self.f_box_OutputOrder_v2_49_Out_0,
                [1] = self.f_box_OutputOrder_v2_49_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015218968137231",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1883478922");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_46_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_46_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015252500589731",
        -- Fact,
        [1] = "INTRO_010_B80_ShowDynMarker",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1940155279");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_8_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT04_010_B50_GoToBunker",
            id = "611818",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|1985159310");
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
                [0] = self.f_box_OutputOrder_v2_54_Out_0,
                [1] = self.f_box_OutputOrder_v2_54_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|2018072880");
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
        -- Out,
        [0] = {
            connections = {
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70_B80_OBJManager.domino|@INTRO_010_B70_B80_OBJManager|2085092714");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_43_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_43_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015252500589731",
        -- Fact,
        [1] = "INTRO_010_B80_Completed",
    };
    return params;
end;

function export:OnExit_box_SetOasis_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.last_objective = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetOasis_32_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.last_objective = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_10_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_10;
    self.marshal = l0:GetDataOutValue(0);
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
