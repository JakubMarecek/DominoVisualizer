LUAC�y -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/world/newedengate_interaction.domino
-- User graph: NewEdenGate_Interaction
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
        cboxRes:RegisterBox("Domino/System/AI/AgentContextualStrategyListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/Coop/GroupSizeTest.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        
        -- Load resources
        cboxRes:LoadResource([[entityarchetypeslibrary/9015282971549597.ark.fcb]], "CEntityArchetypeRes");
        cboxRes:LoadResource([[entityarchetypeslibrary/9015279238498902.ark.fcb]], "CEntityArchetypeRes");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/World/NewEdenGate_Interaction.NewEdenGate_Interaction.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/AgentContextualStrategyListener_v2.lua")] = {
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
                name = "Applied",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "Finished",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "AgentGroup",
                type = "group",
            },
            [1] = {
                name = "AutoDisable",
                type = "bool",
            },
            [2] = {
                name = "ContextualStrategyArchetypeFilter",
                type = "archetype",
            },
            [3] = {
                name = "ContextualStrategyEntityFilter",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "AgentEntity",
                type = "entity",
            },
            [1] = {
                name = "ContextualStrategyArchetype",
                type = "archetype",
            },
            [2] = {
                name = "ContextualStrategyEntity",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/CompareEntity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Equal",
                delayed = false,
            },
            [1] = {
                name = "NotEqual",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity1",
                type = "entity",
            },
            [1] = {
                name = "Entity2",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "bool",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Coop/GroupSizeTest.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Equal",
            },
            [2] = {
                name = "Greater",
            },
            [3] = {
                name = "Less",
            },
        },
        controlInCount = 4,
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
                name = "OnSize",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "PlayerCount",
                type = "bool",
            },
            [2] = {
                name = "Size",
                type = "int",
            },
            [3] = {
                name = "TestAtInit",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/EntityStatusListener.lua")] = {
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
                name = "Loaded",
                delayed = true,
            },
            [3] = {
                name = "Unloaded",
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
                name = "checkNow",
                type = "bool",
            },
            [2] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/IsValueNil_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Animation",
            },
            [1] = {
                name = "Archetype",
            },
            [2] = {
                name = "Boolean",
            },
            [3] = {
                name = "Database",
            },
            [4] = {
                name = "Entity",
            },
            [5] = {
                name = "Float",
            },
            [6] = {
                name = "GenericDb",
            },
            [7] = {
                name = "Group",
            },
            [8] = {
                name = "Integer",
            },
            [9] = {
                name = "MissionBlock",
            },
            [10] = {
                name = "MissionBlockLayer",
            },
            [11] = {
                name = "Oasis",
            },
            [12] = {
                name = "Script",
            },
            [13] = {
                name = "Sound",
            },
            [14] = {
                name = "String",
            },
        },
        controlInCount = 15,
        controlOut = {
            [0] = {
                name = "No",
                delayed = false,
            },
            [1] = {
                name = "Yes",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "archetypeId",
                type = "archetype",
            },
            [2] = {
                name = "bool",
                type = "bool",
            },
            [3] = {
                name = "databaseId",
                type = "database",
            },
            [4] = {
                name = "ent",
                type = "entity",
            },
            [5] = {
                name = "float",
                type = "float",
            },
            [6] = {
                name = "genericDbId",
                type = "genericdb",
            },
            [7] = {
                name = "group",
                type = "group",
            },
            [8] = {
                name = "int",
                type = "int",
            },
            [9] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [10] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
            [11] = {
                name = "oasis",
                type = "oasis",
            },
            [12] = {
                name = "script",
                type = "boxclass",
            },
            [13] = {
                name = "sound",
                type = "Sound",
            },
            [14] = {
                name = "str",
                type = "string",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")] = {
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
                name = "LocalPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v3.lua")] = {
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
                name = "Enter",
                delayed = true,
            },
            [3] = {
                name = "Leave",
                delayed = true,
            },
            [4] = {
                name = "OnAllInside",
                delayed = true,
            },
            [5] = {
                name = "OnEmpty",
                delayed = true,
            },
            [6] = {
                name = "OnOccupied",
                delayed = true,
            },
            [7] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "colliderFilterId",
                type = "group",
            },
            [2] = {
                name = "requiresPawnsActive",
                type = "bool",
            },
            [3] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "colliderId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/SetEntity_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromEntity",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/TeleportPawns.lua")] = {
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
            [0] = {
                name = "ClientDestinationEntity",
                type = "entity",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "LoadingScreen",
                type = "bool",
            },
            [3] = {
                name = "LoadSynch",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "UseBlackScreen",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "NewEdenGate_Interaction";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction";
    self.eLocalPlayer = nil;
    self.eUser = nil;
    self.AgentEntity = nil;
    self.TeleportAgent = nil;
    self.box_TeleportPawns_18 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|116531031");
    l0:SetConnections({
    });
    self.box_GroupSizeTest_19 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|173588165");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_19_OnSize,
    });
    self.box_TeleportPawns_11 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|269967129");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_8 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|282760845");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_8_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_8_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_8_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_8_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_8_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_8_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_8_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_8_Use,
    });
    self.box_TeleportPawns_7 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|286584058");
    l0:SetConnections({
    });
    self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|340486425");
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
        [0] = self.f_box_MultipleOR_45_Out,
    });
    self.box_ProximityTrigger_v3_3 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|379650138");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_3_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_3_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_3_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_3_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_3_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_3_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_3_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_3_Use,
    });
    self.box_TeleportPawns_22 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|517867951");
    l0:SetConnections({
    });
    self.box_GroupSizeTest_21 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|615403679");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_21_OnSize,
    });
    self.box_TeleportPawns_27 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|753043933");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_43 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|753213182");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_43_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_43_Unloaded,
    });
    self.box_MultipleOR_40 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|970624835");
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
    self.box_EntityStatusListener_2 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1021901062");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_2_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_2_Unloaded,
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1049001629");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_TeleportPawns_25 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1099577841");
    l0:SetConnections({
    });
    self.box_TeleportPawns_14 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1105995886");
    l0:SetConnections({
    });
    self.box_AgentContextualStrategyListener_v2_29 = cbox:CreateBox("Domino/System/AI/AgentContextualStrategyListener_v2.lua");
    l0 = self.box_AgentContextualStrategyListener_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentContextualStrategyListener_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1382316906");
    l0:SetConnections({
        -- Applied,
        [0] = self.f_box_AgentContextualStrategyListener_v2_29_Applied,
        -- Disabled,
        [1] = self.f_box_AgentContextualStrategyListener_v2_29_Disabled,
        -- Enabled,
        [2] = self.f_box_AgentContextualStrategyListener_v2_29_Enabled,
        -- Finished,
        [3] = self.f_box_AgentContextualStrategyListener_v2_29_Finished,
    });
    self.box_TeleportPawns_17 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1410708054");
    l0:SetConnections({
    });
    self.box_AgentContextualStrategyListener_v2_35 = cbox:CreateBox("Domino/System/AI/AgentContextualStrategyListener_v2.lua");
    l0 = self.box_AgentContextualStrategyListener_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentContextualStrategyListener_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1475990431");
    l0:SetConnections({
        -- Applied,
        [0] = self.f_box_AgentContextualStrategyListener_v2_35_Applied,
        -- Disabled,
        [1] = self.f_box_AgentContextualStrategyListener_v2_35_Disabled,
        -- Enabled,
        [2] = self.f_box_AgentContextualStrategyListener_v2_35_Enabled,
        -- Finished,
        [3] = self.f_box_AgentContextualStrategyListener_v2_35_Finished,
    });
    self.box_ProximityRadiusListener_v3_42 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1505207694");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_42_Disabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_42_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_42_SomeoneNear,
    });
    self.box_GroupSizeTest_20 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1542472766");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_20_OnSize,
    });
    self.box_EntityStatusListener_1 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1852743438");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_1_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_1_Unloaded,
    });
    self.box_GroupSizeTest_28 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1860868381");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_28_OnSize,
    });
    self.box_GroupSizeTest_26 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1876043215");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_26_OnSize,
    });
    self.box_TeleportPawns_24 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1931596435");
    l0:SetConnections({
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|2006037797");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
    self.box_Delay_v5_36 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|2006194982");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_36_TimeElapsed,
    });
    self.box_GroupSizeTest_23 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|2029718208");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_23_OnSize,
    });
    self.box_AgentContextualStrategyListener_v2_9 = cbox:CreateBox("Domino/System/AI/AgentContextualStrategyListener_v2.lua");
    l0 = self.box_AgentContextualStrategyListener_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentContextualStrategyListener_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|2049301253");
    l0:SetConnections({
        -- Applied,
        [0] = self.f_box_AgentContextualStrategyListener_v2_9_Applied,
        -- Disabled,
        [1] = self.f_box_AgentContextualStrategyListener_v2_9_Disabled,
        -- Enabled,
        [2] = self.f_box_AgentContextualStrategyListener_v2_9_Enabled,
        -- Finished,
        [3] = self.f_box_AgentContextualStrategyListener_v2_9_Finished,
    });
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|2073614925");
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
        [0] = self.f_box_MultipleOR_39_Out,
    });
    self.box_TeleportPawns_33 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|2078299960");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_33_Out,
    });
    self.box_TeleportPawns_6 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|2081017586");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|2077393302", "2077393302", "NewEdenGate_Interaction", "In", "box_GetLocalPlayer_v2_10.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeTest_19_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_14();
    l0 = self.box_GroupSizeTest_19;
    l1 = self.box_TeleportPawns_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|446306729", "446306729", "NewEdenGate_Interaction", "box_GroupSizeTest_19.OnSize", "box_TeleportPawns_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_1();
    l0 = self.box_EntityStatusListener_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1544563620", "1544563620", "NewEdenGate_Interaction", "box_OutputOrder_v2_5.Out", "box_EntityStatusListener_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_2();
    l0 = self.box_EntityStatusListener_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|52601831", "52601831", "NewEdenGate_Interaction", "box_OutputOrder_v2_5.Out", "box_EntityStatusListener_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentContextualStrategyListener_v2_9();
    l0 = self.box_AgentContextualStrategyListener_v2_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1640618672", "1640618672", "NewEdenGate_Interaction", "box_OutputOrder_v2_44.Out", "box_AgentContextualStrategyListener_v2_9.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentContextualStrategyListener_v2_29();
    l0 = self.box_AgentContextualStrategyListener_v2_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|2067198846", "2067198846", "NewEdenGate_Interaction", "box_OutputOrder_v2_44.Out", "box_AgentContextualStrategyListener_v2_29.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_44_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentContextualStrategyListener_v2_35();
    l0 = self.box_AgentContextualStrategyListener_v2_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|43221153", "43221153", "NewEdenGate_Interaction", "box_OutputOrder_v2_44.Out", "box_AgentContextualStrategyListener_v2_35.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_8_Enabled()
    self:OnExit_box_ProximityTrigger_v3_8_Enabled();
