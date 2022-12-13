LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_300/mis_300_b20_nf.domino
-- User graph: HostageHealthBombCheckB20
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eIsHostage2" Type="Nomad|entity{}" />
    <DataIn Name="eIsHostage1" Type="Nomad|entity{}" />
    <DataIn Name="eIsHostage3" Type="Nomad|entity{}" />
    <DataIn Name="eIsHostage4" Type="Nomad|entity{}" />
    <DataIn Name="eObjAreaHost1" Type="Nomad|entity{}" />
    <DataIn Name="eObjAreaHost2" Type="Nomad|entity{}" />
    <DataIn Name="eObjAreaHost3" Type="Nomad|entity{}" />
    <DataIn Name="eObjAreaHost4" Type="Nomad|entity{}" />
    <DataIn Name="eObjMobileHost1" Type="Nomad|entity{}" />
    <DataIn Name="eObjMobileHost2" Type="Nomad|entity{}" />
    <DataIn Name="eObjMobileHost3" Type="Nomad|entity{}" />
    <DataIn Name="eObjMobileHost4" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/ExtinguishFireWithinRange.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B20_nf.HostageSetupDefuse.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B20_nf.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[249329581.bnk]], "CSoundResource");
        cboxRes:LoadResource([[560866166.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_300_B20_nf = nil;
    Globals.MIS_300_B20_nf = {
        bHostage1Save = false,
        bHostage2Save = false,
        bHostage3Save = false,
        bHostageEnoughSaved = false,
        iNumberOfHostages = 0,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B20_nf.HostageHealthBombCheckB20.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FailAllDead",
                delayed = false,
            },
            [1] = {
                name = "HostageLiberation",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "eIsHostage1",
                type = "entity",
            },
            [1] = {
                name = "eIsHostage2",
                type = "entity",
            },
            [2] = {
                name = "eIsHostage3",
                type = "entity",
            },
            [3] = {
                name = "eIsHostage4",
                type = "entity",
            },
            [4] = {
                name = "eObjAreaHost1",
                type = "entity",
            },
            [5] = {
                name = "eObjAreaHost2",
                type = "entity",
            },
            [6] = {
                name = "eObjAreaHost3",
                type = "entity",
            },
            [7] = {
                name = "eObjAreaHost4",
                type = "entity",
            },
            [8] = {
                name = "eObjMobileHost1",
                type = "entity",
            },
            [9] = {
                name = "eObjMobileHost2",
                type = "entity",
            },
            [10] = {
                name = "eObjMobileHost3",
                type = "entity",
            },
            [11] = {
                name = "eObjMobileHost4",
                type = "entity",
            },
        },
        dataInCount = 12,
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
    metadataTable[GetPathID("Domino/System/Bind_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Bind",
            },
            [1] = {
                name = "UnBind",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Bound",
                delayed = false,
            },
            [1] = {
                name = "UnBound",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "EntityA",
                type = "entity",
            },
            [2] = {
                name = "EntityB",
                type = "entity",
            },
            [3] = {
                name = "IsMultiBeatBind",
                type = "bool",
            },
            [4] = {
                name = "PositionOnly",
                type = "bool",
            },
            [5] = {
                name = "RemoveOffset",
                type = "bool",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/PawnInvincibleState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetInvincible",
            },
            [1] = {
                name = "UnsetInvincible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSet",
                delayed = false,
            },
            [1] = {
                name = "OnUnSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PhysicsModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
            },
            [2] = {
                name = "StartPhysics",
            },
        },
        controlInCount = 3,
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
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "players",
                type = "group",
            },
            [1] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/ExtinguishFireWithinRange.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Extinguish",
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
                name = "players",
                type = "group",
            },
            [1] = {
                name = "Range",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/RequestPhoneCall_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Canceled",
                delayed = true,
            },
            [1] = {
                name = "Completed",
                delayed = true,
            },
            [2] = {
                name = "Failed",
                delayed = true,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
            [4] = {
                name = "Pending",
                delayed = true,
            },
            [5] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "CustomRingInSound",
                type = "Sound",
            },
            [1] = {
                name = "CustomRingOutSound",
                type = "Sound",
            },
            [2] = {
                name = "Delay",
                type = "float",
            },
            [3] = {
                name = "NoDeadair",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/SetBoolean_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "False",
            },
            [1] = {
                name = "FromBool",
            },
            [2] = {
                name = "Toggle",
            },
            [3] = {
                name = "True",
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
                name = "Bool",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "bool",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Switch.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "None",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/UniversalInteractionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceInteraction",
            },
        },
        controlInCount = 3,
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
                name = "Interacted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "disableOnUse",
                type = "bool",
            },
            [1] = {
                name = "displayId",
                type = "oasis",
            },
            [2] = {
                name = "interactor",
                type = "entity",
            },
            [3] = {
                name = "state",
                type = "bool",
            },
            [4] = {
                name = "usableEntity",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/VehicleModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAlternativeSuspensionDisabled",
            },
            [1] = {
                name = "SetAlternativeSuspensionEnabled",
            },
            [2] = {
                name = "SetAsAnimated",
            },
            [3] = {
                name = "SetAsDestructable",
            },
            [4] = {
                name = "SetAsIndestructable",
            },
            [5] = {
                name = "SetAsNotAnimated",
            },
            [6] = {
                name = "SetAsUnusable",
            },
            [7] = {
                name = "SetAsUsable",
            },
            [8] = {
                name = "SetBrakesReleased",
            },
            [9] = {
                name = "SetCommandeerDisabled",
            },
            [10] = {
                name = "SetCommandeerEnabled",
            },
            [11] = {
                name = "SetEngineBroken",
            },
            [12] = {
                name = "SetEngineDisabled",
            },
            [13] = {
                name = "SetEngineMajorDamage",
            },
            [14] = {
                name = "SetEngineMinorDamage",
            },
            [15] = {
                name = "SetExitDisabled",
            },
            [16] = {
                name = "SetExitEnabled",
            },
            [17] = {
                name = "SetExplosion",
            },
            [18] = {
                name = "SetInputDisabled",
            },
            [19] = {
                name = "SetInputEnabled",
            },
        },
        controlInCount = 20,
        controlOut = {
            [0] = {
                name = "OnSetAlternativeSuspensionDisabled",
                delayed = false,
            },
            [1] = {
                name = "OnSetAlternativeSuspensionEnabled",
                delayed = false,
            },
            [2] = {
                name = "OnSetAsAnimated",
                delayed = false,
            },
            [3] = {
                name = "OnSetAsDestructible",
                delayed = false,
            },
            [4] = {
                name = "OnSetAsIndestructible",
                delayed = false,
            },
            [5] = {
                name = "OnSetAsNotAnimated",
                delayed = false,
            },
            [6] = {
                name = "OnSetAsUnusable",
                delayed = false,
            },
            [7] = {
                name = "OnSetAsUsable",
                delayed = false,
            },
            [8] = {
                name = "OnSetBrakesReleased",
                delayed = false,
            },
            [9] = {
                name = "OnSetCommandeerDisabled",
                delayed = false,
            },
            [10] = {
                name = "OnSetCommandeerEnabled",
                delayed = false,
            },
            [11] = {
                name = "OnSetEngineBroken",
                delayed = false,
            },
            [12] = {
                name = "OnSetEngineDisabled",
                delayed = false,
            },
            [13] = {
                name = "OnSetEngineMajorDamage",
                delayed = false,
            },
            [14] = {
                name = "OnSetEngineMinorDamage",
                delayed = false,
            },
            [15] = {
                name = "OnSetExitDisabled",
                delayed = false,
            },
            [16] = {
                name = "OnSetExitEnabled",
                delayed = false,
            },
            [17] = {
                name = "OnSetExplosion",
                delayed = false,
            },
            [18] = {
                name = "OnSetInputDisabled",
                delayed = false,
            },
            [19] = {
                name = "OnSetInputEnabled",
                delayed = false,
            },
        },
        controlOutCount = 20,
        dataIn = {
            [0] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B20_nf.HostageSetupDefuse.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ForceRelease",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "HostageReleased",
                delayed = false,
            },
            [1] = {
                name = "NextHostage",
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
                name = "Hostage",
                type = "entity",
            },
            [1] = {
                name = "STP_Tied",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "HostageHealthBombCheckB20";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20";
    self.FailAllDead = DummyFunction;
    self.HostageLiberation = DummyFunction;
    self.box_EntityStatusListener_3 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|145839509");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_3_Loaded,
    });
    self.box_Bind_v4_31 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|161999965");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_31_Bound,
    });
    self.box_RemoveEntity_v2_19 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|169390053");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_19_Out,
    });
    self.box_EntityStatusListener_2 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|279172757");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_2_Loaded,
    });
    self.box_RemoveEntity_v2_28 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|346393882");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_28_Out,
    });
    self.box_RequestPhoneCall_v2_45 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|394943728");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_23 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|646605921");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_4 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|654052491");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_4_Loaded,
    });
    self.box_Bind_v4_20 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|769678699");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_20_Bound,
    });
    self.box_RemoveEntity_v2_25 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|839084067");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_25_Out,
    });
    self.box_UniversalInteractionModifier_v2_16 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|879399732");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_58 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|986402688");
    l0:SetConnections({
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1174489655");
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
        [0] = self.f_box_MultipleOR_36_Out,
    });
    self.box_HostageSetupDefuse_10 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B20_nf.HostageSetupDefuse.debug.lua");
    l0 = self.box_HostageSetupDefuse_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HostageSetupDefuse_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1261454369");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_HostageSetupDefuse_10_HostageReleased,
        -- NextHostage,
        [1] = self.f_box_HostageSetupDefuse_10_NextHostage,
    });
    self.box_HostageSetupDefuse_12 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B20_nf.HostageSetupDefuse.debug.lua");
    l0 = self.box_HostageSetupDefuse_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HostageSetupDefuse_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1321109968");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_HostageSetupDefuse_12_HostageReleased,
        -- NextHostage,
        [1] = self.f_box_HostageSetupDefuse_12_NextHostage,
    });
    self.box_RequestPhoneCall_v2_38 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1353767167");
    l0:SetConnections({
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1502446725");
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
        [0] = self.f_box_MultipleOR_33_Out,
    });
    self.box_Switch_32 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1574879871");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_32_Output_0,
                [1] = self.f_box_Switch_32_Output_1,
                [2] = self.f_box_Switch_32_Output_2,
                [3] = self.f_box_Switch_32_Output_3,
            },
            count = 4,
        },
    });
    self.box_HostageSetupDefuse_6 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B20_nf.HostageSetupDefuse.debug.lua");
    l0 = self.box_HostageSetupDefuse_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HostageSetupDefuse_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1673534099");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_HostageSetupDefuse_6_HostageReleased,
        -- NextHostage,
        [1] = self.f_box_HostageSetupDefuse_6_NextHostage,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1693037580");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_Bind_v4_21 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1706541808");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_21_Bound,
    });
    self.box_HostageSetupDefuse_7 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B20_nf.HostageSetupDefuse.debug.lua");
    l0 = self.box_HostageSetupDefuse_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HostageSetupDefuse_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1710906841");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_HostageSetupDefuse_7_HostageReleased,
        -- NextHostage,
        [1] = self.f_box_HostageSetupDefuse_7_NextHostage,
    });
    self.box_Bind_v4_22 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1790910977");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_22_Bound,
    });
    self.box_Delay_v5_37 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1796424828");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_37_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_34 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1825469945");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v6_9 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1877328884");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_9_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_9_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_9_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_9_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_9_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_9_MemberSpawned,
    });
    self.box_RemoveEntity_v2_18 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1916111698");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_18_Out,
    });
    self.box_UniversalInteractionModifier_v2_24 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1923685089");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_1 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1955965018");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_1_Loaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1479063572", "1479063572", "HostageHealthBombCheckB20", "In", "box_OutputOrder_v2_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_52_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|608548060", "608548060", "HostageHealthBombCheckB20", "box_ActivityObjectiveMarkerModifier_v3_52.Disabled", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_3_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = self.box_EntityStatusListener_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|199362027", "199362027", "HostageHealthBombCheckB20", "box_EntityStatusListener_3.Loaded", "box_OutputOrder_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_31_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_34();
    l0 = self.box_Bind_v4_31;
    l1 = self.box_UniversalInteractionModifier_v2_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|2136391504", "2136391504", "HostageHealthBombCheckB20", "box_Bind_v4_31.Bound", "box_UniversalInteractionModifier_v2_34.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_29();
    l0 = self.box_RemoveEntity_v2_19;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|66795159", "66795159", "HostageHealthBombCheckB20", "box_RemoveEntity_v2_19.Out", "box_ActivityObjectiveMarkerModifier_v3_29.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_27_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_51();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|476176125", "476176125", "HostageHealthBombCheckB20", "box_ActivityObjectiveMarkerModifier_v3_27.Disabled", "box_ActivityObjectiveMarkerModifier_v3_51.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_2_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = self.box_EntityStatusListener_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1554758296", "1554758296", "HostageHealthBombCheckB20", "box_EntityStatusListener_2.Loaded", "box_OutputOrder_v2_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_27();
    l0 = self.box_RemoveEntity_v2_28;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|923185885", "923185885", "HostageHealthBombCheckB20", "box_RemoveEntity_v2_28.Out", "box_ActivityObjectiveMarkerModifier_v3_27.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|273031636", "273031636", "HostageHealthBombCheckB20", "box_OutputOrder_v2_39.Out", "box_MultipleOR_36.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_20();
    l0 = self.box_Bind_v4_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1814377459", "1814377459", "HostageHealthBombCheckB20", "box_OutputOrder_v2_39.Out", "box_Bind_v4_20.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_53_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|152363967", "152363967", "HostageHealthBombCheckB20", "box_ActivityObjectiveMarkerModifier_v3_53.Disabled", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_EntityStatusListener_4_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = self.box_EntityStatusListener_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|281159926", "281159926", "HostageHealthBombCheckB20", "box_EntityStatusListener_4.Loaded", "box_OutputOrder_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_20_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_23();
    l0 = self.box_Bind_v4_20;
    l1 = self.box_UniversalInteractionModifier_v2_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1705338220", "1705338220", "HostageHealthBombCheckB20", "box_Bind_v4_20.Bound", "box_UniversalInteractionModifier_v2_23.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HostageSetupDefuse_12();
    l0 = self.box_HostageSetupDefuse_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|701110179", "701110179", "HostageHealthBombCheckB20", "box_OutputOrder_v2_5.Out", "box_HostageSetupDefuse_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HostageSetupDefuse_10();
    l0 = self.box_HostageSetupDefuse_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1912224257", "1912224257", "HostageHealthBombCheckB20", "box_OutputOrder_v2_5.Out", "box_HostageSetupDefuse_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HostageSetupDefuse_7();
    l0 = self.box_HostageSetupDefuse_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1621881805", "1621881805", "HostageHealthBombCheckB20", "box_OutputOrder_v2_5.Out", "box_HostageSetupDefuse_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HostageSetupDefuse_6();
    l0 = self.box_HostageSetupDefuse_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|956995845", "956995845", "HostageHealthBombCheckB20", "box_OutputOrder_v2_5.Out", "box_HostageSetupDefuse_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1605711052", "1605711052", "HostageHealthBombCheckB20", "box_OutputOrder_v2_40.Out", "box_MultipleOR_36.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_22();
    l0 = self.box_Bind_v4_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1364716532", "1364716532", "HostageHealthBombCheckB20", "box_OutputOrder_v2_40.Out", "box_Bind_v4_22.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_30();
    l0 = self.box_RemoveEntity_v2_25;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|705770119", "705770119", "HostageHealthBombCheckB20", "box_RemoveEntity_v2_25.Out", "box_ActivityObjectiveMarkerModifier_v3_30.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_29_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_53();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|2056066084", "2056066084", "HostageHealthBombCheckB20", "box_ActivityObjectiveMarkerModifier_v3_29.Disabled", "box_ActivityObjectiveMarkerModifier_v3_53.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_51_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1801764608", "1801764608", "HostageHealthBombCheckB20", "box_ActivityObjectiveMarkerModifier_v3_51.Disabled", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1483029857", "1483029857", "HostageHealthBombCheckB20", "box_OutputOrder_v2_13.Out", "HostageLiberation", clone:GetLuaBox(), self);
    self:HostageLiberation();
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_9();
    l0 = self.box_GroupSizeListener_v6_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|164428037", "164428037", "HostageHealthBombCheckB20", "box_OutputOrder_v2_13.Out", "box_GroupSizeListener_v6_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_8_Out()
    self:OnExit_box_SetBoolean_v2_8_Out();
