LUAC�! -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/h2/canyon_h2_ctp_010_enemy.domino
-- User graph: Canyon_H2_CTP_010_FreeValidation
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="gNpcsToValidate" Type="Nomad|group" />
    <DataIn Name="fDistanceToFlee" Type="Core|float" />
    <DataIn Name="LoopTime" Type="Core|float" />
</InputReflection> 
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
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/IsEntityInGroup.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Misc/GetNameOfEntity.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetDistance.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetVehicleSpeed.lua");
        cboxRes:RegisterBox("Domino/System/GroupIter.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetGroup.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StringConcatenate_v2.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Canyon_H2_CTP_010_Enemy = nil;
    Globals.Canyon_H2_CTP_010_Enemy = {
        iExtractionPOIIndex = 0,
        iPackagePositionIndex = 0,
        iDifficulty = 0,
        ePackageSpawner = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_FreeValidation.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "fDistanceToFlee",
                type = "float",
            },
            [1] = {
                name = "gNpcsToValidate",
                type = "group",
            },
            [2] = {
                name = "LoopTime",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/SetContextualStrategy.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetContextualStrategy",
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
                name = "ContextualStrategy",
                type = "entity",
            },
            [1] = {
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareFloats.lua")] = {
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
                type = "float",
            },
            [1] = {
                name = "B",
                type = "float",
            },
            [2] = {
                name = "Tolerance",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/CoopActivePlayers.lua")] = {
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
                name = "OnePlayer",
                delayed = false,
            },
            [1] = {
                name = "PlayerAdded",
                delayed = true,
            },
            [2] = {
                name = "PlayerRemoved",
                delayed = true,
            },
            [3] = {
                name = "TwoPlayers",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Player1",
                type = "entity",
            },
            [1] = {
                name = "Player2",
                type = "entity",
            },
            [2] = {
                name = "PlayerAddedOrRemoved",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "False",
                delayed = false,
            },
            [1] = {
                name = "True",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/Misc/GetNameOfEntity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Long",
            },
            [1] = {
                name = "Short",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Name",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/GetDistance.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Distance2D",
            },
            [1] = {
                name = "Distance3D",
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
                name = "Distance",
                type = "float",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/GetPawnVehicleInfo.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "InVehicle",
                delayed = false,
            },
            [1] = {
                name = "NotInVehicle",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "seatType",
                type = "string",
            },
            [2] = {
                name = "vehicle",
                type = "entity",
            },
            [3] = {
                name = "vehicleType",
                type = "string",
            },
        },
        dataOutCount = 4,
    };
    metadataTable[GetPathID("Domino/System/GetVehicleSpeed.lua")] = {
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
                delayed = true,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "vehicleId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "currentSpeed",
                type = "float",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/GroupIter.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "EndIter",
                delayed = true,
            },
            [1] = {
                name = "PawnIter",
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
                name = "entities",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "entity",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/MultipleAND_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Condition",
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
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/SetFloat_v2.lua")] = {
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
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "Target",
                type = "float",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/SetGroup.lua")] = {
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
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/StringConcatenate_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "WithBoolean",
            },
            [1] = {
                name = "WithFloat",
            },
            [2] = {
                name = "WithInteger",
            },
            [3] = {
                name = "WithString",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Boolean",
                type = "bool",
            },
            [1] = {
                name = "Float",
                type = "float",
            },
            [2] = {
                name = "Input",
                type = "string",
            },
            [3] = {
                name = "Integer",
                type = "int",
            },
            [4] = {
                name = "String",
                type = "string",
            },
        },
        dataInCount = 5,
        dataOut = {
            [0] = {
                name = "Target",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Canyon_H2_CTP_010_FreeValidation";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation";
    self.eNpcToCheck = nil;
    self.InputNpcGroup = nil;
    self.ePlayerOne = nil;
    self.ePlayerTwo = nil;
    self.InputDistance = 200;
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|155399262");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|238840336");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_CoopActivePlayers_5 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|277719952");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_5_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_5_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_5_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_5_TwoPlayers,
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|367179199");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|437411946");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_GroupIter_2 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|769212497");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_2_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_2_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_2_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_2_Stopped,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|821478699");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_MultipleAND_v2_11 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|954567276");
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
        [0] = self.f_box_MultipleAND_v2_11_Out,
    });
    self.box_Delay_v5_31 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1174483843");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_31_TimeElapsed,
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1287912049");
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
        [0] = self.f_box_MultipleOR_19_Out,
    });
