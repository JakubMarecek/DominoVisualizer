LUAC s -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/gfh/mis_580/omni_mis_580_b30.domino
-- User graph: OMNI_CarExplodeB30V2
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eCarID" Type="Nomad|entity{}" />
    <DataIn Name="eHurkID" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/BoobyTrapModifier.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetVehicleSpeed.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B30.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2720949847.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1588998170.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.OMNI_MIS_580_B30 = nil;
    Globals.OMNI_MIS_580_B30 = {
        eBLOGALCarB30 = nil,
        eBLOGALHurkB30 = nil,
        eTest = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B30.OMNI_CarExplodeB30V2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "FuckThisCar",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Enabled",
                delayed = false,
            },
            [1] = {
                name = "OkTheCarIsFucked",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "eCarID",
                type = "entity",
            },
            [1] = {
                name = "eHurkID",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Retry",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "ReasonId",
                type = "oasis",
            },
            [1] = {
                name = "Reload",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/BoobyTrapModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Disable",
            },
            [2] = {
                name = "Enable",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "vehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/ConsoleCommand_v3.lua")] = {
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
                name = "Execute",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Loop",
                type = "bool",
            },
            [1] = {
                name = "Name",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Parameter",
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
    metadataTable[GetPathID("Domino/System/Gate_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Close",
            },
            [1] = {
                name = "In",
            },
            [2] = {
                name = "Open",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Closed",
                delayed = false,
            },
            [1] = {
                name = "Opened",
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
                name = "initStateOpen",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/PlayDialog_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CancelQueued",
            },
            [1] = {
                name = "PlayDialog",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "FinishedInterrupted",
                delayed = true,
            },
            [2] = {
                name = "QueueCancelled",
                delayed = false,
            },
            [3] = {
                name = "Queued",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "StartedPriorityFailed",
                delayed = true,
            },
            [6] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "RelevancyTime",
                type = "float",
            },
            [2] = {
                name = "ReplayIfInterrupted",
                type = "bool",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "MessageId",
                type = "oasis",
            },
            [1] = {
                name = "MessageType",
                type = "int",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 3,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "OMNI_CarExplodeB30V2";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2";
    self.OkTheCarIsFucked = DummyFunction;
    self.Enabled = DummyFunction;
    self.bFastBeeb = false;
    self.bExplosionWarning = false;
    self.iNbTickNoSpeedB10 = 0;
    self.fCarSpeedB10 = 0;
    self.iSawItOnce = 0;
    self.bFuckThisCarNow = false;
    self.iNbOfTicks = 0;
    self.bSlowBeeb = false;
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|56507423");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_19_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
    self.box_Gate_v3_52 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|283855266");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_52_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_52_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_52_Out,
    });
    self.box_SoundModifier_v2_64 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|796683493");
    l0:SetConnections({
    });
    self.box_DisplayCustomUIMsg_v5_23 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|945636842");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_23_OnDisplay,
    });
    self.box_Gate_v3_24 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1042230013");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_24_Out,
    });
    self.box_ConsoleCommand_v3_11 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1263835316");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_11_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_11_Execute,
    });
    self.box_Gate_v3_7 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1665076036");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_7_Out,
    });
    self.box_PlayDialog_v6_39 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1811924579");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_39_Started,
    });
    self.box_Delay_v5_2 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1830118074");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_2_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_2_TimeElapsed,
    });
    self.box_ConsoleCommand_v3_45 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1929423728");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_45_Execute,
    });
    self.box_Delay_v5_63 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1935141277");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_63_TimeElapsed,
    });
    self.box_OnceOnly_v3_27 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1988418560");
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
                [0] = self.f_box_OnceOnly_v3_27_Out_0,
            },
            count = 1,
        },
        -- ResetOut,
        [1] = self.f_box_OnceOnly_v3_27_ResetOut,
    });
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|2021309539");
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
    self.box_OnceOnly_v3_55 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|2045440746");
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
                [0] = self.f_box_OnceOnly_v3_55_Out_0,
            },
            count = 1,
        },
    });
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|277852216", "277852216", "OMNI_CarExplodeB30V2", "Enable", "box_OutputOrder_v2_38.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:FuckThisCar()
    local params, l0;
    params = self:OnEnter_box_SetBoolean_v2_1();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1742885127", "1742885127", "OMNI_CarExplodeB30V2", "FuckThisCar", "box_SetBoolean_v2_1.True", self, l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_66_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_64();
    l0 = self.box_SoundModifier_v2_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1208058122", "1208058122", "OMNI_CarExplodeB30V2", "box_Simple_Node_66.Out", "box_SoundModifier_v2_64.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_19_Started()
    local l0;
    l0 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1417580174", "1417580174", "OMNI_CarExplodeB30V2", "box_Delay_v5_19.Started", "Enabled", l0:GetLuaBox(), self);
    self:Enabled();
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetVehicleSpeed_29();
    l0 = self.box_Delay_v5_19;
    l1 = Boxes[GetPathID("Domino/System/GetVehicleSpeed.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1531317519", "1531317519", "OMNI_CarExplodeB30V2", "box_Delay_v5_19.TimeElapsed", "box_GetVehicleSpeed_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_10_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_23();
    l0 = self.box_DisplayCustomUIMsg_v5_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1393838295", "1393838295", "OMNI_CarExplodeB30V2", "box_Compare_Boolean_10.A_is_False", "box_DisplayCustomUIMsg_v5_23.Display", clone:GetLuaBox(), l0:GetLuaBox());
    -- Display
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_28_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1044708902", "1044708902", "OMNI_CarExplodeB30V2", "box_SetBoolean_v2_28.Out", "box_OutputOrder_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_48();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1575107579", "1575107579", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_56.Out", "box_Compare_Floats_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_24();
    l0 = self.box_Gate_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1753766081", "1753766081", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_56.Out", "box_Gate_v3_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_52_Closed()
    local l0, l1;
    l0 = self.box_Gate_v3_52;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|189141129", "189141129", "OMNI_CarExplodeB30V2", "box_Gate_v3_52.Closed", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_52_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_52;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|455275993", "455275993", "OMNI_CarExplodeB30V2", "box_Gate_v3_52.Opened", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_Gate_v3_52;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|223628662", "223628662", "OMNI_CarExplodeB30V2", "box_Gate_v3_52.Out", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_1_Out()
    self:OnExit_box_SetBoolean_v2_1_Out();
end;

function export:f_box_Compare_Floats_48_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1735324599", "1735324599", "OMNI_CarExplodeB30V2", "box_Compare_Floats_48.A_gt_B", "box_OutputOrder_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_48_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_20();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|823436709", "823436709", "OMNI_CarExplodeB30V2", "box_Compare_Floats_48.A_le_B", "box_IntegerArithmetics_v2_20.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_34_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_34_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|691396000", "691396000", "OMNI_CarExplodeB30V2", "box_SetInteger_v2_34.Out", "box_OutputOrder_v2_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_6_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_31();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|926098108", "926098108", "OMNI_CarExplodeB30V2", "box_SetInteger_v2_6.Out", "box_SetBoolean_v2_31.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|99095591", "99095591", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_50.Out", "box_OnceOnly_v3_55.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|902597315", "902597315", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_50.Out", "box_OnceOnly_v3_27.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_Compare_Integers_13_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1747338525", "1747338525", "OMNI_CarExplodeB30V2", "box_Compare_Integers_13.A_ge_B", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetVehicleSpeed_29_Out()
    local params, l0;
    self:OnExit_box_GetVehicleSpeed_29_Out();
    l0 = Boxes[GetPathID("Domino/System/GetVehicleSpeed.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1668869123", "1668869123", "OMNI_CarExplodeB30V2", "box_GetVehicleSpeed_29.Out", "box_OutputOrder_v2_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1225032362", "1225032362", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_38.Out", "box_Delay_v5_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConsoleCommand_v3_11();
    l0 = self.box_ConsoleCommand_v3_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|209154284", "209154284", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_38.Out", "box_ConsoleCommand_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_38_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_63();
    l0 = self.box_Delay_v5_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|130508334", "130508334", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_38.Out", "box_Delay_v5_63.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BoobyTrapModifier_61();
    l0 = Boxes[GetPathID("Domino/System/BoobyTrapModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1025759181", "1025759181", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_40.Out", "box_BoobyTrapModifier_61.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_23();
    l0 = self.box_DisplayCustomUIMsg_v5_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|627994151", "627994151", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_40.Out", "box_DisplayCustomUIMsg_v5_23.Hide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hide
    l0:Exec(1, params);
end;

function export:f_box_DisplayCustomUIMsg_v5_23_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_17();
    l0 = self.box_DisplayCustomUIMsg_v5_23;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|526430508", "526430508", "OMNI_CarExplodeB30V2", "box_DisplayCustomUIMsg_v5_23.OnDisplay", "box_Compare_Boolean_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_54_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1368958086", "1368958086", "OMNI_CarExplodeB30V2", "box_Compare_Integers_54.A_ge_B", "box_OnceOnly_v3_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IntegerArithmetics_v2_20_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_20_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_34();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|632485043", "632485043", "OMNI_CarExplodeB30V2", "box_IntegerArithmetics_v2_20.Out", "box_SetInteger_v2_34.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_22();
    l0 = self.box_Gate_v3_24;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|770519659", "770519659", "OMNI_CarExplodeB30V2", "box_Gate_v3_24.Out", "box_Print_v2_22.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_62_Out()
    self:OnExit_box_SetBoolean_v2_62_Out();
end;

function export:f_box_ConsoleCommand_v3_11_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_45();
    l0 = self.box_ConsoleCommand_v3_11;
    l1 = self.box_ConsoleCommand_v3_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1893960391", "1893960391", "OMNI_CarExplodeB30V2", "box_ConsoleCommand_v3_11.Enabled", "box_ConsoleCommand_v3_45.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_11_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_24();
    l0 = self.box_ConsoleCommand_v3_11;
    l1 = self.box_Gate_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1563344794", "1563344794", "OMNI_CarExplodeB30V2", "box_ConsoleCommand_v3_11.Execute", "box_Gate_v3_24.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_31_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_31_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_28();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1715333688", "1715333688", "OMNI_CarExplodeB30V2", "box_SetBoolean_v2_31.Out", "box_SetBoolean_v2_28.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_47_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|913874230", "913874230", "OMNI_CarExplodeB30V2", "box_Compare_Integers_47.A_ge_B", "box_OnceOnly_v3_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleModifier_v2_25_OnSetAsDestructible()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_25();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|59138147", "59138147", "OMNI_CarExplodeB30V2", "box_VehicleModifier_v2_25.OnSetAsDestructible", "box_VehicleModifier_v2_25.SetExplosion", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetExplosion
    l0:Exec(17, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_25_OnSetExplosion()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_33();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|866913623", "866913623", "OMNI_CarExplodeB30V2", "box_VehicleModifier_v2_25.OnSetExplosion", "box_Compare_Boolean_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_21_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_21_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_6();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|541377475", "541377475", "OMNI_CarExplodeB30V2", "box_SetInteger_v2_21.Out", "box_SetInteger_v2_6.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_33_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_18();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1756420525", "1756420525", "OMNI_CarExplodeB30V2", "box_Compare_Boolean_33.A_is_False", "box_ActivityRetry_v2_18.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_33_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1670530866", "1670530866", "OMNI_CarExplodeB30V2", "box_Compare_Boolean_33.A_is_True", "box_OutputOrder_v2_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_21();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|886758520", "886758520", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_51.Out", "box_SetInteger_v2_21.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_17_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_7();
    l0 = self.box_Gate_v3_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1179644500", "1179644500", "OMNI_CarExplodeB30V2", "box_Compare_Boolean_17.A_is_True", "box_Gate_v3_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_39();
    l0 = self.box_Gate_v3_7;
    l1 = self.box_PlayDialog_v6_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1201749371", "1201749371", "OMNI_CarExplodeB30V2", "box_Gate_v3_7.Out", "box_PlayDialog_v6_39.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_54();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|2108007372", "2108007372", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_44.Out", "box_Compare_Integers_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_47();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|513939060", "513939060", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_44.Out", "box_Compare_Integers_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_13();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1380764082", "1380764082", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_44.Out", "box_Compare_Integers_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_39_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_PlayDialog_v6_39;
    l1 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1791372773", "1791372773", "OMNI_CarExplodeB30V2", "box_PlayDialog_v6_39.Started", "box_Delay_v5_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_2_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_7();
    l0 = self.box_Delay_v5_2;
    l1 = self.box_Gate_v3_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|352933995", "352933995", "OMNI_CarExplodeB30V2", "box_Delay_v5_2.Started", "box_Gate_v3_7.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_2_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_7();
    l0 = self.box_Delay_v5_2;
    l1 = self.box_Gate_v3_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1377357097", "1377357097", "OMNI_CarExplodeB30V2", "box_Delay_v5_2.TimeElapsed", "box_Gate_v3_7.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_66();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1489361248", "1489361248", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_65.Out", "box_Simple_Node_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|500635789", "500635789", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_65.Out", "OkTheCarIsFucked", clone:GetLuaBox(), self);
    self:OkTheCarIsFucked();
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_52();
    l0 = self.box_Gate_v3_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|79585907", "79585907", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_8.Out", "box_Gate_v3_52.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_25();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|209237149", "209237149", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_8.Out", "box_VehicleModifier_v2_25.SetAsDestructable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsDestructable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_45_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_24();
    l0 = self.box_ConsoleCommand_v3_45;
    l1 = self.box_Gate_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|643718754", "643718754", "OMNI_CarExplodeB30V2", "box_ConsoleCommand_v3_45.Execute", "box_Gate_v3_24.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_63_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_62();
    l0 = self.box_Delay_v5_63;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1765366842", "1765366842", "OMNI_CarExplodeB30V2", "box_Delay_v5_63.TimeElapsed", "box_SetBoolean_v2_62.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_27_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_52();
    l0 = self.box_OnceOnly_v3_27;
    l1 = self.box_Gate_v3_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1011370750", "1011370750", "OMNI_CarExplodeB30V2", "box_OnceOnly_v3_27.Out", "box_Gate_v3_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_27_ResetOut()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_52();
    l0 = self.box_OnceOnly_v3_27;
    l1 = self.box_Gate_v3_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|974951063", "974951063", "OMNI_CarExplodeB30V2", "box_OnceOnly_v3_27.ResetOut", "box_Gate_v3_52.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BoobyTrapModifier_61();
    l0 = Boxes[GetPathID("Domino/System/BoobyTrapModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1203704958", "1203704958", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_16.Out", "box_BoobyTrapModifier_61.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_10();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|381034273", "381034273", "OMNI_CarExplodeB30V2", "box_OutputOrder_v2_16.Out", "box_Compare_Boolean_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_MultipleOR_43;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1657101497", "1657101497", "OMNI_CarExplodeB30V2", "box_MultipleOR_43.Out", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_55_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_BoobyTrapModifier_61();
    l0 = self.box_OnceOnly_v3_55;
    l1 = Boxes[GetPathID("Domino/System/BoobyTrapModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|948312832", "948312832", "OMNI_CarExplodeB30V2", "box_OnceOnly_v3_55.Out", "box_BoobyTrapModifier_61.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|@stoop_steam_sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_66_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|142870413");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_10_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bFuckThisCarNow,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|236597958");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|257057099");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_52()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_BoobyTrapModifier_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BoobyTrapModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BoobyTrapModifier_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|292298085");
    l0:SetConnections({
    });
    params = {
        -- vehicleEntity,
        [0] = self.eCarID,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|342960415");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_1_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|551338678");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Floats_48_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_48_A_le_B,
    });
    params = {
        -- A,
        [0] = self.fCarSpeedB10,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|612491346");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_34_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|689699319");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_6_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|697871004");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|713456186");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_13_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iNbTickNoSpeedB10,
        -- B,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_GetVehicleSpeed_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetVehicleSpeed.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetVehicleSpeed_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|756466740");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetVehicleSpeed_29_Out,
    });
    params = {
        -- vehicleId,
        [0] = self.eCarID,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_64()
    local params;
    params = {
        -- Pawns,
        [0] = Globals.OMNI_MIS_580_B30.eBLOGALCarB30,
        -- SoundId,
        [1] = "2720949847",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|808062554");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
                [2] = self.f_box_OutputOrder_v2_38_Out_2,
            },
            count = 3,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|880424902");
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

function export:OnEnter_box_DisplayCustomUIMsg_v5_23()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Warning",
            item = "MIS_580_WARN_SpeedUp",
            id = "1031020",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|986463275");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_54_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iNbTickNoSpeedB10,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|990978260");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_20_Out,
    });
    params = {
        -- A,
        [0] = self.iNbTickNoSpeedB10,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_24()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_62()
    local params, l0;
    DrawTextToScreen("Comment: Explosion Warning ACTIVATED", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetBoolean_v2')-- Comment: Explosion Warning ACTIVATED");
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1128970060");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_62_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_11()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "DOMINO_MIS580_CheckCarSpeed_ON",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1269104029");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_31_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1323438535");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_47_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iNbTickNoSpeedB10,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1409743229");
    l0:SetConnections({
        -- OnSetAsDestructible,
        [3] = self.f_box_VehicleModifier_v2_25_OnSetAsDestructible,
        -- OnSetExplosion,
        [17] = self.f_box_VehicleModifier_v2_25_OnSetExplosion,
    });
    params = {
        -- targets,
        [0] = self.eCarID,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1512333922");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 1,
        -- float,
        [4] = self.fCarSpeedB10,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Car speed:",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1600215102");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_21_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1634737890");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_33_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_33_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bFuckThisCarNow,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1644884974");
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1646810302");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_17_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bExplosionWarning,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_7()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1731715324");
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

function export:OnEnter_box_PlayDialog_v6_39()
    local params;
    params = {
        -- Group,
        [0] = self.eHurkID,
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1588998170",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_2()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1840733139");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1915348564");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_45()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "DOMINO_MIS580_CheckCarSpeed_OFF",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_63()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 11,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|1956531981");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Fail",
            item = "MIS_580_CarExplode",
            id = "1021571",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B30.domino|@OMNI_CarExplodeB30V2|2004924066");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [2] = self.f_box_OutputOrder_v2_16_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bSlowBeeb = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bFuckThisCarNow = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_34_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iSawItOnce = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iNbOfTicks = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetVehicleSpeed_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetVehicleSpeed.lua")];
    self.fCarSpeedB10 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iNbTickNoSpeedB10 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_62_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bExplosionWarning = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bFastBeeb = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iNbTickNoSpeedB10 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:OkTheCarIsFucked()
    
end;
function export:Enabled()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="FuckThisCar" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Enabled" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="OkTheCarIsFucked" AnchorDynType="0" IsDelayed="1" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eCarID" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eHurkID" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
