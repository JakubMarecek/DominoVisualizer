LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_010/intro_010_b20.domino
-- User graph: Intro_010_B20_AlarmFail
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="near_static_meshes" Type="Core|bool" />
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
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/FloatArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PawnWeaponFiredListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlaySimpleAnimation_v2.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        
        -- Load resources
        cboxRes:LoadResource([[animations\ai\stp\simpleanimation\generic\unsafe\aistp_unsafe-crouchinfear_-cr_noweap_-f_02-loop.mab]], "CAnimationResource");
        cboxRes:LoadResource([[animations\ai\stp\simpleanimation\generic\unsafe\aistp_unsafe-crouchinfear_-cr_noweap_-f_01-loop.mab]], "CAnimationResource");
        cboxRes:LoadResource([[animations\ai\stp\simpleanimation\generic\unsafe\aistp_unsafe-antagonize_-st_baseballbat_-f-skylar_01-loop.mab]], "CAnimationResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_AlarmFail.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable_NPCAlarm",
            },
            [1] = {
                name = "Fail_NPCAlarm",
            },
            [2] = {
                name = "Fail_WorldLimits",
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
                name = "near_static_meshes",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/AI/SpawnAI.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Spawn",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Spawned",
                delayed = true,
            },
            [3] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "EntitySpawner",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "mercsSpawned",
                type = "list",
            },
            [1] = {
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/AI/StateListener_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Alert",
            },
            [1] = {
                name = "Combat",
            },
            [2] = {
                name = "Dead",
            },
            [3] = {
                name = "Disable",
            },
            [4] = {
                name = "Idle_RelaxCautious",
            },
            [5] = {
                name = "Investigate",
            },
        },
        controlInCount = 6,
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
                name = "MemberInState",
                delayed = true,
            },
            [3] = {
                name = "StateStart",
                delayed = true,
            },
            [4] = {
                name = "StateStop",
                delayed = true,
            },
        },
        controlOutCount = 5,
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
                name = "memberCountInState",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/CompareBoolean.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_and_B",
                delayed = false,
            },
            [1] = {
                name = "A_is_False",
                delayed = false,
            },
            [2] = {
                name = "A_is_True",
                delayed = false,
            },
            [3] = {
                name = "A_or_B",
                delayed = false,
            },
            [4] = {
                name = "A_xor_B",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "A",
                type = "bool",
            },
            [1] = {
                name = "B",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/IsEntityLoaded_v3.lua")] = {
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
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/PawnWeaponFiredListener_v2.lua")] = {
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
                name = "OnFired",
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
                name = "itemDescriptor",
                type = "genericdb",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "weaponClass",
                type = "string",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "remainingAmmo",
                type = "int",
            },
            [1] = {
                name = "weaponItem",
                type = "genericdb",
            },
            [2] = {
                name = "wielder",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/RandomFloat_v2.lua")] = {
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
                name = "Max",
                type = "float",
            },
            [1] = {
                name = "Min",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Intro_010_B20_AlarmFail";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail";
    self.Out = DummyFunction;
    self.damage_multiplier = 5;
    self.player = nil;
    self.damage_instigator = nil;
    self.player_damage_received = 0;
    self.player_current_health = 0;
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|76015513");
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
        [0] = self.f_box_MultipleOR_29_Out,
    });
    self.box_PawnWeaponFiredListener_v2_20 = cbox:CreateBox("Domino/System/PawnWeaponFiredListener_v2.lua");
    l0 = self.box_PawnWeaponFiredListener_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponFiredListener_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|86871920");
    l0:SetConnections({
        -- OnFired,
        [2] = self.f_box_PawnWeaponFiredListener_v2_20_OnFired,
    });
    self.box_PlaySimpleAnimation_v2_41 = cbox:CreateBox("Domino/System/PlaySimpleAnimation_v2.lua");
    l0 = self.box_PlaySimpleAnimation_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySimpleAnimation_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|93080416");
    l0:SetConnections({
    });
    self.box_SpawnAI_13 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|106891690");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_13_Out,
    });
    self.box_PlaySimpleAnimation_v2_62 = cbox:CreateBox("Domino/System/PlaySimpleAnimation_v2.lua");
    l0 = self.box_PlaySimpleAnimation_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySimpleAnimation_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|109579448");
    l0:SetConnections({
    });
    self.box_Delay_v5_44 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|146203536");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_44_TimeElapsed,
    });
    self.box_Delay_v5_61 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|170733170");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_61_TimeElapsed,
    });
    self.box_Delay_v5_46 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|348911723");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_46_TimeElapsed,
    });
    self.box_Switch_5 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|409227012");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
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
                [0] = self.f_box_Switch_5_Output_0,
                [1] = self.f_box_Switch_5_Output_1,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_11 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|492214633");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_11_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_11_TimeElapsed,
    });
    self.box_PlaySimpleAnimation_v2_57 = cbox:CreateBox("Domino/System/PlaySimpleAnimation_v2.lua");
    l0 = self.box_PlaySimpleAnimation_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySimpleAnimation_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|501848947");
    l0:SetConnections({
    });
    self.box_StateListener_v2_14 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|647684153");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_14_StateStart,
    });
    self.box_Delay_v5_59 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|660097400");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_59_TimeElapsed,
    });
    self.box_Delay_v5_55 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|680050043");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_55_TimeElapsed,
    });
    self.box_HealthListener_v6_36 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|722160625");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_36_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_36_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_36_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_36_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_36_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_36_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_36_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_36_Revived,
    });
    self.box_OnceOnly_v3_4 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|732998518");
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
                [0] = self.f_box_OnceOnly_v3_4_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_10 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|913078946");
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
                [0] = self.f_box_OnceOnly_v3_10_Out_0,
            },
            count = 1,
        },
    });
    self.box_SpawnAI_21 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|913585604");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_21_Out,
    });
    self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1021870106");
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
        [0] = self.f_box_MultipleOR_38_Out,
    });
    self.box_PlaySimpleAnimation_v2_67 = cbox:CreateBox("Domino/System/PlaySimpleAnimation_v2.lua");
    l0 = self.box_PlaySimpleAnimation_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySimpleAnimation_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1088886065");
    l0:SetConnections({
    });
    self.box_Delay_v5_64 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1104639981");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_64_TimeElapsed,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1132320747");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1209286147");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 8,
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
    self.box_PlaySimpleAnimation_v2_54 = cbox:CreateBox("Domino/System/PlaySimpleAnimation_v2.lua");
    l0 = self.box_PlaySimpleAnimation_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySimpleAnimation_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1224634032");
    l0:SetConnections({
    });
    self.box_Delay_v5_39 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1301675009");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_39_TimeElapsed,
    });
    self.box_StateListener_v2_18 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1345586708");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_18_StateStart,
    });
    self.box_PlaySimpleAnimation_v2_48 = cbox:CreateBox("Domino/System/PlaySimpleAnimation_v2.lua");
    l0 = self.box_PlaySimpleAnimation_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySimpleAnimation_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1410161889");
    l0:SetConnections({
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1442606777");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1567364153");
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
        [0] = self.f_box_MultipleOR_27_Out,
    });
    self.box_PlaySimpleAnimation_v2_49 = cbox:CreateBox("Domino/System/PlaySimpleAnimation_v2.lua");
    l0 = self.box_PlaySimpleAnimation_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySimpleAnimation_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1584693951");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_32 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1704257055");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_32_Downed,
    });
    self.box_Delay_v5_58 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1712223281");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_58_TimeElapsed,
    });
    self.box_PlaySimpleAnimation_v2_40 = cbox:CreateBox("Domino/System/PlaySimpleAnimation_v2.lua");
    l0 = self.box_PlaySimpleAnimation_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySimpleAnimation_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1967457739");
    l0:SetConnections({
    });
    self.box_PlaySimpleAnimation_v2_53 = cbox:CreateBox("Domino/System/PlaySimpleAnimation_v2.lua");
    l0 = self.box_PlaySimpleAnimation_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySimpleAnimation_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|2005761712");
    l0:SetConnections({
    });
    self.box_Delay_v5_50 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|2137222706");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_50_TimeElapsed,
    });