end;

function export:f_box_ProximityTrigger_v3_8_Enter()
    self:OnExit_box_ProximityTrigger_v3_8_Enter();
end;

function export:f_box_ProximityTrigger_v3_8_Leave()
    self:OnExit_box_ProximityTrigger_v3_8_Leave();
end;

function export:f_box_ProximityTrigger_v3_8_OnEmpty()
    self:OnExit_box_ProximityTrigger_v3_8_OnEmpty();
end;

function export:f_box_ProximityTrigger_v3_8_OnOccupied()
    self:OnExit_box_ProximityTrigger_v3_8_OnOccupied();
end;

function export:f_box_ProximityTrigger_v3_8_Use()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_8_Use();
    params = self:OnEnter_box_Compare_Entity_15();
    l0 = self.box_ProximityTrigger_v3_8;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|363047277", "363047277", "NewEdenGate_Interaction", "box_ProximityTrigger_v3_8.Use", "box_Compare_Entity_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = self.box_MultipleOR_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1962203955", "1962203955", "NewEdenGate_Interaction", "box_MultipleOR_45.Out", "box_OutputOrder_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_32_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_32_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|2122323544", "2122323544", "NewEdenGate_Interaction", "box_SetEntity_v2_32.Out", "box_Delay_v5_36.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_3_Enabled()
    self:OnExit_box_ProximityTrigger_v3_3_Enabled();
