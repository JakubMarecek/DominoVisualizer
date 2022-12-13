LUAC�5 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/treasurehunt/th_d301.domino
-- User graph: TH_D301_B10_main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        
        -- Load resources
        cboxRes:LoadResource([[108844920.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4011118943.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2067134060.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1980906118.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/TreasureHunt/TH_D301.TH_D301_B10_main.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnLeaveZone",
            },
        },
        controlInCount = 2,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua")] = {
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
                name = "PlayerDetected",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Success",
                delayed = false,
            },
            [4] = {
                name = "TimerExpired",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bIsTrigger",
                type = "bool",
            },
            [2] = {
                name = "bRequiresAllPlayer",
                type = "bool",
            },
            [3] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [4] = {
                name = "bUse2d_ProximityCheck",
                type = "bool",
            },
            [5] = {
                name = "bUseDetectionModifier",
                type = "bool",
            },
            [6] = {
                name = "eMarker",
                type = "entity",
            },
            [7] = {
                name = "eRadiusTarget",
                type = "entity",
            },
            [8] = {
                name = "eTrigger",
                type = "entity",
            },
            [9] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [10] = {
                name = "fObjectiveTimer",
                type = "float",
            },
            [11] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [12] = {
                name = "opt_Objective",
                type = "oasis",
            },
        },
        dataInCount = 13,
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
    metadataTable[GetPathID("Domino/System/ShimmerModifier_v2.lua")] = {
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "B",
                type = "float",
            },
            [1] = {
                name = "G",
                type = "float",
            },
            [2] = {
                name = "R",
                type = "float",
            },
            [3] = {
                name = "Speed",
                type = "float",
            },
            [4] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/StartCelebration.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Ended",
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
                name = "Preset",
                type = "genericdb",
            },
            [1] = {
                name = "TextId",
                type = "oasis",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/UniversalInterationListener.lua")] = {
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
                name = "Interacted",
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
                name = "usableEntityId",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "entityInteracted",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "TH_D301_B10_main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main";
    self.Eplayer = nil;
    self.IProgress = 0;
    self.IPlank = 0;
    self.BValveActivated = false;
    self.BObjective_repeat = false;
    self.Eplayercrunch = nil;
    self.Bvalveinteracted = false;
    self.DoorOpen = false;
    self.box_EntityStatusListener_71 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|9366228");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_71_Loaded,
    });
    self.box_UniversalInteractionModifier_v2_73 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|36585666");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_73_Disabled,
    });
    self.box_PositionModifier_v2_26 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|64457157");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_26_Done,
    });
    self.box_PositionModifier_v2_64 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|166251918");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_64_StartOut,
    });
    self.box_PositionModifier_v2_49 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|259937029");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_40 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|292664231");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_40_StartOut,
    });
    self.box_ShimmerModifier_v2_67 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|293540228");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_67_Enabled,
    });
    self.box_UniversalInteractionListener_51 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|298520988");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_51_Interacted,
    });
    self.box_SoundModifier_v2_52 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|329950082");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_50 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|365872893");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_27 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|401681472");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_68 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|509044966");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_68_StartOut,
    });
    self.box_ShimmerModifier_v2_19 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|529752168");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_19_Disabled,
    });
    self.box_UniversalInteractionModifier_v2_55 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|658219785");
    l0:SetConnections({
    });
    self.box_MultipleOR_89 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|666551797");
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
        [0] = self.f_box_MultipleOR_89_Out,
    });
    self.box_SoundModifier_v2_76 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|688117608");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_24 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|699414540");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_24_Out,
    });
    self.box_UniversalInteractionModifier_v2_13 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|761874146");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_33 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|846876775");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_53 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|860407405");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_53_Enabled,
    });
    self.box_StartCelebration_31 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|887955819");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_31_Ended,
    });
    self.box_MultipleOR_35 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|915671681");
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
        [0] = self.f_box_MultipleOR_35_Out,
    });
    self.box_SoundModifier_v2_66 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|961085829");
    l0:SetConnections({
    });
    self.box_ShimmerModifier_v2_84 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|975448382");
    l0:SetConnections({
    });
    self.box_UniversalInteractionListener_54 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1008727698");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_54_Interacted,
    });
    self.box_UniversalInteractionModifier_v2_61 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1024905428");
    l0:SetConnections({
    });
    self.box_ShimmerModifier_v2_20 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1038729757");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_20_Enabled,
    });
    self.box_ActivityInitialized_28 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1058842533");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_28_Out,
    });
    self.box_PositionModifier_v2_62 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1079331859");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_62_StartOut,
    });
    self.box_PositionModifier_v2_46 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1097656959");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_32 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1156920968");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_32_StartOut,
    });
    self.box_Gate_v3_39 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1160416741");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_39_Closed,
    });
    self.box_UniversalInteractionModifier_v2_60 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1318025461");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_60_Disabled,
    });
    self.box_NavLinkModifier_92 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1324967788");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_87 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1373959054");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_87_StartOut,
    });
    self.box_PositionModifier_v2_86 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1483103709");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_86_StartOut,
    });
    self.box_UniversalInteractionModifier_v2_12 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1510535366");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_12_Disabled,
    });
    self.box_Reach_GoTo_v3_47 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1600959561");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_47_Success,
    });
    self.box_PositionModifier_v2_5 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1724534862");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_5_StartOut,
    });
    self.box_ShimmerModifier_v2_78 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1786281434");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_78_Enabled,
    });
    self.box_UniversalInteractionListener_80 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1789644545");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_80_Interacted,
    });
    self.box_PositionModifier_v2_25 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1792427237");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_25_StartOut,
    });
    self.box_Delay_v5_63 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1798875029");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_63_TimeElapsed,
    });
    self.box_PositionModifier_v2_38 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1812554463");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_38_StartOut,
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1829049208");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_PositionModifier_v2_74 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1844723557");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_74_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_74_StartOut,
    });
    self.box_UniversalInteractionModifier_v2_48 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1917299730");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_48_Enabled,
    });
    self.box_ShimmerModifier_v2_69 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1938841462");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_37 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|2015234980");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_37_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_37_StartOut,
    });
    self.box_ShimmerModifier_v2_58 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|2032950363");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_58_Enabled,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|346561290", "346561290", "TH_D301_B10_main", "In", "box_OutputOrder_v2_16.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_34();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1189047898", "1189047898", "TH_D301_B10_main", "OnLeaveZone", "box_ActivityRetry_v2_34.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_90_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_85();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1743345547", "1743345547", "TH_D301_B10_main", "box_Simple_Node_90.Out", "box_Compare_Boolean_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_71_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_78();
    l0 = self.box_EntityStatusListener_71;
    l1 = self.box_ShimmerModifier_v2_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1286617364", "1286617364", "TH_D301_B10_main", "box_EntityStatusListener_71.Loaded", "box_ShimmerModifier_v2_78.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_73_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_82();
    l0 = self.box_UniversalInteractionModifier_v2_73;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|808092395", "808092395", "TH_D301_B10_main", "box_UniversalInteractionModifier_v2_73.Disabled", "box_OutputOrder_v2_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_26_Done()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_13();
    l0 = self.box_PositionModifier_v2_26;
    l1 = self.box_UniversalInteractionModifier_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|819820194", "819820194", "TH_D301_B10_main", "box_PositionModifier_v2_26.Done", "box_UniversalInteractionModifier_v2_13.ForceInteraction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceInteraction
    l1:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_57_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_59();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1071209978", "1071209978", "TH_D301_B10_main", "box_IsEntityLoaded_v3_57.True", "box_IsEntityLoaded_v3_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_43_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_30();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|725005576", "725005576", "TH_D301_B10_main", "box_ParticleSystem_v3_43.Started", "box_ParticleSystem_v3_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_43_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_30();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|846777301", "846777301", "TH_D301_B10_main", "box_ParticleSystem_v3_43.Stopped", "box_ParticleSystem_v3_30.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_64_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_62();
    l0 = self.box_PositionModifier_v2_64;
    l1 = self.box_PositionModifier_v2_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1032943380", "1032943380", "TH_D301_B10_main", "box_PositionModifier_v2_64.StartOut", "box_PositionModifier_v2_62.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_93_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_40();
    l0 = self.box_PositionModifier_v2_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1238092959", "1238092959", "TH_D301_B10_main", "box_IsEntityLoaded_v3_93.True", "box_PositionModifier_v2_40.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_82_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_74();
    l0 = self.box_PositionModifier_v2_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1462939596", "1462939596", "TH_D301_B10_main", "box_OutputOrder_v2_82.Out", "box_PositionModifier_v2_74.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_82_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_76();
    l0 = self.box_SoundModifier_v2_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|496817558", "496817558", "TH_D301_B10_main", "box_OutputOrder_v2_82.Out", "box_SoundModifier_v2_76.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_63();
    l0 = self.box_Delay_v5_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|2114534011", "2114534011", "TH_D301_B10_main", "box_OutputOrder_v2_42.Out", "box_Delay_v5_63.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_13();
    l0 = self.box_UniversalInteractionModifier_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|881041599", "881041599", "TH_D301_B10_main", "box_OutputOrder_v2_42.Out", "box_UniversalInteractionModifier_v2_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_85_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1816765773", "1816765773", "TH_D301_B10_main", "box_Compare_Boolean_85.A_is_False", "box_MultipleOR_89.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_30_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_45();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|39924458", "39924458", "TH_D301_B10_main", "box_ParticleSystem_v3_30.Started", "box_ParticleSystem_v3_45.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_30_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_45();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1907479568", "1907479568", "TH_D301_B10_main", "box_ParticleSystem_v3_30.Stopped", "box_ParticleSystem_v3_45.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_2_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|2076949869", "2076949869", "TH_D301_B10_main", "box_GetLocalPlayer_v2_2.Out", "box_OutputOrder_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_40_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_25();
    l0 = self.box_PositionModifier_v2_40;
    l1 = self.box_PositionModifier_v2_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1394891638", "1394891638", "TH_D301_B10_main", "box_PositionModifier_v2_40.StartOut", "box_PositionModifier_v2_25.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ShimmerModifier_v2_67_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_20();
    l0 = self.box_ShimmerModifier_v2_67;
    l1 = self.box_ShimmerModifier_v2_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|957059572", "957059572", "TH_D301_B10_main", "box_ShimmerModifier_v2_67.Enabled", "box_ShimmerModifier_v2_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_51_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_60();
    l0 = self.box_UniversalInteractionListener_51;
    l1 = self.box_UniversalInteractionModifier_v2_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1286942051", "1286942051", "TH_D301_B10_main", "box_UniversalInteractionListener_51.Interacted", "box_UniversalInteractionModifier_v2_60.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_44_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_22();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|998763005", "998763005", "TH_D301_B10_main", "box_ParticleSystem_v3_44.Started", "box_ParticleSystem_v3_22.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_44_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_22();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|3945564", "3945564", "TH_D301_B10_main", "box_ParticleSystem_v3_44.Stopped", "box_ParticleSystem_v3_22.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_8_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_93();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|382286334", "382286334", "TH_D301_B10_main", "box_IsEntityLoaded_v3_8.True", "box_IsEntityLoaded_v3_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_71();
    l0 = self.box_EntityStatusListener_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1859273708", "1859273708", "TH_D301_B10_main", "box_OutputOrder_v2_3.Out", "box_EntityStatusListener_71.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1175686219", "1175686219", "TH_D301_B10_main", "box_OutputOrder_v2_3.Out", "box_OutputOrder_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_67();
    l0 = self.box_ShimmerModifier_v2_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|2002723923", "2002723923", "TH_D301_B10_main", "box_OutputOrder_v2_3.Out", "box_ShimmerModifier_v2_67.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_47();
    l0 = self.box_Reach_GoTo_v3_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|171493728", "171493728", "TH_D301_B10_main", "box_OutputOrder_v2_3.Out", "box_Reach_GoTo_v3_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_48();
    l0 = self.box_UniversalInteractionModifier_v2_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1984190507", "1984190507", "TH_D301_B10_main", "box_OutputOrder_v2_3.Out", "box_UniversalInteractionModifier_v2_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_68_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_27();
    l0 = self.box_PositionModifier_v2_68;
    l1 = self.box_PositionModifier_v2_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|871108640", "871108640", "TH_D301_B10_main", "box_PositionModifier_v2_68.StartOut", "box_PositionModifier_v2_27.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ShimmerModifier_v2_19_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_77();
    l0 = self.box_ShimmerModifier_v2_19;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1807908977", "1807908977", "TH_D301_B10_main", "box_ShimmerModifier_v2_19.Disabled", "box_ParticleSystem_v3_77.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_23_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_44();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1977667373", "1977667373", "TH_D301_B10_main", "box_ParticleSystem_v3_23.Started", "box_ParticleSystem_v3_44.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_23_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_44();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|626958378", "626958378", "TH_D301_B10_main", "box_ParticleSystem_v3_23.Stopped", "box_ParticleSystem_v3_44.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_89_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_73();
    l0 = self.box_MultipleOR_89;
    l1 = self.box_UniversalInteractionModifier_v2_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1967177584", "1967177584", "TH_D301_B10_main", "box_MultipleOR_89.Out", "box_UniversalInteractionModifier_v2_73.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_11();
    l0 = self.box_RemoveEntity_v2_24;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|776691988", "776691988", "TH_D301_B10_main", "box_RemoveEntity_v2_24.Out", "box_ActivityEnd_11.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_14_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_18();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|867781380", "867781380", "TH_D301_B10_main", "box_ParticleSystem_v3_14.Started", "box_ParticleSystem_v3_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_15();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|795584183", "795584183", "TH_D301_B10_main", "box_OutputOrder_v2_16.Out", "box_IsEntityLoaded_v3_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|621703305", "621703305", "TH_D301_B10_main", "box_OutputOrder_v2_16.Out", "box_ActivityAcknowledgeGate_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_UniversalInteractionModifier_v2_53_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_61();
    l0 = self.box_UniversalInteractionModifier_v2_53;
    l1 = self.box_UniversalInteractionModifier_v2_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1920578517", "1920578517", "TH_D301_B10_main", "box_UniversalInteractionModifier_v2_53.Enabled", "box_UniversalInteractionModifier_v2_61.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_15_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_57();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|734977086", "734977086", "TH_D301_B10_main", "box_IsEntityLoaded_v3_15.True", "box_IsEntityLoaded_v3_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_31_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_24();
    l0 = self.box_StartCelebration_31;
    l1 = self.box_RemoveEntity_v2_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|227955964", "227955964", "TH_D301_B10_main", "box_StartCelebration_31.Ended", "box_RemoveEntity_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_9_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_14();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|652314007", "652314007", "TH_D301_B10_main", "box_ParticleSystem_v3_9.Started", "box_ParticleSystem_v3_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_35_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_35;
    l1 = self.box_ActivityInitialized_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|691078079", "691078079", "TH_D301_B10_main", "box_MultipleOR_35.Out", "box_ActivityInitialized_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_IsEntityLoaded_v3_59_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_8();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1505511669", "1505511669", "TH_D301_B10_main", "box_IsEntityLoaded_v3_59.True", "box_IsEntityLoaded_v3_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_77_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_79();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|986787661", "986787661", "TH_D301_B10_main", "box_ParticleSystem_v3_77.Started", "box_ParticleSystem_v3_79.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_22_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_43();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1486039414", "1486039414", "TH_D301_B10_main", "box_ParticleSystem_v3_22.Started", "box_ParticleSystem_v3_43.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_22_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_43();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1207475169", "1207475169", "TH_D301_B10_main", "box_ParticleSystem_v3_22.Stopped", "box_ParticleSystem_v3_43.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_54_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_12();
    l0 = self.box_UniversalInteractionListener_54;
    l1 = self.box_UniversalInteractionModifier_v2_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|918914393", "918914393", "TH_D301_B10_main", "box_UniversalInteractionListener_54.Interacted", "box_UniversalInteractionModifier_v2_12.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_79_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_75();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1069841673", "1069841673", "TH_D301_B10_main", "box_ParticleSystem_v3_79.Started", "box_ParticleSystem_v3_75.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_20_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_58();
    l0 = self.box_ShimmerModifier_v2_20;
    l1 = self.box_ShimmerModifier_v2_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1397604058", "1397604058", "TH_D301_B10_main", "box_ShimmerModifier_v2_20.Enabled", "box_ShimmerModifier_v2_58.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_ActivityInitialized_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1957824003", "1957824003", "TH_D301_B10_main", "box_ActivityInitialized_28.Out", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_62_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_68();
    l0 = self.box_PositionModifier_v2_62;
    l1 = self.box_PositionModifier_v2_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|276320930", "276320930", "TH_D301_B10_main", "box_PositionModifier_v2_62.StartOut", "box_PositionModifier_v2_68.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_54();
    l0 = self.box_UniversalInteractionListener_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1522615446", "1522615446", "TH_D301_B10_main", "box_OutputOrder_v2_17.Out", "box_UniversalInteractionListener_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_39();
    l0 = self.box_Gate_v3_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|884544409", "884544409", "TH_D301_B10_main", "box_OutputOrder_v2_17.Out", "box_Gate_v3_39.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_32_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_38();
    l0 = self.box_PositionModifier_v2_32;
    l1 = self.box_PositionModifier_v2_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|336049105", "336049105", "TH_D301_B10_main", "box_PositionModifier_v2_32.StartOut", "box_PositionModifier_v2_38.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_39_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_51();
    l0 = self.box_Gate_v3_39;
    l1 = self.box_UniversalInteractionListener_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|2067439312", "2067439312", "TH_D301_B10_main", "box_Gate_v3_39.Closed", "box_UniversalInteractionListener_51.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_60_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_UniversalInteractionModifier_v2_60;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1867916546", "1867916546", "TH_D301_B10_main", "box_UniversalInteractionModifier_v2_60.Disabled", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_86();
    l0 = self.box_PositionModifier_v2_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1846217743", "1846217743", "TH_D301_B10_main", "box_OutputOrder_v2_65.Out", "box_PositionModifier_v2_86.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_7();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|537462390", "537462390", "TH_D301_B10_main", "box_OutputOrder_v2_65.Out", "box_ParticleSystem_v3_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_50();
    l0 = self.box_SoundModifier_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1024849853", "1024849853", "TH_D301_B10_main", "box_OutputOrder_v2_65.Out", "box_SoundModifier_v2_50.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_65_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_84();
    l0 = self.box_ShimmerModifier_v2_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1790946742", "1790946742", "TH_D301_B10_main", "box_OutputOrder_v2_65.Out", "box_ShimmerModifier_v2_84.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_87_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_5();
    l0 = self.box_PositionModifier_v2_87;
    l1 = self.box_PositionModifier_v2_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1293728458", "1293728458", "TH_D301_B10_main", "box_PositionModifier_v2_87.StartOut", "box_PositionModifier_v2_5.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_86_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_87();
    l0 = self.box_PositionModifier_v2_86;
    l1 = self.box_PositionModifier_v2_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|330409024", "330409024", "TH_D301_B10_main", "box_PositionModifier_v2_86.StartOut", "box_PositionModifier_v2_87.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_12_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_2();
    l0 = self.box_UniversalInteractionModifier_v2_12;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1313344761", "1313344761", "TH_D301_B10_main", "box_UniversalInteractionModifier_v2_12.Disabled", "box_GetLocalPlayer_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_47_Success()
    local params, l0, l1;
    params = self:OnEnter_box_StartCelebration_31();
    l0 = self.box_Reach_GoTo_v3_47;
    l1 = self.box_StartCelebration_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|581822542", "581822542", "TH_D301_B10_main", "box_Reach_GoTo_v3_47.Success", "box_StartCelebration_31.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_4();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|308479396", "308479396", "TH_D301_B10_main", "box_OutputOrder_v2_1.Out", "box_SetBoolean_v2_4.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_52();
    l0 = self.box_SoundModifier_v2_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|288851741", "288851741", "TH_D301_B10_main", "box_OutputOrder_v2_1.Out", "box_SoundModifier_v2_52.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_66();
    l0 = self.box_SoundModifier_v2_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|213020337", "213020337", "TH_D301_B10_main", "box_OutputOrder_v2_1.Out", "box_SoundModifier_v2_66.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_69();
    l0 = self.box_ShimmerModifier_v2_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|518764449", "518764449", "TH_D301_B10_main", "box_OutputOrder_v2_1.Out", "box_ShimmerModifier_v2_69.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_7_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_9();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1821061399", "1821061399", "TH_D301_B10_main", "box_ParticleSystem_v3_7.Started", "box_ParticleSystem_v3_9.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_21_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_36();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|394322383", "394322383", "TH_D301_B10_main", "box_ParticleSystem_v3_21.Started", "box_ParticleSystem_v3_36.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_21_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_36();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|293665139", "293665139", "TH_D301_B10_main", "box_ParticleSystem_v3_21.Stopped", "box_ParticleSystem_v3_36.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_5_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_32();
    l0 = self.box_PositionModifier_v2_5;
    l1 = self.box_PositionModifier_v2_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|595745330", "595745330", "TH_D301_B10_main", "box_PositionModifier_v2_5.StartOut", "box_PositionModifier_v2_32.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_45_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_21();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1904156586", "1904156586", "TH_D301_B10_main", "box_ParticleSystem_v3_45.Started", "box_ParticleSystem_v3_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_45_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_21();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1605239869", "1605239869", "TH_D301_B10_main", "box_ParticleSystem_v3_45.Stopped", "box_ParticleSystem_v3_21.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_75_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_81();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|462510913", "462510913", "TH_D301_B10_main", "box_ParticleSystem_v3_75.Started", "box_ParticleSystem_v3_81.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_78_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_80();
    l0 = self.box_ShimmerModifier_v2_78;
    l1 = self.box_UniversalInteractionListener_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1076075816", "1076075816", "TH_D301_B10_main", "box_ShimmerModifier_v2_78.Enabled", "box_UniversalInteractionListener_80.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_80_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_83();
    l0 = self.box_UniversalInteractionListener_80;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|641134337", "641134337", "TH_D301_B10_main", "box_UniversalInteractionListener_80.Interacted", "box_SetBoolean_v2_83.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_25_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_64();
    l0 = self.box_PositionModifier_v2_25;
    l1 = self.box_PositionModifier_v2_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|2107752429", "2107752429", "TH_D301_B10_main", "box_PositionModifier_v2_25.StartOut", "box_PositionModifier_v2_64.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_63_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_Delay_v5_63;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1346565920", "1346565920", "TH_D301_B10_main", "box_Delay_v5_63.TimeElapsed", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_38_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_37();
    l0 = self.box_PositionModifier_v2_38;
    l1 = self.box_PositionModifier_v2_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1548425411", "1548425411", "TH_D301_B10_main", "box_PositionModifier_v2_38.StartOut", "box_PositionModifier_v2_37.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|128386902", "128386902", "TH_D301_B10_main", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1601810338", "1601810338", "TH_D301_B10_main", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PositionModifier_v2_74_Done()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_92();
    l0 = self.box_PositionModifier_v2_74;
    l1 = self.box_NavLinkModifier_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1388266690", "1388266690", "TH_D301_B10_main", "box_PositionModifier_v2_74.Done", "box_NavLinkModifier_92.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_74_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_19();
    l0 = self.box_PositionModifier_v2_74;
    l1 = self.box_ShimmerModifier_v2_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1753652334", "1753652334", "TH_D301_B10_main", "box_PositionModifier_v2_74.StartOut", "box_ShimmerModifier_v2_19.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_4_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|373904017", "373904017", "TH_D301_B10_main", "box_SetBoolean_v2_4.Out", "box_OutputOrder_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_48_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_53();
    l0 = self.box_UniversalInteractionModifier_v2_48;
    l1 = self.box_UniversalInteractionModifier_v2_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1975101124", "1975101124", "TH_D301_B10_main", "box_UniversalInteractionModifier_v2_48.Enabled", "box_UniversalInteractionModifier_v2_53.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_37_Done()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_23();
    l0 = self.box_PositionModifier_v2_37;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1004241269", "1004241269", "TH_D301_B10_main", "box_PositionModifier_v2_37.Done", "box_ParticleSystem_v3_23.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_37_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_23();
    l0 = self.box_PositionModifier_v2_37;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1668869057", "1668869057", "TH_D301_B10_main", "box_PositionModifier_v2_37.StartOut", "box_ParticleSystem_v3_23.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_83_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_83_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|2072157899", "2072157899", "TH_D301_B10_main", "box_SetBoolean_v2_83.Out", "box_MultipleOR_89.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ShimmerModifier_v2_58_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_55();
    l0 = self.box_ShimmerModifier_v2_58;
    l1 = self.box_UniversalInteractionModifier_v2_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|189174780", "189174780", "TH_D301_B10_main", "box_ShimmerModifier_v2_58.Enabled", "box_UniversalInteractionModifier_v2_55.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_46();
    l0 = self.box_PositionModifier_v2_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1543882759", "1543882759", "TH_D301_B10_main", "box_OutputOrder_v2_29.Out", "box_PositionModifier_v2_46.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_33();
    l0 = self.box_PositionModifier_v2_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|505316257", "505316257", "TH_D301_B10_main", "box_OutputOrder_v2_29.Out", "box_PositionModifier_v2_33.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_49();
    l0 = self.box_PositionModifier_v2_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|559745162", "559745162", "TH_D301_B10_main", "box_OutputOrder_v2_29.Out", "box_PositionModifier_v2_49.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_26();
    l0 = self.box_PositionModifier_v2_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1913741306", "1913741306", "TH_D301_B10_main", "box_OutputOrder_v2_29.Out", "box_PositionModifier_v2_26.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_90();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|138857095", "138857095", "TH_D301_B10_main", "box_OutputOrder_v2_29.Out", "box_Simple_Node_90.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|@completion");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_90_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_71()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108306925994120816",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_73()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108306925994120816",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_26()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2106965200061092386",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108628584785530929",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|126639281");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_57_True,
    });
    params = {
        -- entityId,
        [0] = "2106785044002522691",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|148123951");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_43_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_43_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109080304950978352",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_64()
    local params;
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2108139374934756422",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2106785037899810369",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|170291874");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_93_True,
    });
    params = {
        -- entityId,
        [0] = "2108306971531679369",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|213030368");
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
                [0] = self.f_box_OutputOrder_v2_82_Out_0,
                [1] = self.f_box_OutputOrder_v2_82_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|255598626");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|258357712");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_85_A_is_False,
    });
    params = {
        -- A,
        [0] = self.DoorOpen,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|258991870");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_30_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_30_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109080317340952376",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_49()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2106965198676972062",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2106785044002522691",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|284734899");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_40()
    local params;
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2108139124912294816",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107628718330485121",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_67()
    local params;
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2107231437351552921",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_51()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2107231437351552921",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|307021470");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_44_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_44_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109080304953075506",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_52()
    local params;
    params = {
        -- Pawns,
        [0] = "2108237834344218104",
        -- SoundId,
        [1] = "2067134060",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_50()
    local params;
    params = {
        -- Pawns,
        [0] = "2108237820645621238",
        -- SoundId,
        [1] = "4011118943",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|374329197");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_8_True,
    });
    params = {
        -- entityId,
        [0] = "2108628584785530929",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|398620455");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
                [3] = self.f_box_OutputOrder_v2_3_Out_3,
                [4] = self.f_box_OutputOrder_v2_3_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_27()
    local params;
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2108030806669664968",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108030789393326789",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_68()
    local params;
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2108030808223654604",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108030776305001156",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_19()
    local params;
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2108306925994120816",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|545443628");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_23_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_23_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109080309663278902",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|627691922");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109080317340952378",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|648596638");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_55()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107628718330485121",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_76()
    local params;
    params = {
        -- Pawns,
        [0] = "2108446453841019224",
        -- SoundId,
        [1] = "1980906118",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_24()
    local params;
    params = {
        -- Group,
        [0] = "2106964972662706692",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|734630065");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109079898095101718",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_13()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- interactor,
        [2] = self.Eplayer,
        -- state,
        [3] = true,
        -- usableEntity,
        [4] = "2107628718330485121",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|817846619");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_14_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109079908287260442",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|839601353");
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
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_33()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2106965190886052378",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2106785037899810369",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_53()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107063584524600258",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|879350481");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_15_True,
    });
    params = {
        -- entityId,
        [0] = "2107628718330485121",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_31()
    local params;
    params = {
        -- Preset,
        [0] = "9015219471541668",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|892522618");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_9_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109079911894361884",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|928531175");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_59_True,
    });
    params = {
        -- entityId,
        [0] = "2106785037899810369",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|932083452");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_77_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109079903990195992",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|950215715");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_22_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_22_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109080309661181748",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_66()
    local params;
    params = {
        -- Pawns,
        [0] = "2108237848294473210",
        -- SoundId,
        [1] = "108844920",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_84()
    local params;
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2107231437351552921",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_54()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2107063584524600258",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1011866557");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_79_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109079490146608906",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_61()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108306925994120816",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_20()
    local params;
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2107063584524600258",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_62()
    local params;
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2108139376631352394",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2106785044002522691",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_46()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2108139122240522691",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107628718330485121",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1112293653");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_32()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2107242434602745484",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107241560612548387",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_39()
    local params;
    params = {
        -- initStateOpen,
        [0] = self.BObjective_repeat,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1203458645");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_60()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107231437351552921",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_92()
    local params;
    params = {
        -- Entity,
        [0] = "2109899305895594863",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1336157981");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
                [2] = self.f_box_OutputOrder_v2_65_Out_2,
                [3] = self.f_box_OutputOrder_v2_65_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_87()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2109747768999304934",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109747604725194457",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_86()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2109747769001402090",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109747606436470491",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_12()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107063584524600258",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1548014955");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109079917401483038",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_47()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresAllPlayer,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- bUse2d_ProximityCheck,
        [4] = true,
        -- bUseDetectionModifier,
        [5] = false,
        -- eMarker,
        [6] = "2107921107660052575",
        -- eTrigger,
        [8] = "2106965540732949043",
        -- fDistanceFromTarget,
        [9] = 5,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "D3_TreasureHunt_01",
            item = "THD301_Objective_04",
            id = "1004223",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1618328933");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
                [2] = self.f_box_OutputOrder_v2_1_Out_2,
                [3] = self.f_box_OutputOrder_v2_1_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1696560588");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_7_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109079552656418572",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1711279122");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_21_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_21_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109080256510961452",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_5()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2107628775148624266",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107241552689508130",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1727248708");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_45_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_45_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109080300481947438",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1763206075");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_75_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109079889245120276",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_78()
    local params;
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2108306925994120816",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_80()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2108306925994120816",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_25()
    local params;
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2108139373701631042",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108628584785530929",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_63()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_38()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2108030811159667412",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108030789393326789",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_74()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108306973962278541",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109897560129806427",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|1899485972");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_4_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_48()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107231437351552921",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_69()
    local params;
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2107063584524600258",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_37()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2108030811157570256",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108030776305001156",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|2020935219");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_83_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_58()
    local params;
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2108306925994120816",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D301.domino|@TH_D301_B10_main|2114875714");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
                [2] = self.f_box_OutputOrder_v2_29_Out_2,
                [3] = self.f_box_OutputOrder_v2_29_Out_3,
                [4] = self.f_box_OutputOrder_v2_29_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.Eplayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.BValveActivated = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_83_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.DoorOpen = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