end;

function export:Disable_NPCAlarm()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1166627394", "1166627394", "Intro_010_B20_AlarmFail", "Disable_NPCAlarm", "box_OutputOrder_v2_76.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Fail_NPCAlarm()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1493023906", "1493023906", "Intro_010_B20_AlarmFail", "Fail_NPCAlarm", "box_OutputOrder_v2_23.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Fail_WorldLimits()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1095259206", "1095259206", "Intro_010_B20_AlarmFail", "Fail_WorldLimits", "box_OutputOrder_v2_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1215048900", "1215048900", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_7.Out", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|2025101248", "2025101248", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_7.Out", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_MultipleOR_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_MultipleOR_29;
    l1 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|2135474369", "2135474369", "Intro_010_B20_AlarmFail", "box_MultipleOR_29.Out", "box_Delay_v5_34.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PawnWeaponFiredListener_v2_20_OnFired()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_PawnWeaponFiredListener_v2_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|720488154", "720488154", "Intro_010_B20_AlarmFail", "box_PawnWeaponFiredListener_v2_20.OnFired", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_37_Damaged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1328531489", "1328531489", "Intro_010_B20_AlarmFail", "box_HealthModifier_v2_37.Damaged", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_21();
    l0 = self.box_SpawnAI_13;
    l1 = self.box_SpawnAI_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|754803914", "754803914", "Intro_010_B20_AlarmFail", "box_SpawnAI_13.Out", "box_SpawnAI_21.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_FloatArithmetics_v2_2_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_28();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1135162498", "1135162498", "Intro_010_B20_AlarmFail", "box_FloatArithmetics_v2_2.Out", "box_SetInteger_v2_28.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_44_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_69();
    l0 = self.box_Delay_v5_44;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|859044230", "859044230", "Intro_010_B20_AlarmFail", "box_Delay_v5_44.TimeElapsed", "box_IsEntityLoaded_v3_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_61_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_72();
    l0 = self.box_Delay_v5_61;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1797271631", "1797271631", "Intro_010_B20_AlarmFail", "box_Delay_v5_61.TimeElapsed", "box_IsEntityLoaded_v3_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_25_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_2();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1260636824", "1260636824", "Intro_010_B20_AlarmFail", "box_IsValueNil_v3_25.No", "box_FloatArithmetics_v2_2.Mul", clone:GetLuaBox(), l0:GetLuaBox());
    -- Mul
    l0:Exec(7, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_25_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_19();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1744789823", "1744789823", "Intro_010_B20_AlarmFail", "box_IsValueNil_v3_25.Yes", "box_SetEntity_v2_19.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_51_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_51_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_50();
    l0 = self.box_Delay_v5_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1147672809", "1147672809", "Intro_010_B20_AlarmFail", "box_RandomFloat_v2_51.Out", "box_Delay_v5_50.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RandomFloat_v2_63_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_63_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_59();
    l0 = self.box_Delay_v5_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|593444099", "593444099", "Intro_010_B20_AlarmFail", "box_RandomFloat_v2_63.Out", "box_Delay_v5_59.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_72_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySimpleAnimation_v2_54();
    l0 = self.box_PlaySimpleAnimation_v2_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|235447315", "235447315", "Intro_010_B20_AlarmFail", "box_IsEntityLoaded_v3_72.True", "box_PlaySimpleAnimation_v2_54.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_1_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_37();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1693286204", "1693286204", "Intro_010_B20_AlarmFail", "box_Compare_Boolean_1.A_is_False", "box_HealthModifier_v2_37.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_1_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1296082299", "1296082299", "Intro_010_B20_AlarmFail", "box_Compare_Boolean_1.A_is_True", "box_MultipleOR_38.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_46_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_70();
    l0 = self.box_Delay_v5_46;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|749505476", "749505476", "Intro_010_B20_AlarmFail", "box_Delay_v5_46.TimeElapsed", "box_IsEntityLoaded_v3_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_5_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_1();
    l0 = self.box_Switch_5;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1795956133", "1795956133", "Intro_010_B20_AlarmFail", "box_Switch_5.Output", "box_Compare_Boolean_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_5_Output_1()
    local l0, l1;
    l0 = self.box_Switch_5;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|223208641", "223208641", "Intro_010_B20_AlarmFail", "box_Switch_5.Output", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_11_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SetFloat_v2_35();
    l0 = self.box_Delay_v5_11;
    l1 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1985969222", "1985969222", "Intro_010_B20_AlarmFail", "box_Delay_v5_11.Started", "box_SetFloat_v2_35.FromFloat", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromFloat
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_11_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_11;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|2036357524", "2036357524", "Intro_010_B20_AlarmFail", "box_Delay_v5_11.TimeElapsed", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetInteger_v2_28_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_8();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1054922292", "1054922292", "Intro_010_B20_AlarmFail", "box_SetInteger_v2_28.Out", "box_HealthModifier_v2_8.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_17_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_13();
    l0 = self.box_SpawnAI_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|302549763", "302549763", "Intro_010_B20_AlarmFail", "box_SetContextualStrategy_17.Out", "box_SpawnAI_13.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_70_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySimpleAnimation_v2_48();
    l0 = self.box_PlaySimpleAnimation_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1536618427", "1536618427", "Intro_010_B20_AlarmFail", "box_IsEntityLoaded_v3_70.True", "box_PlaySimpleAnimation_v2_48.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_StateListener_v2_14_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_14;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|953009681", "953009681", "Intro_010_B20_AlarmFail", "box_StateListener_v2_14.StateStart", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_59_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_73();
    l0 = self.box_Delay_v5_59;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|643615633", "643615633", "Intro_010_B20_AlarmFail", "box_Delay_v5_59.TimeElapsed", "box_IsEntityLoaded_v3_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_52_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_52_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_55();
    l0 = self.box_Delay_v5_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|697534954", "697534954", "Intro_010_B20_AlarmFail", "box_RandomFloat_v2_52.Out", "box_Delay_v5_55.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_55_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySimpleAnimation_v2_53();
    l0 = self.box_Delay_v5_55;
    l1 = self.box_PlaySimpleAnimation_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1836260020", "1836260020", "Intro_010_B20_AlarmFail", "box_Delay_v5_55.TimeElapsed", "box_PlaySimpleAnimation_v2_53.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_36_Critical()
    self:OnExit_box_HealthListener_v6_36_Critical();
end;

function export:f_box_HealthListener_v6_36_Damaged()
    local params, l0, l1;
    self:OnExit_box_HealthListener_v6_36_Damaged();
    params = self:OnEnter_box_IsValueNil_v3_25();
    l0 = self.box_HealthListener_v6_36;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|100907178", "100907178", "Intro_010_B20_AlarmFail", "box_HealthListener_v6_36.Damaged", "box_IsValueNil_v3_25.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_36_Downed()
    self:OnExit_box_HealthListener_v6_36_Downed();
end;

function export:f_box_HealthListener_v6_36_Healed()
    self:OnExit_box_HealthListener_v6_36_Healed();
end;

function export:f_box_HealthListener_v6_36_Killed()
    self:OnExit_box_HealthListener_v6_36_Killed();
end;

function export:f_box_HealthListener_v6_36_Revived()
    self:OnExit_box_HealthListener_v6_36_Revived();
end;

function export:f_box_OnceOnly_v3_4_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_OnceOnly_v3_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1125842053", "1125842053", "Intro_010_B20_AlarmFail", "box_OnceOnly_v3_4.Out", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_68_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySimpleAnimation_v2_40();
    l0 = self.box_PlaySimpleAnimation_v2_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|811119016", "811119016", "Intro_010_B20_AlarmFail", "box_IsEntityLoaded_v3_68.True", "box_PlaySimpleAnimation_v2_40.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_69_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySimpleAnimation_v2_41();
    l0 = self.box_PlaySimpleAnimation_v2_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|974012175", "974012175", "Intro_010_B20_AlarmFail", "box_IsEntityLoaded_v3_69.True", "box_PlaySimpleAnimation_v2_41.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_14();
    l0 = self.box_StateListener_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|552600095", "552600095", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_76.Out", "box_StateListener_v2_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_18();
    l0 = self.box_StateListener_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1025694638", "1025694638", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_76.Out", "box_StateListener_v2_18.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_76_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnWeaponFiredListener_v2_20();
    l0 = self.box_PawnWeaponFiredListener_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|697998703", "697998703", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_76.Out", "box_PawnWeaponFiredListener_v2_20.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_76_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_32();
    l0 = self.box_HealthListener_v6_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|400565318", "400565318", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_76.Out", "box_HealthListener_v6_32.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_10_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_31();
    l0 = self.box_OnceOnly_v3_10;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|937951107", "937951107", "Intro_010_B20_AlarmFail", "box_OnceOnly_v3_10.Out", "box_SetContextualStrategy_31.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_SpawnAI_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|869317641", "869317641", "Intro_010_B20_AlarmFail", "box_SpawnAI_21.Out", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_22();
    l0 = self.box_MultipleOR_38;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|891999319", "891999319", "Intro_010_B20_AlarmFail", "box_MultipleOR_38.Out", "box_HealthModifier_v2_22.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_74_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySimpleAnimation_v2_57();
    l0 = self.box_PlaySimpleAnimation_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|702696679", "702696679", "Intro_010_B20_AlarmFail", "box_IsEntityLoaded_v3_74.True", "box_PlaySimpleAnimation_v2_57.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_33_Out()
    local l0;
    self:OnExit_box_GetLocalPlayer_v2_33_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|892635174", "892635174", "Intro_010_B20_AlarmFail", "box_GetLocalPlayer_v2_33.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_64_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_75();
    l0 = self.box_Delay_v5_64;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|2023765499", "2023765499", "Intro_010_B20_AlarmFail", "box_Delay_v5_64.TimeElapsed", "box_IsEntityLoaded_v3_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_5();
    l0 = self.box_Delay_v5_34;
    l1 = self.box_Switch_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|783522679", "783522679", "Intro_010_B20_AlarmFail", "box_Delay_v5_34.TimeElapsed", "box_Switch_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_75_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySimpleAnimation_v2_62();
    l0 = self.box_PlaySimpleAnimation_v2_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1433586505", "1433586505", "Intro_010_B20_AlarmFail", "box_IsEntityLoaded_v3_75.True", "box_PlaySimpleAnimation_v2_62.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_73_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySimpleAnimation_v2_67();
    l0 = self.box_PlaySimpleAnimation_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1175336458", "1175336458", "Intro_010_B20_AlarmFail", "box_IsEntityLoaded_v3_73.True", "box_PlaySimpleAnimation_v2_67.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_RandomFloat_v2_66_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_66_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_64();
    l0 = self.box_Delay_v5_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1625441557", "1625441557", "Intro_010_B20_AlarmFail", "box_RandomFloat_v2_66.Out", "box_Delay_v5_64.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RandomFloat_v2_65_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_65_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_58();
    l0 = self.box_Delay_v5_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|16645235", "16645235", "Intro_010_B20_AlarmFail", "box_RandomFloat_v2_65.Out", "box_Delay_v5_58.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_26_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_26;
    l1 = self.box_OnceOnly_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1171494957", "1171494957", "Intro_010_B20_AlarmFail", "box_MultipleOR_26.Out", "box_OnceOnly_v3_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthModifier_v2_8_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|403546041", "403546041", "Intro_010_B20_AlarmFail", "box_HealthModifier_v2_8.Damaged", "box_Delay_v5_11.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetContextualStrategy_12_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_17();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1191069581", "1191069581", "Intro_010_B20_AlarmFail", "box_SetContextualStrategy_12.Out", "box_SetContextualStrategy_17.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_39_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_68();
    l0 = self.box_Delay_v5_39;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|705645161", "705645161", "Intro_010_B20_AlarmFail", "box_Delay_v5_39.TimeElapsed", "box_IsEntityLoaded_v3_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_18_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_18;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|514023222", "514023222", "Intro_010_B20_AlarmFail", "box_StateListener_v2_18.StateStart", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_14();
    l0 = self.box_StateListener_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1929886648", "1929886648", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_23.Out", "box_StateListener_v2_14.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnWeaponFiredListener_v2_20();
    l0 = self.box_PawnWeaponFiredListener_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|204502255", "204502255", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_23.Out", "box_PawnWeaponFiredListener_v2_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_32();
    l0 = self.box_HealthListener_v6_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|52302079", "52302079", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_23.Out", "box_HealthListener_v6_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_18();
    l0 = self.box_StateListener_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1736668588", "1736668588", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_23.Out", "box_StateListener_v2_18.Alert", clone:GetLuaBox(), l0:GetLuaBox());
    -- Alert
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_43();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|613684185", "613684185", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_42.Out", "box_RandomFloat_v2_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_45();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|387851970", "387851970", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_42.Out", "box_RandomFloat_v2_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_47();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|974420829", "974420829", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_42.Out", "box_RandomFloat_v2_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_51();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1202005096", "1202005096", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_42.Out", "box_RandomFloat_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_52();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1167222632", "1167222632", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_42.Out", "box_RandomFloat_v2_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|227827029", "227827029", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_42.Out", "box_OutputOrder_v2_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_36();
    l0 = self.box_MultipleOR_3;
    l1 = self.box_HealthListener_v6_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|356042532", "356042532", "Intro_010_B20_AlarmFail", "box_MultipleOR_3.Out", "box_HealthListener_v6_36.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_56();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|340415232", "340415232", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_60.Out", "box_RandomFloat_v2_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_63();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1708153703", "1708153703", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_60.Out", "box_RandomFloat_v2_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_65();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1393662408", "1393662408", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_60.Out", "box_RandomFloat_v2_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_66();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|333675874", "333675874", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_60.Out", "box_RandomFloat_v2_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_71_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySimpleAnimation_v2_49();
    l0 = self.box_PlaySimpleAnimation_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1176375323", "1176375323", "Intro_010_B20_AlarmFail", "box_IsEntityLoaded_v3_71.True", "box_PlaySimpleAnimation_v2_49.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_RandomFloat_v2_56_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_56_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_61();
    l0 = self.box_Delay_v5_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1361220634", "1361220634", "Intro_010_B20_AlarmFail", "box_RandomFloat_v2_56.Out", "box_Delay_v5_61.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_19_Out()
    self:OnExit_box_SetEntity_v2_19_Out();
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|556796432", "556796432", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_24.Out", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_33();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1585548640", "1585548640", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_24.Out", "box_GetLocalPlayer_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1618987384", "1618987384", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_24.Out", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_MultipleOR_27_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_27;
    l1 = self.box_OnceOnly_v3_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1737621219", "1737621219", "Intro_010_B20_AlarmFail", "box_MultipleOR_27.Out", "box_OnceOnly_v3_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1661966511", "1661966511", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_16.Out", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetFloat_v2_35_Out()
    self:OnExit_box_SetFloat_v2_35_Out();