end;

function export:f_box_ProximityTrigger_v3_3_Enter()
    self:OnExit_box_ProximityTrigger_v3_3_Enter();
end;

function export:f_box_ProximityTrigger_v3_3_Leave()
    self:OnExit_box_ProximityTrigger_v3_3_Leave();
end;

function export:f_box_ProximityTrigger_v3_3_OnEmpty()
    self:OnExit_box_ProximityTrigger_v3_3_OnEmpty();
end;

function export:f_box_ProximityTrigger_v3_3_OnOccupied()
    self:OnExit_box_ProximityTrigger_v3_3_OnOccupied();
end;

function export:f_box_ProximityTrigger_v3_3_Use()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_3_Use();
    params = self:OnEnter_box_Compare_Entity_16();
    l0 = self.box_ProximityTrigger_v3_3;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|2004523021", "2004523021", "NewEdenGate_Interaction", "box_ProximityTrigger_v3_3.Use", "box_Compare_Entity_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_7();
    l0 = self.box_TeleportPawns_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1199301330", "1199301330", "NewEdenGate_Interaction", "box_OutputOrder_v2_12.Out", "box_TeleportPawns_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeTest_20();
    l0 = self.box_GroupSizeTest_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|242449952", "242449952", "NewEdenGate_Interaction", "box_OutputOrder_v2_12.Out", "box_GroupSizeTest_20.Greater", clone:GetLuaBox(), l0:GetLuaBox());
    -- Greater
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeTest_21();
    l0 = self.box_GroupSizeTest_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|587158558", "587158558", "NewEdenGate_Interaction", "box_OutputOrder_v2_12.Out", "box_GroupSizeTest_21.Greater", clone:GetLuaBox(), l0:GetLuaBox());
    -- Greater
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_12_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeTest_23();
    l0 = self.box_GroupSizeTest_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1518008375", "1518008375", "NewEdenGate_Interaction", "box_OutputOrder_v2_12.Out", "box_GroupSizeTest_23.Greater", clone:GetLuaBox(), l0:GetLuaBox());
    -- Greater
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|163742331", "163742331", "NewEdenGate_Interaction", "box_OutputOrder_v2_30.Out", "box_OutputOrder_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_43();
    l0 = self.box_EntityStatusListener_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1872541731", "1872541731", "NewEdenGate_Interaction", "box_OutputOrder_v2_30.Out", "box_EntityStatusListener_43.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1754671794", "1754671794", "NewEdenGate_Interaction", "box_OutputOrder_v2_30.Out", "box_Print_v2_4.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeTest_21_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_22();
    l0 = self.box_GroupSizeTest_21;
    l1 = self.box_TeleportPawns_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|110388860", "110388860", "NewEdenGate_Interaction", "box_GroupSizeTest_21.OnSize", "box_TeleportPawns_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_6();
    l0 = self.box_TeleportPawns_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1388234826", "1388234826", "NewEdenGate_Interaction", "box_OutputOrder_v2_13.Out", "box_TeleportPawns_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeTest_19();
    l0 = self.box_GroupSizeTest_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|2089642293", "2089642293", "NewEdenGate_Interaction", "box_OutputOrder_v2_13.Out", "box_GroupSizeTest_19.Greater", clone:GetLuaBox(), l0:GetLuaBox());
    -- Greater
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_13_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeTest_26();
    l0 = self.box_GroupSizeTest_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1002456585", "1002456585", "NewEdenGate_Interaction", "box_OutputOrder_v2_13.Out", "box_GroupSizeTest_26.Greater", clone:GetLuaBox(), l0:GetLuaBox());
    -- Greater
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_13_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeTest_28();
    l0 = self.box_GroupSizeTest_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1939319694", "1939319694", "NewEdenGate_Interaction", "box_OutputOrder_v2_13.Out", "box_GroupSizeTest_28.Greater", clone:GetLuaBox(), l0:GetLuaBox());
    -- Greater
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_43_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_42();
    l0 = self.box_EntityStatusListener_43;
    l1 = self.box_ProximityRadiusListener_v3_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1218670", "1218670", "NewEdenGate_Interaction", "box_EntityStatusListener_43.Loaded", "box_ProximityRadiusListener_v3_42.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_43_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_42();
    l0 = self.box_EntityStatusListener_43;
    l1 = self.box_ProximityRadiusListener_v3_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1130041309", "1130041309", "NewEdenGate_Interaction", "box_EntityStatusListener_43.Unloaded", "box_ProximityRadiusListener_v3_42.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Compare_Entity_16_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1617775336", "1617775336", "NewEdenGate_Interaction", "box_Compare_Entity_16.Equal", "box_OutputOrder_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_16_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_17();
    l0 = self.box_TeleportPawns_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1692422918", "1692422918", "NewEdenGate_Interaction", "box_Compare_Entity_16.NotEqual", "box_TeleportPawns_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Entity_15_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1622199564", "1622199564", "NewEdenGate_Interaction", "box_Compare_Entity_15.Equal", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_15_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_18();
    l0 = self.box_TeleportPawns_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1417133084", "1417133084", "NewEdenGate_Interaction", "box_Compare_Entity_15.NotEqual", "box_TeleportPawns_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_33();
    l0 = self.box_MultipleOR_40;
    l1 = self.box_TeleportPawns_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1677711271", "1677711271", "NewEdenGate_Interaction", "box_MultipleOR_40.Out", "box_TeleportPawns_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Entity_38_NotEqual()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|420785271", "420785271", "NewEdenGate_Interaction", "box_Compare_Entity_38.NotEqual", "box_MultipleOR_40.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_2_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_3();
    l0 = self.box_EntityStatusListener_2;
    l1 = self.box_ProximityTrigger_v3_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|2039741570", "2039741570", "NewEdenGate_Interaction", "box_EntityStatusListener_2.Loaded", "box_ProximityTrigger_v3_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_2_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_3();
    l0 = self.box_EntityStatusListener_2;
    l1 = self.box_ProximityTrigger_v3_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1151204477", "1151204477", "NewEdenGate_Interaction", "box_EntityStatusListener_2.Unloaded", "box_ProximityTrigger_v3_3.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_37();
    l0 = self.box_Delay_v5_41;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1592558697", "1592558697", "NewEdenGate_Interaction", "box_Delay_v5_41.TimeElapsed", "box_IsValueNil_v3_37.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AgentContextualStrategyListener_v2_29_Applied()
    local l0, l1;
    self:OnExit_box_AgentContextualStrategyListener_v2_29_Applied();
    l0 = self.box_AgentContextualStrategyListener_v2_29;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|552023173", "552023173", "NewEdenGate_Interaction", "box_AgentContextualStrategyListener_v2_29.Applied", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AgentContextualStrategyListener_v2_29_Finished()
    self:OnExit_box_AgentContextualStrategyListener_v2_29_Finished();
