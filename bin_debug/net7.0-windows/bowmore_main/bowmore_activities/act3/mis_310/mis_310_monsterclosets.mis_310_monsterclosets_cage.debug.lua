LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_310/mis_310_monsterclosets.domino
-- User graph: MIS_310_MonsterClosets_Cage
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Gate" Type="Nomad|entity{}" />
    <DataIn Name="Gate_Offset_Y" Type="Core|float" />
    <DataIn Name="Navlink" Type="Nomad|entity{}" />
    <DataIn Name="Gate_Offset_X" Type="Core|float" />
    <DataIn Name="Trigger_Inside" Type="Nomad|entity{}" />
    <DataIn Name="Trigger_Exit" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/CreateVector3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/FloatArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPosition.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_MonsterClosets.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3588815718.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1539841633.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_310_MonsterClosets = nil;
    Globals.MIS_310_MonsterClosets = {
        MC_Occupation = 0,
        MC_Occupied_N = false,
        MC_Occupied_NE = false,
        MC_Occupied_NW = false,
        MC_Occupied_S = false,
        MC_Occupied_SE = false,
        MC_Occupied_SW = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_MonsterClosets.MIS_310_MonsterClosets_Cage.debug.lua")] = {
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
                name = "Empty",
                delayed = false,
            },
            [1] = {
                name = "Occupied",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Gate",
                type = "entity",
            },
            [1] = {
                name = "Gate_Offset_X",
                type = "float",
            },
            [2] = {
                name = "Gate_Offset_Y",
                type = "float",
            },
            [3] = {
                name = "Navlink",
                type = "entity",
            },
            [4] = {
                name = "Trigger_Exit",
                type = "entity",
            },
            [5] = {
                name = "Trigger_Inside",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/NavLinkModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")] = {
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
                name = "FromGroup",
                type = "group",
            },
            [1] = {
                name = "ToGroup",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CreateVector3.lua")] = {
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
                name = "x",
                type = "float",
            },
            [1] = {
                name = "y",
                type = "float",
            },
            [2] = {
                name = "z",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "vector3",
                type = "list",
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
    metadataTable[GetPathID("Domino/System/FloatArithmetics_v2.lua")] = {
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
                type = "float",
            },
            [1] = {
                name = "B",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "float",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/GetPlayerGroup_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EnemyPlayers",
            },
            [1] = {
                name = "FriendlyPlayers",
            },
            [2] = {
                name = "In",
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
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "PlayerGroup",
                type = "group",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/GetPosition.lua")] = {
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
                name = "id",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "pitch",
                type = "float",
            },
            [1] = {
                name = "roll",
                type = "float",
            },
            [2] = {
                name = "xPos",
                type = "float",
            },
            [3] = {
                name = "yaw",
                type = "float",
            },
            [4] = {
                name = "yPos",
                type = "float",
            },
            [5] = {
                name = "zPos",
                type = "float",
            },
        },
        dataOutCount = 6,
    };
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v6.lua")] = {
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
                name = "MemberAdded",
                delayed = true,
            },
            [3] = {
                name = "MemberDied",
                delayed = true,
            },
            [4] = {
                name = "MemberRemoved",
                delayed = true,
            },
            [5] = {
                name = "MemberSpawned",
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
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "memberCount",
                type = "int",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/HealthModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Damage",
            },
            [1] = {
                name = "Heal",
            },
            [2] = {
                name = "RemoveCritical",
            },
            [3] = {
                name = "Set",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Damaged",
                delayed = false,
            },
            [1] = {
                name = "Healed",
                delayed = false,
            },
            [2] = {
                name = "OnRemoveCritical",
                delayed = false,
            },
            [3] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "damageWithStim",
                type = "int",
            },
            [1] = {
                name = "origin",
                type = "entity",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "value",
                type = "int",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/MessageListener_v3.lua")] = {
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
                name = "Received",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "message",
                type = "string",
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
                name = "usePhysVelocity",
                type = "bool",
            },
            [8] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 9,
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
    metadataTable[GetPathID("Domino/System/SoundModifier_v2.lua")] = {
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
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "SoundId",
                type = "Sound",
            },
            [2] = {
                name = "SoundType",
                type = "SoundType",
            },
            [3] = {
                name = "StopFadeOut",
                type = "float",
            },
            [4] = {
                name = "UseSubtitles",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/TriggerState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAsUnusable",
            },
            [1] = {
                name = "SetAsUsable",
            },
            [2] = {
                name = "SetDisabled",
            },
            [3] = {
                name = "SetEnabled",
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
                name = "OnSetUnusable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUsable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "CheckAngle",
                type = "bool",
            },
            [1] = {
                name = "CheckLookAt",
                type = "bool",
            },
            [2] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_310_MonsterClosets_Cage";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage";
    self.Empty = DummyFunction;
    self.Occupied = DummyFunction;
    self.X = 0;
    self.Start_X = 0;
    self.Start_Y = 0;
    self.End_X = 0;
    self.End_Y = 0;
    self.Start_Z = 0;
    self.Rot = {
    };
    self.box_ProximityRadiusListener_v3_45 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|253330654");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_45_AllFar,
    });
    self.box_MessageListener_v3_41 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|357571764");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_41_Received,
    });
    self.box_CoopActivePlayers_17 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|446990557");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_17_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_17_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_17_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_17_TwoPlayers,
    });
    self.box_ProximityTrigger_v3_20 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|695233300");
    l0:SetConnections({
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_20_OnEmpty,
    });
    self.box_SoundModifier_v2_7 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|742438584");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_7_Started,
    });
    self.box_GroupSizeListener_v6_37 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|782972445");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_37_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_37_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_37_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_37_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_37_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_37_MemberSpawned,
    });
    self.box_Delay_v5_39 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|809270775");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_39_TimeElapsed,
    });
    self.box_SoundModifier_v2_18 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|899659741");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_18_Started,
    });
    self.box_Delay_v5_33 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1031073306");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_33_TimeElapsed,
    });
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1037300992");
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
        [0] = self.f_box_MultipleOR_43_Out,
    });
    self.box_Delay_v5_31 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1041699283");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_15 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1311758353");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_15_StartOut,
    });
    self.box_ProximityTrigger_v3_5 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1516159753");
    l0:SetConnections({
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_5_OnOccupied,
    });
    self.box_PositionModifier_v2_21 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1545315775");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_21_StartOut,
    });
    self.box_Delay_v5_35 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1547689552");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_35_TimeElapsed,
    });
    self.box_NavLinkModifier_8 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1719517447");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_8_Deactivated,
    });
    self.box_NavLinkModifier_13 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1851350302");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_13_Activated,
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1266231660", "1266231660", "MIS_310_MonsterClosets_Cage", "Disable", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1645259167", "1645259167", "MIS_310_MonsterClosets_Cage", "Enable", "box_OutputOrder_v2_23.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|538628841", "538628841", "MIS_310_MonsterClosets_Cage", "box_Simple_Node_26.Out", "box_Delay_v5_31.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_TriggerState_v2_32();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|902263282", "902263282", "MIS_310_MonsterClosets_Cage", "box_Simple_Node_26.Out", "box_TriggerState_v2_32.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_46_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_41();
    l0 = self.box_MessageListener_v3_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1204961940", "1204961940", "MIS_310_MonsterClosets_Cage", "box_Simple_Node_46.Out", "box_MessageListener_v3_41.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_28_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_40();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|154165556", "154165556", "MIS_310_MonsterClosets_Cage", "box_Simple_Node_28.Out", "box_TriggerState_v2_40.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_25_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1772757222", "1772757222", "MIS_310_MonsterClosets_Cage", "box_Simple_Node_25.Out", "box_Delay_v5_31.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_TriggerState_v2_32();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1021582777", "1021582777", "MIS_310_MonsterClosets_Cage", "box_Simple_Node_25.Out", "box_TriggerState_v2_32.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_40();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|833233382", "833233382", "MIS_310_MonsterClosets_Cage", "box_Simple_Node_27.Out", "box_TriggerState_v2_40.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_47_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_44();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1008183087", "1008183087", "MIS_310_MonsterClosets_Cage", "box_Simple_Node_47.Out", "box_GetPlayerGroup_v2_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupAddToGroup_v2_4_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|473940422", "473940422", "MIS_310_MonsterClosets_Cage", "box_GroupAddToGroup_v2_4.Out", "box_OutputOrder_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_21();
    l0 = self.box_PositionModifier_v2_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|2042720933", "2042720933", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_36.Out", "box_PositionModifier_v2_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|636584065", "636584065", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_36.Out", "box_Delay_v5_35.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_45_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = self.box_ProximityRadiusListener_v3_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|517525113", "517525113", "MIS_310_MonsterClosets_Cage", "box_ProximityRadiusListener_v3_45.AllFar", "box_OutputOrder_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_41_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_47();
    l0 = self.box_MessageListener_v3_41;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|2069353127", "2069353127", "MIS_310_MonsterClosets_Cage", "box_MessageListener_v3_41.Received", "box_Simple_Node_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_14_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_14_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_11();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|521371493", "521371493", "MIS_310_MonsterClosets_Cage", "box_CreateVector3_14.Out", "box_FloatArithmetics_v2_11.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_26();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|498567037", "498567037", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_16.Out", "box_Simple_Node_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1807828920", "1807828920", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_16.Out", "box_MultipleOR_43.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_17_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_24();
    l0 = self.box_CoopActivePlayers_17;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1329708271", "1329708271", "MIS_310_MonsterClosets_Cage", "box_CoopActivePlayers_17.PlayerAdded", "box_GroupAddToGroup_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_2_Out()
    self:OnExit_box_IntegerArithmetics_v2_2_Out();