end;

function export:f_box_HealthListener_v6_32_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_32;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|248445091", "248445091", "Intro_010_B20_AlarmFail", "box_HealthListener_v6_32.Downed", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_Delay_v5_58_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_74();
    l0 = self.box_Delay_v5_58;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|170975854", "170975854", "Intro_010_B20_AlarmFail", "box_Delay_v5_58.TimeElapsed", "box_IsEntityLoaded_v3_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|441803485", "441803485", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_6.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1917713218", "1917713218", "Intro_010_B20_AlarmFail", "box_OutputOrder_v2_6.Out", "box_OutputOrder_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_43_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_43_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_39();
    l0 = self.box_Delay_v5_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|293365834", "293365834", "Intro_010_B20_AlarmFail", "box_RandomFloat_v2_43.Out", "box_Delay_v5_39.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RandomFloat_v2_45_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_45_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|10132608", "10132608", "Intro_010_B20_AlarmFail", "box_RandomFloat_v2_45.Out", "box_Delay_v5_44.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetContextualStrategy_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_12();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1618273820", "1618273820", "Intro_010_B20_AlarmFail", "box_SetContextualStrategy_31.Out", "box_SetContextualStrategy_12.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_47_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_47_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_46();
    l0 = self.box_Delay_v5_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1467451301", "1467451301", "Intro_010_B20_AlarmFail", "box_RandomFloat_v2_47.Out", "box_Delay_v5_46.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_50_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_71();
    l0 = self.box_Delay_v5_50;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|719529577", "719529577", "Intro_010_B20_AlarmFail", "box_Delay_v5_50.TimeElapsed", "box_IsEntityLoaded_v3_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|33717592");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PawnWeaponFiredListener_v2_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [2] = "#ED455357",
        -- weaponClass,
        [3] = "Pistol",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|92187002");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_37_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 3,
        -- origin,
        [1] = "2099901692102317458",
        -- pawns,
        [2] = "#ED455357",
        -- value,
        [3] = 30,
    };
    return params;