end;

function export:Start()
    local params, l0;
    params = self:OnEnter_box_SetFloat_v2_4();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|732435506", "732435506", "Canyon_H2_CTP_010_FreeValidation", "Start", "box_SetFloat_v2_4.FromFloat", self, l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Stop()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_30();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1376084982", "1376084982", "Canyon_H2_CTP_010_FreeValidation", "Stop", "box_Simple_Node_30.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|338890558", "338890558", "Canyon_H2_CTP_010_FreeValidation", "box_Simple_Node_30.Out", "box_CoopActivePlayers_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
    params = self:OnEnter_box_Simple_Node_20();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|260405344", "260405344", "Canyon_H2_CTP_010_FreeValidation", "box_Simple_Node_30.Out", "box_Simple_Node_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_2();
    l0 = self.box_GroupIter_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1720172311", "1720172311", "Canyon_H2_CTP_010_FreeValidation", "box_Simple_Node_20.Out", "box_GroupIter_2.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_28();
    l0 = self.box_MultipleOR_26;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1922255595", "1922255595", "Canyon_H2_CTP_010_FreeValidation", "box_MultipleOR_26.Out", "box_GetPawnVehicleInfo_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityInGroup_22();
    l0 = self.box_MultipleOR_14;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1324137728", "1324137728", "Canyon_H2_CTP_010_FreeValidation", "box_MultipleOR_14.Out", "box_IsEntityInGroup_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_5_OnePlayer()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_5_OnePlayer();
    l0 = self.box_CoopActivePlayers_5;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|462729224", "462729224", "Canyon_H2_CTP_010_FreeValidation", "box_CoopActivePlayers_5.OnePlayer", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_5_PlayerAdded()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_5_PlayerAdded();
    l0 = self.box_CoopActivePlayers_5;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|50950771", "50950771", "Canyon_H2_CTP_010_FreeValidation", "box_CoopActivePlayers_5.PlayerAdded", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_5_PlayerRemoved()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_5_PlayerRemoved();
    l0 = self.box_CoopActivePlayers_5;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1667585607", "1667585607", "Canyon_H2_CTP_010_FreeValidation", "box_CoopActivePlayers_5.PlayerRemoved", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CoopActivePlayers_5_TwoPlayers()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_5_TwoPlayers();
    l0 = self.box_CoopActivePlayers_5;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|895899014", "895899014", "Canyon_H2_CTP_010_FreeValidation", "box_CoopActivePlayers_5.TwoPlayers", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetContextualStrategy_35_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetNameOfEntity_21();
    l0 = Boxes[GetPathID("Domino/System/Coop/Misc/GetNameOfEntity.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1946335069", "1946335069", "Canyon_H2_CTP_010_FreeValidation", "box_SetContextualStrategy_35.Out", "box_GetNameOfEntity_21.Short", clone:GetLuaBox(), l0:GetLuaBox());
    -- Short
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetDistance_9_Out()
    local params, l0;
    self:OnExit_box_GetDistance_9_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_10();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1228324705", "1228324705", "Canyon_H2_CTP_010_FreeValidation", "box_GetDistance_9.Out", "box_Compare_Floats_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_18;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1235367879", "1235367879", "Canyon_H2_CTP_010_FreeValidation", "box_Delay_v5_18.TimeElapsed", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetDistance_6();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1205894503", "1205894503", "Canyon_H2_CTP_010_FreeValidation", "box_OutputOrder_v2_15.Out", "box_GetDistance_6.Distance2D", clone:GetLuaBox(), l0:GetLuaBox());
    -- Distance2D
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetDistance_9();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1201591433", "1201591433", "Canyon_H2_CTP_010_FreeValidation", "box_OutputOrder_v2_15.Out", "box_GetDistance_9.Distance2D", clone:GetLuaBox(), l0:GetLuaBox());
    -- Distance2D
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_17_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_17;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|902821834", "902821834", "Canyon_H2_CTP_010_FreeValidation", "box_MultipleOR_17.Out", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetFloat_v2_4_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetGroup_13();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1107395253", "1107395253", "Canyon_H2_CTP_010_FreeValidation", "box_SetFloat_v2_4.Out", "box_SetGroup_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityInGroup_3_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_35();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|871541497", "871541497", "Canyon_H2_CTP_010_FreeValidation", "box_IsEntityInGroup_3.False", "box_SetContextualStrategy_35.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_28_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_28_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetVehicleSpeed_27();
    l0 = Boxes[GetPathID("Domino/System/GetVehicleSpeed.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1022927136", "1022927136", "Canyon_H2_CTP_010_FreeValidation", "box_GetPawnVehicleInfo_28.InVehicle", "box_GetVehicleSpeed_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_28_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_28_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|657996373", "657996373", "Canyon_H2_CTP_010_FreeValidation", "box_GetPawnVehicleInfo_28.NotInVehicle", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPawnVehicleInfo_28_Out()
    self:OnExit_box_GetPawnVehicleInfo_28_Out();
end;

function export:f_box_Compare_Floats_10_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_11();
    l0 = self.box_MultipleAND_v2_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|74213943", "74213943", "Canyon_H2_CTP_010_FreeValidation", "box_Compare_Floats_10.A_ge_B", "box_MultipleAND_v2_11.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_GroupIter_2_EndIter()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_GroupIter_2;
    l1 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1121000101", "1121000101", "Canyon_H2_CTP_010_FreeValidation", "box_GroupIter_2.EndIter", "box_Delay_v5_31.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupIter_2_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_2_PawnIter();
    params = self:OnEnter_box_IsValueNil_v3_7();
    l0 = self.box_GroupIter_2;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|573720315", "573720315", "Canyon_H2_CTP_010_FreeValidation", "box_GroupIter_2.PawnIter", "box_IsValueNil_v3_7.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StringConcatenate_v2_25_Out()
    local params, l0;
    self:OnExit_box_StringConcatenate_v2_25_Out();
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_24();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1573292832", "1573292832", "Canyon_H2_CTP_010_FreeValidation", "box_StringConcatenate_v2_25.Out", "box_Print_v2_24.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_MultipleOR_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1495432408", "1495432408", "Canyon_H2_CTP_010_FreeValidation", "box_MultipleOR_16.Out", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_11_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_11;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|429440559", "429440559", "Canyon_H2_CTP_010_FreeValidation", "box_MultipleAND_v2_11.Out", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Floats_8_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_11();
    l0 = self.box_MultipleAND_v2_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1547149427", "1547149427", "Canyon_H2_CTP_010_FreeValidation", "box_Compare_Floats_8.A_gt_B", "box_MultipleAND_v2_11.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_31_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_31;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|339029690", "339029690", "Canyon_H2_CTP_010_FreeValidation", "box_Delay_v5_31.TimeElapsed", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Floats_12_A_gt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|925927190", "925927190", "Canyon_H2_CTP_010_FreeValidation", "box_Compare_Floats_12.A_gt_B", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupIter_2();
    l0 = self.box_MultipleOR_19;
    l1 = self.box_GroupIter_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1540152852", "1540152852", "Canyon_H2_CTP_010_FreeValidation", "box_MultipleOR_19.Out", "box_GroupIter_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_GetNameOfEntity_21_Out()
    local params, l0;
    self:OnExit_box_GetNameOfEntity_21_Out();
    l0 = Boxes[GetPathID("Domino/System/Coop/Misc/GetNameOfEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_StringConcatenate_v2_25();
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|960962645", "960962645", "Canyon_H2_CTP_010_FreeValidation", "box_GetNameOfEntity_21.Out", "box_StringConcatenate_v2_25.WithString", clone:GetLuaBox(), l0:GetLuaBox());
    -- WithString
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetGroup_13_Out()
    local l0;
    self:OnExit_box_SetGroup_13_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1401540726", "1401540726", "Canyon_H2_CTP_010_FreeValidation", "box_SetGroup_13.Out", "box_CoopActivePlayers_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_GetVehicleSpeed_27_Out()
    local params, l0;
    self:OnExit_box_GetVehicleSpeed_27_Out();
    l0 = Boxes[GetPathID("Domino/System/GetVehicleSpeed.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_33();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1414678544", "1414678544", "Canyon_H2_CTP_010_FreeValidation", "box_GetVehicleSpeed_27.Out", "box_Compare_Floats_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetDistance_1_Out()
    local params, l0;
    self:OnExit_box_GetDistance_1_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_12();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|189026784", "189026784", "Canyon_H2_CTP_010_FreeValidation", "box_GetDistance_1.Out", "box_Compare_Floats_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_20();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|369944098", "369944098", "Canyon_H2_CTP_010_FreeValidation", "box_OutputOrder_v2_29.Out", "box_Simple_Node_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|174652746", "174652746", "Canyon_H2_CTP_010_FreeValidation", "box_OutputOrder_v2_29.Out", "box_Delay_v5_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Floats_33_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|916432847", "916432847", "Canyon_H2_CTP_010_FreeValidation", "box_Compare_Floats_33.A_le_B", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityInGroup_22_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_3();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|77673839", "77673839", "Canyon_H2_CTP_010_FreeValidation", "box_IsEntityInGroup_22.False", "box_IsEntityInGroup_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_7_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1214388504", "1214388504", "Canyon_H2_CTP_010_FreeValidation", "box_IsValueNil_v3_7.No", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_7_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetDistance_1();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|457874329", "457874329", "Canyon_H2_CTP_010_FreeValidation", "box_IsValueNil_v3_7.Yes", "box_GetDistance_1.Distance2D", clone:GetLuaBox(), l0:GetLuaBox());
    -- Distance2D
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetDistance_6_Out()
    local params, l0;
    self:OnExit_box_GetDistance_6_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_8();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1546526550", "1546526550", "Canyon_H2_CTP_010_FreeValidation", "box_GetDistance_6.Out", "box_Compare_Floats_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|@CleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_30_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|@IterStop");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_20_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|103712013");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = self._sld_Target_box_StringConcatenate_v2_25,
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|311108868");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_35_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108730071815554261",
        -- Group,
        [1] = self.eNpcToCheck,
    };
    return params;
end;

function export:OnEnter_box_GetDistance_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|323554001");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_9_Out,
    });
    params = {
        -- Entity1,
        [0] = self.ePlayerTwo,
        -- Entity2,
        [1] = self.eNpcToCheck,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|435366575");
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

function export:OnEnter_box_SetFloat_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|488733989");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_4_Out,
    });
    params = {
        -- Float,
        [0] = self.fDistanceToFlee,
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|690697587");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityInGroup_3_False,
    });
    params = {
        -- Entity,
        [0] = self.eNpcToCheck,
        -- Group,
        [1] = "#D36C3988",
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|717966738");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_28_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_28_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_28_Out,
    });
    params = {
        -- pawn,
        [0] = self.eNpcToCheck,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|720113831");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Floats_10_A_ge_B,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_9,
        -- B,
        [1] = self.InputDistance,
    };
    return params;