end;

function export:f_box_ProximityTrigger_v3_20_OnEmpty()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_ProximityTrigger_v3_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|526684853", "526684853", "MIS_310_MonsterClosets_Cage", "box_ProximityTrigger_v3_20.OnEmpty", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_40_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_5();
    l0 = self.box_ProximityTrigger_v3_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1217439093", "1217439093", "MIS_310_MonsterClosets_Cage", "box_TriggerState_v2_40.Disabled", "box_ProximityTrigger_v3_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_TriggerState_v2_40_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_5();
    l0 = self.box_ProximityTrigger_v3_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1814540907", "1814540907", "MIS_310_MonsterClosets_Cage", "box_TriggerState_v2_40.Enabled", "box_ProximityTrigger_v3_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_7_Started()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_8();
    l0 = self.box_SoundModifier_v2_7;
    l1 = self.box_NavLinkModifier_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|70338679", "70338679", "MIS_310_MonsterClosets_Cage", "box_SoundModifier_v2_7.Started", "box_NavLinkModifier_8.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v6_37_MemberSpawned()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_38();
    l0 = self.box_GroupSizeListener_v6_37;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|59289629", "59289629", "MIS_310_MonsterClosets_Cage", "box_GroupSizeListener_v6_37.MemberSpawned", "box_GroupAddToGroup_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_26();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|456161324", "456161324", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_48.Out", "box_Simple_Node_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_42();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1770022914", "1770022914", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_48.Out", "box_HealthModifier_v2_42.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_39_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_20();
    l0 = self.box_Delay_v5_39;
    l1 = self.box_ProximityTrigger_v3_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1198489689", "1198489689", "MIS_310_MonsterClosets_Cage", "box_Delay_v5_39.TimeElapsed", "box_ProximityTrigger_v3_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CreateVector3_19_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_19_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|14741097", "14741097", "MIS_310_MonsterClosets_Cage", "box_CreateVector3_19.Out", "box_OutputOrder_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_18_Started()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_13();
    l0 = self.box_SoundModifier_v2_18;
    l1 = self.box_NavLinkModifier_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1893963256", "1893963256", "MIS_310_MonsterClosets_Cage", "box_SoundModifier_v2_18.Started", "box_NavLinkModifier_13.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPosition_9();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|325373082", "325373082", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_12.Out", "box_GetPosition_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_27();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|115377242", "115377242", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_12.Out", "box_Simple_Node_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|816306111", "816306111", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_30.Out", "Occupied", clone:GetLuaBox(), self);
    self:Occupied();
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_25();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1842226165", "1842226165", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_30.Out", "box_Simple_Node_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_33_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_Delay_v5_33;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1094973083", "1094973083", "MIS_310_MonsterClosets_Cage", "box_Delay_v5_33.TimeElapsed", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CreateVector3_22();
    l0 = self.box_MultipleOR_43;
    l1 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|279326565", "279326565", "MIS_310_MonsterClosets_Cage", "box_MultipleOR_43.Out", "box_CreateVector3_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_11_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_10();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1285121157", "1285121157", "MIS_310_MonsterClosets_Cage", "box_FloatArithmetics_v2_11.Out", "box_FloatArithmetics_v2_10.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_10_Out()
    self:OnExit_box_FloatArithmetics_v2_10_Out();
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|2065071122", "2065071122", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_29.Out", "Empty", clone:GetLuaBox(), self);
    self:Empty();
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_27();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|433838770", "433838770", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_29.Out", "box_Simple_Node_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_15_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_18();
    l0 = self.box_PositionModifier_v2_15;
    l1 = self.box_SoundModifier_v2_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1825894066", "1825894066", "MIS_310_MonsterClosets_Cage", "box_PositionModifier_v2_15.StartOut", "box_SoundModifier_v2_18.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_TriggerState_v2_32_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_20();
    l0 = self.box_ProximityTrigger_v3_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|230286389", "230286389", "MIS_310_MonsterClosets_Cage", "box_TriggerState_v2_32.Disabled", "box_ProximityTrigger_v3_20.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_TriggerState_v2_32_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_39();
    l0 = self.box_Delay_v5_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|823778068", "823778068", "MIS_310_MonsterClosets_Cage", "box_TriggerState_v2_32.Enabled", "box_Delay_v5_39.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1979554767", "1979554767", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_3.Out", "box_Simple_Node_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_28();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1808531810", "1808531810", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_3.Out", "box_Simple_Node_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_26();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1883575002", "1883575002", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_3.Out", "box_Simple_Node_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_5_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = self.box_ProximityTrigger_v3_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|744852953", "744852953", "MIS_310_MonsterClosets_Cage", "box_ProximityTrigger_v3_5.OnOccupied", "box_OutputOrder_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_21_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_7();
    l0 = self.box_PositionModifier_v2_21;
    l1 = self.box_SoundModifier_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1157120059", "1157120059", "MIS_310_MonsterClosets_Cage", "box_PositionModifier_v2_21.StartOut", "box_SoundModifier_v2_7.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_35_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_Delay_v5_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|773717736", "773717736", "MIS_310_MonsterClosets_Cage", "box_Delay_v5_35.TimeElapsed", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_15();
    l0 = self.box_PositionModifier_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1305740263", "1305740263", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_34.Out", "box_PositionModifier_v2_15.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_33();
    l0 = self.box_Delay_v5_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|2076268191", "2076268191", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_34.Out", "box_Delay_v5_33.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_NavLinkModifier_8_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_2();
    l0 = self.box_NavLinkModifier_8;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1605365522", "1605365522", "MIS_310_MonsterClosets_Cage", "box_NavLinkModifier_8.Deactivated", "box_IntegerArithmetics_v2_2.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPosition_9_Out()
    local params, l0;
    self:OnExit_box_GetPosition_9_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_14();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|637833067", "637833067", "MIS_310_MonsterClosets_Cage", "box_GetPosition_9.Out", "box_CreateVector3_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_22_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_22_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1328291964", "1328291964", "MIS_310_MonsterClosets_Cage", "box_CreateVector3_22.Out", "box_OutputOrder_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_13_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_2();
    l0 = self.box_NavLinkModifier_13;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1027251888", "1027251888", "MIS_310_MonsterClosets_Cage", "box_NavLinkModifier_13.Activated", "box_IntegerArithmetics_v2_2.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_6();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1106902090", "1106902090", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_23.Out", "box_GetPlayerGroup_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1622711777", "1622711777", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_23.Out", "box_CoopActivePlayers_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_23_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_41();
    l0 = self.box_MessageListener_v3_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|400522551", "400522551", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_23.Out", "box_MessageListener_v3_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_37();
    l0 = self.box_GroupSizeListener_v6_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|459834949", "459834949", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_23.Out", "box_GroupSizeListener_v6_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_6_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1025558955", "1025558955", "MIS_310_MonsterClosets_Cage", "box_GetPlayerGroup_v2_6.Out", "box_GroupAddToGroup_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_44_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_44_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_45();
    l0 = self.box_ProximityRadiusListener_v3_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|462616622", "462616622", "MIS_310_MonsterClosets_Cage", "box_GetPlayerGroup_v2_44.Out", "box_ProximityRadiusListener_v3_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_HealthModifier_v2_42_Damaged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|683837350", "683837350", "MIS_310_MonsterClosets_Cage", "box_HealthModifier_v2_42.Damaged", "box_MultipleOR_43.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_28();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|79865764", "79865764", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_1.Out", "box_Simple_Node_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_19();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|65852011", "65852011", "MIS_310_MonsterClosets_Cage", "box_OutputOrder_v2_1.Out", "box_CreateVector3_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|@disable_emptycheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_26_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|@disable_messagelistener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_46_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|@disable_occupiedcheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|@enable_emptycheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_25_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|@enable_occupiedcheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_27_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|@force_close_doors");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_47_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|132594937");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_4_Out,
    });
    params = {
        -- FromGroup,
        [0] = self._sld_PlayerGroup_box_GetPlayerGroup_v2_6,
        -- ToGroup,
        [1] = "#DE6D96B1",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|246609177");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- farZone,
        [2] = 8,
        -- id2,
        [3] = self.Trigger_Exit,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_41()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- message,
        [1] = "mis310_mc_forceclose",
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|382181881");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_14_Out,
    });
    params = {
        -- x,
        [0] = self._sld_pitch_box_GetPosition_9,
        -- y,
        [1] = self._sld_roll_box_GetPosition_9,
        -- z,
        [2] = self._sld_yaw_box_GetPosition_9,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|385102521");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|669898915");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_2_Out,
    });
    params = {
        -- A,
        [0] = Globals.MIS_310_MonsterClosets.MC_Occupation,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_20()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#DE6D96B1",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = self.Trigger_Exit,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|706368190");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_40_Disabled,
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_40_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = self.Trigger_Inside,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_7()
    local params;
    params = {
        -- Pawns,
        [0] = self.Gate,
        -- SoundId,
        [1] = "1539841633",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_37()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|807533215");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_39()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|843449836");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_19_Out,
    });
    params = {
        -- x,
        [0] = self.End_X,
        -- y,
        [1] = self.End_Y,
        -- z,
        [2] = self.Start_Z,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_24()
    local params, l0;
    DrawTextToScreen("Comment: player joined", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GroupAddToGroup_v2')-- Comment: player joined");
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|878099044");
    l0:SetConnections({
    });
    l0 = self.box_CoopActivePlayers_17;
    params = {
        -- FromGroup,
        [0] = l0:GetDataOutValue(2),
        -- ToGroup,
        [1] = "#DE6D96B1",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_18()
    local params;
    params = {
        -- Pawns,
        [0] = self.Gate,
        -- SoundId,
        [1] = "3588815718",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|922474896");
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

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|954327135");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_33()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1040830353");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_11_Out,
    });
    params = {
        -- A,
        [0] = self.Start_X,
        -- B,
        [1] = self.Gate_Offset_X,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_31()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1247274134");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_10_Out,
    });
    params = {
        -- A,
        [0] = self.Start_Y,
        -- B,
        [1] = self.Gate_Offset_Y,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1294543194");
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

function export:OnEnter_box_PositionModifier_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    params = {
        -- blendTime,
        [1] = 2,
        -- endPos,
        [2] = l0:GetDataOutValue(0),
        -- endRot,
        [3] = self.Rot,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.Gate,
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1459272230");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_32_Disabled,
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_32_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = self.Trigger_Exit,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1495053057");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#DE6D96B1",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = self.Trigger_Inside,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    params = {
        -- blendTime,
        [1] = 0.5,
        -- endPos,
        [2] = l0:GetDataOutValue(0),
        -- endRot,
        [3] = self.Rot,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.Gate,
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_35()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1657112154");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_8()
    local params;
    params = {
        -- Entity,
        [0] = self.Navlink,
    };
    return params;
end;

function export:OnEnter_box_GetPosition_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1723247021");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_9_Out,
    });
    params = {
        -- id,
        [0] = self.Gate,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1726399745");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_22_Out,
    });
    params = {
        -- x,
        [0] = self.Start_X,
        -- y,
        [1] = self.Start_Y,
        -- z,
        [2] = self.Start_Z,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_13()
    local params;
    params = {
        -- Entity,
        [0] = self.Navlink,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1877430018");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
                [2] = self.f_box_OutputOrder_v2_23_Out_2,
                [3] = self.f_box_OutputOrder_v2_23_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1879001199");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1904635651");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_44_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_38()
    local params, l0;
    DrawTextToScreen("Comment: player respawned", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GroupAddToGroup_v2')-- Comment: player respawned");
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|1951123621");
    l0:SetConnections({
    });
    l0 = self.box_GroupSizeListener_v6_37;
    params = {
        -- FromGroup,
        [0] = l0:GetDataOutValue(0),
        -- ToGroup,
        [1] = "#DE6D96B1",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|2024531499");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_42_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#F65AEFD4",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Cage|2069856467");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_CreateVector3_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self.Rot = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    Globals.MIS_310_MonsterClosets.MC_Occupation = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_19_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_15;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.End_X = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.End_Y = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPosition_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self.Start_X = l0:GetDataOutValue(2);
    self.Start_Y = l0:GetDataOutValue(4);
    self.Start_Z = l0:GetDataOutValue(5);
    self._sld_pitch_box_GetPosition_9 = l0:GetDataOutValue(0);
    self._sld_roll_box_GetPosition_9 = l0:GetDataOutValue(1);
    self._sld_yaw_box_GetPosition_9 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_CreateVector3_22_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_21;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self._sld_PlayerGroup_box_GetPlayerGroup_v2_6 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_44_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_45;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Empty()
    
end;
function export:Occupied()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Empty" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Occupied" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Gate" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Gate_Offset_X" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Gate_Offset_Y" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Navlink" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Trigger_Exit" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Trigger_Inside" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