end;

function export:OnEnter_box_PlaySimpleAnimation_v2_41()
    local params;
    params = {
        -- animation,
        [0] = [[animations\ai\stp\simpleanimation\generic\unsafe\aistp_unsafe-antagonize_-st_baseballbat_-f-skylar_01-loop.mab]],
        -- animPlayMode,
        [1] = 0,
        -- blendDuration,
        [2] = 1,
        -- loopAnim,
        [3] = false,
        -- speedScale,
        [4] = 1,
        -- target,
        [5] = "2104152312221025814",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_13()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103791064497280057",
    };
    return params;
end;

function export:OnEnter_box_PlaySimpleAnimation_v2_62()
    local params;
    params = {
        -- animation,
        [0] = [[animations\ai\stp\simpleanimation\generic\unsafe\aistp_unsafe-crouchinfear_-cr_noweap_-f_02-loop.mab]],
        -- animPlayMode,
        [1] = 0,
        -- blendDuration,
        [2] = 1,
        -- loopAnim,
        [3] = false,
        -- speedScale,
        [4] = 1,
        -- target,
        [5] = "2104152090008897016",
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|145859543");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_2_Out,
    });
    params = {
        -- A,
        [0] = self.damage_multiplier,
        -- B,
        [1] = self.player_damage_received,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|177791900");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_25_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_25_Yes,
    });
    params = {
        -- ent,
        [4] = self.damage_instigator,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|180244813");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_51_Out,
    });
    params = {
        -- Max,
        [0] = 2,
        -- Min,
        [1] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|237192475");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_63_Out,
    });
    params = {
        -- Max,
        [0] = 2,
        -- Min,
        [1] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|274917304");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_72_True,
    });
    params = {
        -- entityId,
        [0] = "2104152047602386382",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|346244302");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_1_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_1_A_is_True,
    });
    params = {
        -- A,
        [0] = self.near_static_meshes,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Switch_5()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_11()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_PlaySimpleAnimation_v2_57()
    local params;
    params = {
        -- animation,
        [0] = [[animations\ai\stp\simpleanimation\generic\unsafe\aistp_unsafe-antagonize_-st_baseballbat_-f-skylar_01-loop.mab]],
        -- animPlayMode,
        [1] = 0,
        -- blendDuration,
        [2] = 1,
        -- loopAnim,
        [3] = false,
        -- speedScale,
        [4] = 1,
        -- target,
        [5] = "2104152246473213460",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|538015172");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_28_Out,
    });
    params = {
        -- Float,
        [0] = self.player_damage_received,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|545543334");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_17_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104360297327334178",
        -- Group,
        [1] = "#8A5D8A51",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|636966010");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_70_True,
    });
    params = {
        -- entityId,
        [0] = "2104152169314797052",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#D2C95676",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|669435861");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_52_Out,
    });
    params = {
        -- Max,
        [0] = 2,
        -- Min,
        [1] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_36()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|754609240");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_68_True,
    });
    params = {
        -- entityId,
        [0] = "2104879144130057526",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|798014791");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_69_True,
    });
    params = {
        -- entityId,
        [0] = "2104152312221025814",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|817476014");
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
                [0] = self.f_box_OutputOrder_v2_76_Out_0,
                [1] = self.f_box_OutputOrder_v2_76_Out_1,
                [2] = self.f_box_OutputOrder_v2_76_Out_2,
                [3] = self.f_box_OutputOrder_v2_76_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_21()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103791044188459857",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1060368513");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_74_True,
    });
    params = {
        -- entityId,
        [0] = "2104152246473213460",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1073326196");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_33_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySimpleAnimation_v2_67()
    local params;
    params = {
        -- animation,
        [0] = [[animations\ai\stp\simpleanimation\generic\unsafe\aistp_unsafe-crouchinfear_-cr_noweap_-f_01-loop.mab]],
        -- animPlayMode,
        [1] = 0,
        -- blendDuration,
        [2] = 1,
        -- loopAnim,
        [3] = false,
        -- speedScale,
        [4] = 1,
        -- target,
        [5] = "2104151984390030793",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1135411705");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_75_True,
    });
    params = {
        -- entityId,
        [0] = "2104152090008897016",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1142334525");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_73_True,
    });
    params = {
        -- entityId,
        [0] = "2104151984390030793",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1184568094");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_66_Out,
    });
    params = {
        -- Max,
        [0] = 2,
        -- Min,
        [1] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1199640793");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_65_Out,
    });
    params = {
        -- Max,
        [0] = 2,
        -- Min,
        [1] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_PlaySimpleAnimation_v2_54()
    local params;
    params = {
        -- animation,
        [0] = [[animations\ai\stp\simpleanimation\generic\unsafe\aistp_unsafe-crouchinfear_-cr_noweap_-f_02-loop.mab]],
        -- animPlayMode,
        [1] = 0,
        -- blendDuration,
        [2] = 1,
        -- loopAnim,
        [3] = false,
        -- speedScale,
        [4] = 1,
        -- target,
        [5] = "2104152047602386382",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1261785327");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_8_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 3,
        -- origin,
        [1] = self.damage_instigator,
        -- pawns,
        [2] = "#ED455357",
        -- value,
        [3] = self._sld_Target_box_SetInteger_v2_28,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1295640250");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_12_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2101767540486207688",
        -- Group,
        [1] = "#C652DB56",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_18()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#D2C95676",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1375163805");
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
        -- Out,
        [0] = {
            connections = {
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
                [3] = self.f_box_OutputOrder_v2_23_Out_3,
                [4] = self.f_box_OutputOrder_v2_23_Out_4,
                [5] = self.f_box_OutputOrder_v2_23_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySimpleAnimation_v2_48()
    local params;
    params = {
        -- animation,
        [0] = [[animations\ai\stp\simpleanimation\generic\unsafe\aistp_unsafe-crouchinfear_-cr_noweap_-f_01-loop.mab]],
        -- animPlayMode,
        [1] = 0,
        -- blendDuration,
        [2] = 1,
        -- loopAnim,
        [3] = false,
        -- speedScale,
        [4] = 1,
        -- target,
        [5] = "2104152169314797052",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1427994876");
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
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
                [2] = self.f_box_OutputOrder_v2_42_Out_2,
                [3] = self.f_box_OutputOrder_v2_42_Out_3,
                [4] = self.f_box_OutputOrder_v2_42_Out_4,
                [5] = self.f_box_OutputOrder_v2_42_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1466542512");
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
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
                [2] = self.f_box_OutputOrder_v2_60_Out_2,
                [3] = self.f_box_OutputOrder_v2_60_Out_3,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1480093170");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_71_True,
    });
    params = {
        -- entityId,
        [0] = "2104152158162142714",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1536406502");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_56_Out,
    });
    params = {
        -- Max,
        [0] = 2,
        -- Min,
        [1] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1552101573");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_19_Out,
    });
    params = {
        -- Entity,
        [0] = self.damage_instigator,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1556547186");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
                [2] = self.f_box_OutputOrder_v2_24_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySimpleAnimation_v2_49()
    local params;
    params = {
        -- animation,
        [0] = [[animations\ai\stp\simpleanimation\generic\unsafe\aistp_unsafe-crouchinfear_-cr_noweap_-f_01-loop.mab]],
        -- animPlayMode,
        [1] = 0,
        -- blendDuration,
        [2] = 1,
        -- loopAnim,
        [3] = false,
        -- speedScale,
        [4] = 1,
        -- target,
        [5] = "2104152158162142714",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1640792694");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1665689622");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 3,
        -- origin,
        [1] = "2099901692102317458",
        -- pawns,
        [2] = "#ED455357",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1680694387");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_35_Out,
    });
    params = {
        -- Float,
        [0] = 10,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_32()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#B9FE6748",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1818759204");
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

function export:OnEnter_box_RandomFloat_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1967132061");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_43_Out,
    });
    params = {
        -- Max,
        [0] = 2,
        -- Min,
        [1] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_PlaySimpleAnimation_v2_40()
    local params;
    params = {
        -- animation,
        [0] = [[animations\ai\stp\simpleanimation\generic\unsafe\aistp_unsafe-crouchinfear_-cr_noweap_-f_02-loop.mab]],
        -- animPlayMode,
        [1] = 0,
        -- blendDuration,
        [2] = 1,
        -- loopAnim,
        [3] = false,
        -- speedScale,
        [4] = 1,
        -- target,
        [5] = "2104879144130057526",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|1984218916");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_45_Out,
    });
    params = {
        -- Max,
        [0] = 2,
        -- Min,
        [1] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_PlaySimpleAnimation_v2_53()
    local params;
    params = {
        -- animation,
        [0] = [[animations\ai\stp\simpleanimation\generic\unsafe\aistp_unsafe-antagonize_-st_baseballbat_-f-skylar_01-loop.mab]],
        -- animPlayMode,
        [1] = 0,
        -- blendDuration,
        [2] = 1,
        -- loopAnim,
        [3] = false,
        -- speedScale,
        [4] = 1,
        -- target,
        [5] = "2104879200153376094",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|2089709484");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_31_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2101755488359207434",
        -- Group,
        [1] = "#D2C95676",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_AlarmFail|2132159562");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_47_Out,
    });
    params = {
        -- Max,
        [0] = 2,
        -- Min,
        [1] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnExit_box_FloatArithmetics_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.player_damage_received = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_51_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_50;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_63_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_59;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self._sld_Target_box_SetInteger_v2_28 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_52_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_55;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_HealthListener_v6_36_Critical()
    local l0;
    l0 = self.box_HealthListener_v6_36;
    self.player_current_health = l0:GetDataOutValue(0);
    self.player_damage_received = l0:GetDataOutValue(1);
    self.damage_instigator = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_36_Damaged()
    local l0;
    l0 = self.box_HealthListener_v6_36;
    self.player_current_health = l0:GetDataOutValue(0);
    self.player_damage_received = l0:GetDataOutValue(1);
    self.damage_instigator = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_36_Downed()
    local l0;
    l0 = self.box_HealthListener_v6_36;
    self.damage_instigator = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_36_Healed()
    local l0;
    l0 = self.box_HealthListener_v6_36;
    self.player_current_health = l0:GetDataOutValue(0);
    self.player_damage_received = l0:GetDataOutValue(1);
    self.damage_instigator = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_36_Killed()
    local l0;
    l0 = self.box_HealthListener_v6_36;
    self.player_current_health = l0:GetDataOutValue(0);
    self.player_damage_received = l0:GetDataOutValue(1);
    self.damage_instigator = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_36_Revived()
    local l0;
    l0 = self.box_HealthListener_v6_36;
    self.damage_instigator = l0:GetDataOutValue(4);
end;

function export:OnExit_box_GetLocalPlayer_v2_33_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_66_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_64;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_65_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_58;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_56_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_61;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_35_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.damage_multiplier = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_43_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_39;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_45_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_44;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_47_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_46;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable_NPCAlarm" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Fail_NPCAlarm" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Fail_WorldLimits" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="near_static_meshes" AnchorDynType="0" DataTypeID="bool" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