end;

function export:OnEnter_box_GroupIter_2()
    local params;
    params = {
        -- entities,
        [0] = self.InputNpcGroup,
    };
    return params;
end;

function export:OnEnter_box_StringConcatenate_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StringConcatenate_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|784800237");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StringConcatenate_v2_25_Out,
    });
    params = {
        -- Input,
        [2] = self._sld_Name_box_GetNameOfEntity_21,
        -- String,
        [4] = "WILL BE SET CE_FREE",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_11()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1066219754");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Floats_8_A_gt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_6,
        -- B,
        [1] = self.InputDistance,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_31()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.LoopTime,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1174853972");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Floats_12_A_gt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_1,
        -- B,
        [1] = self.InputDistance,
    };
    return params;
end;

function export:OnEnter_box_GetNameOfEntity_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Misc/GetNameOfEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetNameOfEntity_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1480163346");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetNameOfEntity_21_Out,
    });
    params = {
        -- Entity,
        [0] = self.eNpcToCheck,
    };
    return params;
end;

function export:OnEnter_box_SetGroup_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1547487863");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_13_Out,
    });
    params = {
        -- Group,
        [0] = self.gNpcsToValidate,
    };
    return params;
end;

function export:OnEnter_box_GetVehicleSpeed_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetVehicleSpeed.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetVehicleSpeed_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1692500872");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetVehicleSpeed_27_Out,
    });
    params = {
        -- vehicleId,
        [0] = self._sld_vehicle_box_GetPawnVehicleInfo_28,
    };
    return params;