end;

function export:f_box_PawnInvincibleState_v2_44_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExtinguishFireWithinRange_43();
    l0 = Boxes[GetPathID("Domino/System/Player/ExtinguishFireWithinRange.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|667281384", "667281384", "HostageHealthBombCheckB20", "box_PawnInvincibleState_v2_44.OnSet", "box_ExtinguishFireWithinRange_43.Extinguish", clone:GetLuaBox(), l0:GetLuaBox());
    -- Extinguish
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1935978257", "1935978257", "HostageHealthBombCheckB20", "box_OutputOrder_v2_41.Out", "box_MultipleOR_36.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_21();
    l0 = self.box_Bind_v4_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|322247179", "322247179", "HostageHealthBombCheckB20", "box_OutputOrder_v2_41.Out", "box_Bind_v4_21.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_37();
    l0 = self.box_MultipleOR_36;
    l1 = self.box_Delay_v5_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1893100802", "1893100802", "HostageHealthBombCheckB20", "box_MultipleOR_36.Out", "box_Delay_v5_37.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_HostageSetupDefuse_10_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_25();
    l0 = self.box_HostageSetupDefuse_10;
    l1 = self.box_RemoveEntity_v2_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|624612134", "624612134", "HostageHealthBombCheckB20", "box_HostageSetupDefuse_10.HostageReleased", "box_RemoveEntity_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_HostageSetupDefuse_10_NextHostage()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_1();
    l0 = self.box_HostageSetupDefuse_10;
    l1 = self.box_EntityStatusListener_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|533320145", "533320145", "HostageHealthBombCheckB20", "box_HostageSetupDefuse_10.NextHostage", "box_EntityStatusListener_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|957073889", "957073889", "HostageHealthBombCheckB20", "box_OutputOrder_v2_42.Out", "box_MultipleOR_36.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_31();
    l0 = self.box_Bind_v4_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1839480173", "1839480173", "HostageHealthBombCheckB20", "box_OutputOrder_v2_42.Out", "box_Bind_v4_31.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_42_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnInvincibleState_v2_44();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|2004312350", "2004312350", "HostageHealthBombCheckB20", "box_OutputOrder_v2_42.Out", "box_PawnInvincibleState_v2_44.SetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetInvincible
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_58();
    l0 = self.box_PhysicsModifier_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|664707036", "664707036", "HostageHealthBombCheckB20", "box_OutputOrder_v2_42.Out", "box_PhysicsModifier_58.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_HostageSetupDefuse_12_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_28();
    l0 = self.box_HostageSetupDefuse_12;
    l1 = self.box_RemoveEntity_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1131876812", "1131876812", "HostageHealthBombCheckB20", "box_HostageSetupDefuse_12.HostageReleased", "box_RemoveEntity_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_HostageSetupDefuse_12_NextHostage()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_2();
    l0 = self.box_HostageSetupDefuse_12;
    l1 = self.box_EntityStatusListener_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|365868547", "365868547", "HostageHealthBombCheckB20", "box_HostageSetupDefuse_12.NextHostage", "box_EntityStatusListener_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_30_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_52();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|491176958", "491176958", "HostageHealthBombCheckB20", "box_ActivityObjectiveMarkerModifier_v3_30.Disabled", "box_ActivityObjectiveMarkerModifier_v3_52.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_32();
    l0 = self.box_MultipleOR_33;
    l1 = self.box_Switch_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|2031714329", "2031714329", "HostageHealthBombCheckB20", "box_MultipleOR_33.Out", "box_Switch_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_32_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = self.box_Switch_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1449817860", "1449817860", "HostageHealthBombCheckB20", "box_Switch_32.Output", "box_OutputOrder_v2_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_32_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_38();
    l0 = self.box_Switch_32;
    l1 = self.box_RequestPhoneCall_v2_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|296539074", "296539074", "HostageHealthBombCheckB20", "box_Switch_32.Output", "box_RequestPhoneCall_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Switch_32_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = self.box_Switch_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|189649142", "189649142", "HostageHealthBombCheckB20", "box_Switch_32.Output", "box_OutputOrder_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_32_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_45();
    l0 = self.box_Switch_32;
    l1 = self.box_RequestPhoneCall_v2_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1829087920", "1829087920", "HostageHealthBombCheckB20", "box_Switch_32.Output", "box_RequestPhoneCall_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_HostageSetupDefuse_6_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_18();
    l0 = self.box_HostageSetupDefuse_6;
    l1 = self.box_RemoveEntity_v2_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1491574591", "1491574591", "HostageHealthBombCheckB20", "box_HostageSetupDefuse_6.HostageReleased", "box_RemoveEntity_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_HostageSetupDefuse_6_NextHostage()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_3();
    l0 = self.box_HostageSetupDefuse_6;
    l1 = self.box_EntityStatusListener_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|203507704", "203507704", "HostageHealthBombCheckB20", "box_HostageSetupDefuse_6.NextHostage", "box_EntityStatusListener_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_11();
    l0 = self.box_MultipleOR_14;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|962804534", "962804534", "HostageHealthBombCheckB20", "box_MultipleOR_14.Out", "box_Compare_Integers_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_21_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_16();
    l0 = self.box_Bind_v4_21;
    l1 = self.box_UniversalInteractionModifier_v2_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|937381562", "937381562", "HostageHealthBombCheckB20", "box_Bind_v4_21.Bound", "box_UniversalInteractionModifier_v2_16.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_HostageSetupDefuse_7_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_19();
    l0 = self.box_HostageSetupDefuse_7;
    l1 = self.box_RemoveEntity_v2_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|524280819", "524280819", "HostageHealthBombCheckB20", "box_HostageSetupDefuse_7.HostageReleased", "box_RemoveEntity_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_HostageSetupDefuse_7_NextHostage()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_4();
    l0 = self.box_HostageSetupDefuse_7;
    l1 = self.box_EntityStatusListener_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1802853616", "1802853616", "HostageHealthBombCheckB20", "box_HostageSetupDefuse_7.NextHostage", "box_EntityStatusListener_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1089044840", "1089044840", "HostageHealthBombCheckB20", "box_OutputOrder_v2_15.Out", "FailAllDead", clone:GetLuaBox(), self);
    self:FailAllDead();
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_8();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1844828218", "1844828218", "HostageHealthBombCheckB20", "box_OutputOrder_v2_15.Out", "box_SetBoolean_v2_8.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_22_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_24();
    l0 = self.box_Bind_v4_22;
    l1 = self.box_UniversalInteractionModifier_v2_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|2058945155", "2058945155", "HostageHealthBombCheckB20", "box_Bind_v4_22.Bound", "box_UniversalInteractionModifier_v2_24.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_37_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_Delay_v5_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|2062255513", "2062255513", "HostageHealthBombCheckB20", "box_Delay_v5_37.TimeElapsed", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_17_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_54();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|384703014", "384703014", "HostageHealthBombCheckB20", "box_ActivityObjectiveMarkerModifier_v3_17.Disabled", "box_ActivityObjectiveMarkerModifier_v3_54.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_9_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_9;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1786160810", "1786160810", "HostageHealthBombCheckB20", "box_GroupSizeListener_v6_9.Enabled", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_9_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_9;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|278854391", "278854391", "HostageHealthBombCheckB20", "box_GroupSizeListener_v6_9.MemberAdded", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v6_9_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_9;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|735730080", "735730080", "HostageHealthBombCheckB20", "box_GroupSizeListener_v6_9.MemberRemoved", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RemoveEntity_v2_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_17();
    l0 = self.box_RemoveEntity_v2_18;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|404439948", "404439948", "HostageHealthBombCheckB20", "box_RemoveEntity_v2_18.Out", "box_ActivityObjectiveMarkerModifier_v3_17.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_1_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_EntityStatusListener_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|496627299", "496627299", "HostageHealthBombCheckB20", "box_EntityStatusListener_1.Loaded", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_54_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|710618669", "710618669", "HostageHealthBombCheckB20", "box_ActivityObjectiveMarkerModifier_v3_54.Disabled", "box_OutputOrder_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|747010191", "747010191", "HostageHealthBombCheckB20", "box_OutputOrder_v2_35.Out", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_26();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|494189335", "494189335", "HostageHealthBombCheckB20", "box_OutputOrder_v2_35.Out", "box_VehicleModifier_v2_26.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(6, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_11_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_8();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|690262692", "690262692", "HostageHealthBombCheckB20", "box_Compare_Integers_11.A_ge_B", "box_SetBoolean_v2_8.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_11_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1491769320", "1491769320", "HostageHealthBombCheckB20", "box_Compare_Integers_11.A_lt_B", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|85283853");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_52_Disabled,
    });
    params = {
        -- Marker,
        [1] = self.eObjMobileHost2,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eIsHostage4,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_31()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine",
        -- EntityA,
        [1] = self.eIsHostage4,
        -- EntityB,
        [2] = "2108514357435439975",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_19()
    local params;
    params = {
        -- Group,
        [0] = "2108419145543460452",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|187276562");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_27_Disabled,
    });
    params = {
        -- Marker,
        [1] = self.eObjAreaHost1,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
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
        [2] = self.eIsHostage1,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|291814555");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2108504170328788457",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_28()
    local params;
    params = {
        -- Group,
        [0] = "2108418924119853977",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_45()
    local params;
    DrawTextToScreen("Comment: Dont stop now", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Dont stop now");
    params = {
        -- Delay,
        [2] = 4,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "249329581",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|624403527");
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
                [0] = self.f_box_OutputOrder_v2_39_Out_0,
                [1] = self.f_box_OutputOrder_v2_39_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|635149949");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_53_Disabled,
    });
    params = {
        -- Marker,
        [1] = self.eObjMobileHost3,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_23()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108418924119853977",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_4()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eIsHostage3,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_20()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine",
        -- EntityA,
        [1] = self.eIsHostage1,
        -- EntityB,
        [2] = "2108418809860720154",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|771611971");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 5,
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
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
                [3] = self.f_box_OutputOrder_v2_5_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|835183124");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_25()
    local params;
    params = {
        -- Group,
        [0] = "2108419117468886622",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|854486409");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_29_Disabled,
    });
    params = {
        -- Marker,
        [1] = self.eObjAreaHost3,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|873294682");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_51_Disabled,
    });
    params = {
        -- Marker,
        [1] = self.eObjMobileHost1,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_16()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108419145543460452",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|969251357");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_58()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108514357435439978",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1137680601");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_8_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1139921163");
    l0:SetConnections({
        -- OnSet,
        [0] = self.f_box_PawnInvincibleState_v2_44_OnSet,
    });
    params = {
        -- Pawn,
        [0] = self.eIsHostage4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1165450329");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HostageSetupDefuse_10()
    local params;
    params = {
        -- Hostage,
        [0] = self.eIsHostage2,
        -- STP_Tied,
        [1] = "2108324172689050083",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1308445780");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
                [2] = self.f_box_OutputOrder_v2_42_Out_2,
                [3] = self.f_box_OutputOrder_v2_42_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HostageSetupDefuse_12()
    local params;
    params = {
        -- Hostage,
        [0] = self.eIsHostage1,
        -- STP_Tied,
        [1] = "2108323918616988002",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_38()
    local params;
    DrawTextToScreen("Comment: You thought you could", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: You thought you could");
    params = {
        -- Delay,
        [2] = 4,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "560866166",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1486641823");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_30_Disabled,
    });
    params = {
        -- Marker,
        [1] = self.eObjAreaHost2,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_Switch_32()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_HostageSetupDefuse_6()
    local params;
    params = {
        -- Hostage,
        [0] = self.eIsHostage4,
        -- STP_Tied,
        [1] = "2108514357435439971",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1695715896");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_21()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine",
        -- EntityA,
        [1] = self.eIsHostage3,
        -- EntityB,
        [2] = "2108419145543460449",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_HostageSetupDefuse_7()
    local params;
    params = {
        -- Hostage,
        [0] = self.eIsHostage3,
        -- STP_Tied,
        [1] = "2108487399683140312",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1746924037");
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

function export:OnEnter_box_Bind_v4_22()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine",
        -- EntityA,
        [1] = self.eIsHostage2,
        -- EntityB,
        [2] = "2108419117468886619",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_37()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_34()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108514357435439978",
    };
    return params;
end;

function export:OnEnter_box_ExtinguishFireWithinRange_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ExtinguishFireWithinRange.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishFireWithinRange_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1852725254");
    l0:SetConnections({
    });
    params = {
        -- players,
        [0] = self.eIsHostage4,
        -- Range,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1864446413");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_17_Disabled,
    });
    params = {
        -- Marker,
        [1] = self.eObjAreaHost4,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1868557909");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_9()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#ED14A00B",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_18()
    local params;
    params = {
        -- Group,
        [0] = "2108514357435439978",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_24()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108419117468886622",
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
        [2] = self.eIsHostage2,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|1987098631");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_54_Disabled,
    });
    params = {
        -- Marker,
        [1] = self.eObjMobileHost4,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B40_OBJ_Defuse",
            id = "1016473",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|2123511146");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@HostageHealthBombCheckB20|2139264043");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_11_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_11_A_lt_B,
    });
    l0 = self.box_GroupSizeListener_v6_9;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_300_B20_nf.bHostageEnoughSaved = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:FailAllDead()
    
end;
function export:HostageLiberation()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="FailAllDead" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="HostageLiberation" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eIsHostage1" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eIsHostage2" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eIsHostage3" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eIsHostage4" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eObjAreaHost1" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eObjAreaHost2" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eObjAreaHost3" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eObjAreaHost4" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eObjMobileHost1" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eObjMobileHost2" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eObjMobileHost3" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eObjMobileHost4" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