end;

function export:f_box_AgentContextualStrategyListener_v2_35_Applied()
    local l0, l1;
    self:OnExit_box_AgentContextualStrategyListener_v2_35_Applied();
    l0 = self.box_AgentContextualStrategyListener_v2_35;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|610845610", "610845610", "NewEdenGate_Interaction", "box_AgentContextualStrategyListener_v2_35.Applied", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_AgentContextualStrategyListener_v2_35_Finished()
    self:OnExit_box_AgentContextualStrategyListener_v2_35_Finished();
end;

function export:f_box_ProximityRadiusListener_v3_42_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_42;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|2134363137", "2134363137", "NewEdenGate_Interaction", "box_ProximityRadiusListener_v3_42.Disabled", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_42_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_42;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1522624693", "1522624693", "NewEdenGate_Interaction", "box_ProximityRadiusListener_v3_42.SomeoneFar", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_42_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_42;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|618802293", "618802293", "NewEdenGate_Interaction", "box_ProximityRadiusListener_v3_42.SomeoneNear", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeTest_20_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_11();
    l0 = self.box_GroupSizeTest_20;
    l1 = self.box_TeleportPawns_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|896061542", "896061542", "NewEdenGate_Interaction", "box_GroupSizeTest_20.OnSize", "box_TeleportPawns_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentContextualStrategyListener_v2_9();
    l0 = self.box_AgentContextualStrategyListener_v2_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1266901845", "1266901845", "NewEdenGate_Interaction", "box_OutputOrder_v2_31.Out", "box_AgentContextualStrategyListener_v2_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentContextualStrategyListener_v2_29();
    l0 = self.box_AgentContextualStrategyListener_v2_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|309334233", "309334233", "NewEdenGate_Interaction", "box_OutputOrder_v2_31.Out", "box_AgentContextualStrategyListener_v2_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentContextualStrategyListener_v2_35();
    l0 = self.box_AgentContextualStrategyListener_v2_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|161090797", "161090797", "NewEdenGate_Interaction", "box_OutputOrder_v2_31.Out", "box_AgentContextualStrategyListener_v2_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetLocalPlayer_v2_10_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|412666401", "412666401", "NewEdenGate_Interaction", "box_GetLocalPlayer_v2_10.Out", "box_OutputOrder_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_37_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_38();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1093423817", "1093423817", "NewEdenGate_Interaction", "box_IsValueNil_v3_37.No", "box_Compare_Entity_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_37_Yes()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1073357996", "1073357996", "NewEdenGate_Interaction", "box_IsValueNil_v3_37.Yes", "box_MultipleOR_40.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_1_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_8();
    l0 = self.box_EntityStatusListener_1;
    l1 = self.box_ProximityTrigger_v3_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1641522106", "1641522106", "NewEdenGate_Interaction", "box_EntityStatusListener_1.Loaded", "box_ProximityTrigger_v3_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_1_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_8();
    l0 = self.box_EntityStatusListener_1;
    l1 = self.box_ProximityTrigger_v3_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|533084882", "533084882", "NewEdenGate_Interaction", "box_EntityStatusListener_1.Unloaded", "box_ProximityTrigger_v3_8.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeTest_28_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_27();
    l0 = self.box_GroupSizeTest_28;
    l1 = self.box_TeleportPawns_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|563857604", "563857604", "NewEdenGate_Interaction", "box_GroupSizeTest_28.OnSize", "box_TeleportPawns_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeTest_26_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_25();
    l0 = self.box_GroupSizeTest_26;
    l1 = self.box_TeleportPawns_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1491058510", "1491058510", "NewEdenGate_Interaction", "box_GroupSizeTest_26.OnSize", "box_TeleportPawns_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_MultipleOR_34;
    l1 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|456813238", "456813238", "NewEdenGate_Interaction", "box_MultipleOR_34.Out", "box_Delay_v5_41.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_36_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_36;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|722115442", "722115442", "NewEdenGate_Interaction", "box_Delay_v5_36.TimeElapsed", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeTest_23_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_24();
    l0 = self.box_GroupSizeTest_23;
    l1 = self.box_TeleportPawns_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1853144444", "1853144444", "NewEdenGate_Interaction", "box_GroupSizeTest_23.OnSize", "box_TeleportPawns_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_AgentContextualStrategyListener_v2_9_Applied()
    local l0, l1;
    self:OnExit_box_AgentContextualStrategyListener_v2_9_Applied();
    l0 = self.box_AgentContextualStrategyListener_v2_9;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1654665906", "1654665906", "NewEdenGate_Interaction", "box_AgentContextualStrategyListener_v2_9.Applied", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_AgentContextualStrategyListener_v2_9_Finished()
    self:OnExit_box_AgentContextualStrategyListener_v2_9_Finished();