end;

function export:OnEnter_box_GetDistance_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1746343393");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_1_Out,
    });
    params = {
        -- Entity1,
        [0] = self.ePlayerOne,
        -- Entity2,
        [1] = self.eNpcToCheck,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1746899817");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1791338558");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_33_A_le_B,
    });
    params = {
        -- A,
        [0] = self._sld_currentSpeed_box_GetVehicleSpeed_27,
        -- B,
        [1] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1907376941");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityInGroup_22_False,
    });
    params = {
        -- Entity,
        [0] = self.eNpcToCheck,
        -- Group,
        [1] = "#350AB2F8",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|1953862892");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_7_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_7_Yes,
    });
    params = {
        -- ent,
        [4] = self.ePlayerTwo,
    };
    return params;
end;

function export:OnEnter_box_GetDistance_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_FreeValidation|2022747642");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_6_Out,
    });
    params = {
        -- Entity1,
        [0] = self.ePlayerOne,
        -- Entity2,
        [1] = self.eNpcToCheck,
    };
    return params;
end;

function export:OnExit_box_CoopActivePlayers_5_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_5;
    self.ePlayerOne = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_5_PlayerAdded()
    local l0;
    l0 = self.box_CoopActivePlayers_5;
    self.ePlayerTwo = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_5_PlayerRemoved()
    local l0;
    l0 = self.box_CoopActivePlayers_5;
    self.ePlayerTwo = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_5_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_5;
    self.ePlayerOne = l0:GetDataOutValue(0);
    self.ePlayerTwo = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetDistance_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_9 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.InputDistance = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_28_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_28 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_28_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_28 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_28 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GroupIter_2_PawnIter()
    local l0;
    l0 = self.box_GroupIter_2;
    self.eNpcToCheck = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StringConcatenate_v2_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate_v2.lua")];
    self._sld_Target_box_StringConcatenate_v2_25 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetNameOfEntity_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Misc/GetNameOfEntity.lua")];
    self._sld_Name_box_GetNameOfEntity_21 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetGroup_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    self.InputNpcGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetVehicleSpeed_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetVehicleSpeed.lua")];
    self._sld_currentSpeed_box_GetVehicleSpeed_27 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_6 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Stop" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="fDistanceToFlee" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="gNpcsToValidate" AnchorDynType="0" DataTypeID="group" />
		<DataIn Name="LoopTime" AnchorDynType="0" DataTypeID="float" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