end;

function export:f_box_MultipleOR_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = self.box_MultipleOR_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1605980076", "1605980076", "NewEdenGate_Interaction", "box_MultipleOR_39.Out", "box_OutputOrder_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_32();
    l0 = self.box_TeleportPawns_33;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|118545572", "118545572", "NewEdenGate_Interaction", "box_TeleportPawns_33.Out", "box_SetEntity_v2_32.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_TeleportPawns_18()
    local params;
    DrawTextToScreen("Comment: TELEPORT CLIENT IN", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TeleportPawns')-- Comment: TELEPORT CLIENT IN");
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109955282569280652",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.eUser,
        -- UseBlackScreen,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|139062504");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "orange",
        -- duration,
        [3] = 10,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "NEW EDEN GATE SCRIPT STARTED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_19()
    local params;
    params = {
        -- Group,
        [0] = "#C439C73D",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 0,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|174457548");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|263662953");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [1] = self.f_box_OutputOrder_v2_44_Out_1,
                [2] = self.f_box_OutputOrder_v2_44_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_11()
    local params;
    DrawTextToScreen("Comment: TELEPORT_GFH_OUT", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TeleportPawns')-- Comment: TELEPORT_GFH_OUT");
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109955277288651912",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#C439C73D",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_8()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109883883102145796",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_7()
    local params;
    DrawTextToScreen("Comment: TELEPORT HOST OUT", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TeleportPawns')-- Comment: TELEPORT HOST OUT");
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2108310049282603365",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.eUser,
        -- UseBlackScreen,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|356391362");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_32_Out,
    });
    params = {
        -- Entity,
        [0] = self.AgentEntity,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_3()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109883905921256716",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|428773402");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 4,
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
                [2] = self.f_box_OutputOrder_v2_12_Out_2,
                [3] = self.f_box_OutputOrder_v2_12_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|515114222");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
                [2] = self.f_box_OutputOrder_v2_30_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_22()
    local params;
    DrawTextToScreen("Comment: TELEPORT_PIG_OUT", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TeleportPawns')-- Comment: TELEPORT_PIG_OUT");
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109955277288651912",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#90400C70",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_21()
    local params;
    params = {
        -- Group,
        [0] = "#90400C70",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 0,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|617706898");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 4,
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
                [2] = self.f_box_OutputOrder_v2_13_Out_2,
                [3] = self.f_box_OutputOrder_v2_13_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_27()
    local params;
    DrawTextToScreen("Comment: TELEPORT_DOG_IN", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TeleportPawns')-- Comment: TELEPORT_DOG_IN");
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109955282569280652",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#DE9E034F",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_43()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2110283651234139500",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|780043708");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_16_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_16_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.eUser,
        -- Entity2,
        [1] = self.eLocalPlayer,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|816095708");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_15_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_15_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.eUser,
        -- Entity2,
        [1] = self.eLocalPlayer,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|990521232");
    l0:SetConnections({
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_38_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.AgentEntity,
        -- Entity2,
        [1] = self.TeleportAgent,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_2()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109883905921256716",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_41()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_25()
    local params;
    DrawTextToScreen("Comment: TELEPORT_PIG_IN", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TeleportPawns')-- Comment: TELEPORT_PIG_IN");
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109955282569280652",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#90400C70",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_14()
    local params;
    DrawTextToScreen("Comment: TELEPORT_GFH_IN", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TeleportPawns')-- Comment: TELEPORT_GFH_IN");
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109955282569280652",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#C439C73D",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_AgentContextualStrategyListener_v2_29()
    local params;
    params = {
        -- AgentGroup,
        [0] = "#90400C70",
        -- AutoDisable,
        [1] = true,
        -- ContextualStrategyArchetypeFilter,
        [2] = "9015279238498902",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_17()
    local params;
    DrawTextToScreen("Comment: TELEPORT CLIENT OUT", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TeleportPawns')-- Comment: TELEPORT CLIENT OUT");
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109955277288651912",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.eUser,
        -- UseBlackScreen,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_AgentContextualStrategyListener_v2_35()
    local params;
    params = {
        -- AgentGroup,
        [0] = "#DE9E034F",
        -- AutoDisable,
        [1] = true,
        -- ContextualStrategyArchetypeFilter,
        [2] = "9015279238498902",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_42()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.eLocalPlayer,
        -- id2,
        [3] = "2110283651234139500",
        -- nearZone,
        [4] = 90,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_20()
    local params;
    params = {
        -- Group,
        [0] = "#C439C73D",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 0,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1618273736");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
                [2] = self.f_box_OutputOrder_v2_31_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1776882648");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\NewEdenGate_Interaction.domino|@NewEdenGate_Interaction|1829288070");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_37_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_37_Yes,
    });
    params = {
        -- ent,
        [4] = self.TeleportAgent,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109883883102145796",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_28()
    local params;
    params = {
        -- Group,
        [0] = "#DE9E034F",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 0,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_26()
    local params;
    params = {
        -- Group,
        [0] = "#90400C70",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 0,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_24()
    local params;
    DrawTextToScreen("Comment: TELEPORT_DOG_OUT", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TeleportPawns')-- Comment: TELEPORT_DOG_OUT");
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109955277288651912",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#DE9E034F",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_36()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_23()
    local params;
    params = {
        -- Group,
        [0] = "#DE9E034F",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 0,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_AgentContextualStrategyListener_v2_9()
    local params;
    params = {
        -- AgentGroup,
        [0] = "#C21721FC",
        -- AutoDisable,
        [1] = true,
        -- ContextualStrategyArchetypeFilter,
        [2] = "9015282971549597",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_33()
    local params;
    DrawTextToScreen("Comment: TELEPORT GFH / FFH OUT", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TeleportPawns')-- Comment: TELEPORT GFH / FFH OUT");
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2108310049282603365",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.AgentEntity,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_6()
    local params;
    DrawTextToScreen("Comment: TELEPORT HOST IN", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TeleportPawns')-- Comment: TELEPORT HOST IN");
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2108696571500580040",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.eUser,
        -- UseBlackScreen,
        [5] = true,
    };
    return params;
end;

function export:OnExit_box_ProximityTrigger_v3_8_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v3_8;
    self.eUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_8_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v3_8;
    self.eUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_8_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v3_8;
    self.eUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_8_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v3_8;
    self.eUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_8_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v3_8;
    self.eUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_8_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v3_8;
    self.eUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_32_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.TeleportAgent = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_3_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v3_3;
    self.eUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_3_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v3_3;
    self.eUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_3_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v3_3;
    self.eUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_3_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v3_3;
    self.eUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_3_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v3_3;
    self.eUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_3_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v3_3;
    self.eUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AgentContextualStrategyListener_v2_29_Applied()
    local l0;
    l0 = self.box_AgentContextualStrategyListener_v2_29;
    self.AgentEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AgentContextualStrategyListener_v2_29_Finished()
    local l0;
    l0 = self.box_AgentContextualStrategyListener_v2_29;
    self.AgentEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AgentContextualStrategyListener_v2_35_Applied()
    local l0;
    l0 = self.box_AgentContextualStrategyListener_v2_35;
    self.AgentEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AgentContextualStrategyListener_v2_35_Finished()
    local l0;
    l0 = self.box_AgentContextualStrategyListener_v2_35;
    self.AgentEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.eLocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AgentContextualStrategyListener_v2_9_Applied()
    local l0;
    l0 = self.box_AgentContextualStrategyListener_v2_9;
    self.AgentEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AgentContextualStrategyListener_v2_9_Finished()
    local l0;
    l0 = self.box_AgentContextualStrategyListener_v2_9;
    self.AgentEntity = l0:GetDataOutValue(0);
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
