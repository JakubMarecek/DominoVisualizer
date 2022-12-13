LUACݶ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni61/uni61_937/uni61_937_tracker.domino
-- User graph: UNI61_937_Tracker
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
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/GetPreconditionState.lua");
        cboxRes:RegisterBox("Domino/System/AI/PreconditionListener.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1310437456.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3191019460.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1725927567.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1291373793.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2019942046.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI61/UNI61_937/UNI61_937_Tracker.UNI61_937_Tracker.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")] = {
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
                name = "MarkerTypeId",
                type = "database",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "ProgressDisplayType",
                type = "int",
            },
            [3] = {
                name = "TotalProgress",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")] = {
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
                name = "Progress",
                type = "int",
            },
            [2] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/GetPreconditionState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NotValid",
                delayed = false,
            },
            [1] = {
                name = "Valid",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "PreconditionId",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/PreconditionListener.lua")] = {
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
                name = "PreconditionMet",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "PreconditionId",
                type = "string",
            },
            [2] = {
                name = "TestOnEnable",
                type = "bool",
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
    self._name = "UNI61_937_Tracker";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker";
    self.PlayerVehicle = nil;
    self.LocalPlayer = nil;
    self.VehicleType = "";
    self.ProgressID = 0;
    self.var_i_DestroyedMarkedSilos = 15;
    self.AllMyFriendlyPlayers = nil;
    self.box_RequestPhoneCall_v2_114 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|43768016");
    l0:SetConnections({
    });
    self.box_MultipleOR_104 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|128747237");
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
        [0] = self.f_box_MultipleOR_104_Out,
    });
    self.box_OnceOnly_v3_31 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|131141312");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_31_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_58 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|185739814");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_58_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|244578679");
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
        [0] = self.f_box_MultipleOR_56_Out,
    });
    self.box_PreconditionListener_22 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|365098293");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_22_PreconditionMet,
    });
    self.box_OnceOnly_v3_69 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|379746845");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_69_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_123 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|398243883");
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
        [0] = self.f_box_MultipleOR_123_Out,
    });
    self.box_OnceOnly_v3_42 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|424766054");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_42_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|429972614");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 15,
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
        [0] = self.f_box_MultipleOR_46_Out,
    });
    self.box_Delay_v5_67 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|441898337");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_67_TimeElapsed,
    });
    self.box_OnceOnly_v3_53 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|460441721");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_53_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_32 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|490159775");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_32_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_95 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|494206514");
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
        [0] = self.f_box_MultipleOR_95_Out,
    });
    self.box_OnceOnly_v3_47 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|496388695");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_47_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_75 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|522571836");
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
        [0] = self.f_box_MultipleOR_75_Out,
    });
    self.box_ProximityRadiusListener_v3_130 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|551225146");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_130_AllFar,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|561235525");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_PreconditionListener_7 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|574560250");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_7_PreconditionMet,
    });
    self.box_RequestPhoneCall_v2_120 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|660136075");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_120_Completed,
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|742544346");
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
        [0] = self.f_box_MultipleOR_33_Out,
    });
    self.box_OnceOnly_v3_110 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|787660002");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_110_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_121 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|817846157");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_121_TimeElapsed,
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|908614606");
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
        [0] = self.f_box_MultipleOR_62_Out,
    });
    self.box_PreconditionListener_6 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|914006735");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_6_PreconditionMet,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|927533380");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|935973953");
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
    self.box_Switch_27 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|969003063");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 15,
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
                [7] = self.f_box_Switch_27_Output_7,
            },
            count = 15,
        },
    });
    self.box_PreconditionListener_98 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1012319583");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_98_PreconditionMet,
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1038551388");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
    self.box_StartCelebration_124 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1048135852");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_124_Ended,
    });
    self.box_PreconditionListener_38 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1095683519");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_38_PreconditionMet,
    });
    self.box_OnceOnly_v3_18 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1097580084");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_18_Out_0,
            },
            count = 2,
        },
    });
    self.box_PreconditionListener_89 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1102433990");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_89_PreconditionMet,
    });
    self.box_OnceOnly_v3_106 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1157084921");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_106_Out_0,
            },
            count = 2,
        },
    });
    self.box_PreconditionListener_97 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1174504370");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_97_PreconditionMet,
    });
    self.box_MultipleOR_87 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1254441869");
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
        [0] = self.f_box_MultipleOR_87_Out,
    });
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1340464186");
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
    self.box_PreconditionListener_45 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1387558935");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_45_PreconditionMet,
    });
    self.box_PreconditionListener_60 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1421128667");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_60_PreconditionMet,
    });
    self.box_OnceOnly_v3_103 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1453203941");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_103_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_29 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1459065008");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_29_Out_0,
            },
            count = 2,
        },
    });
    self.box_RequestPhoneCall_v2_115 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1476415801");
    l0:SetConnections({
        -- Out,
        [3] = self.f_box_RequestPhoneCall_v2_115_Out,
    });
    self.box_OnceOnly_v3_73 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1488057925");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_73_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_100 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1557505492");
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
        [0] = self.f_box_MultipleOR_100_Out,
    });
    self.box_PreconditionListener_66 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1576472243");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_66_PreconditionMet,
    });
    self.box_MultipleOR_44 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1594771392");
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
    self.box_MultipleOR_92 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1652836239");
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
        [0] = self.f_box_MultipleOR_92_Out,
    });
    self.box_RequestPhoneCall_v2_119 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1688664855");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_132 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1709060910");
    l0:SetConnections({
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_132_AllNear,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1718268999");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_ActivityAcknowledgeGate_72 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1735207887");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_72_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_72_Reloaded,
    });
    self.box_PreconditionListener_86 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1762647899");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_86_PreconditionMet,
    });
    self.box_PreconditionListener_30 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1797959062");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_30_PreconditionMet,
    });
    self.box_PreconditionListener_99 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1829216505");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_99_PreconditionMet,
    });
    self.box_PreconditionListener_112 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1849761158");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_112_PreconditionMet,
    });
    self.box_OnceOnly_v3_93 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1855354914");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_93_Out_0,
            },
            count = 2,
        },
    });
    self.box_ActivityInitialized_40 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1884452095");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_40_Out,
    });
    self.box_MultipleOR_51 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1918241592");
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
        [0] = self.f_box_MultipleOR_51_Out,
    });
    self.box_RequestPhoneCall_v2_113 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1927443729");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_3 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1961120386");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_3_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_63 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1997583498");
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
        [0] = self.f_box_MultipleOR_63_Out,
    });
    self.box_PreconditionListener_68 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2070269907");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_68_PreconditionMet,
    });
    self.box_OnceOnly_v3_49 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2121975547");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_49_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_94 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2126547038");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_94_Out_0,
            },
            count = 2,
        },
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2102865034", "2102865034", "UNI61_937_Tracker", "In", "box_ActivityAcknowledgeGate_72.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_85_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1571467382", "1571467382", "UNI61_937_Tracker", "box_Simple_Node_85.Out", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2037090555", "2037090555", "UNI61_937_Tracker", "box_Simple_Node_85.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_142_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|848182279", "848182279", "UNI61_937_Tracker", "box_Simple_Node_142.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 9);
    l0 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1011996830", "1011996830", "UNI61_937_Tracker", "box_Simple_Node_142.Out", "box_MultipleOR_56.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_143_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1033556280", "1033556280", "UNI61_937_Tracker", "box_Simple_Node_143.Out", "box_MultipleOR_87.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|984086797", "984086797", "UNI61_937_Tracker", "box_Simple_Node_143.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 10);
end;

function export:f_box_Simple_Node_144_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1420333261", "1420333261", "UNI61_937_Tracker", "box_Simple_Node_144.Out", "box_MultipleOR_100.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1464272273", "1464272273", "UNI61_937_Tracker", "box_Simple_Node_144.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 11);
end;

function export:f_box_Simple_Node_145_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1101963303", "1101963303", "UNI61_937_Tracker", "box_Simple_Node_145.Out", "box_MultipleOR_104.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1293417429", "1293417429", "UNI61_937_Tracker", "box_Simple_Node_145.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 12);
end;

function export:f_box_Simple_Node_146_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1828501579", "1828501579", "UNI61_937_Tracker", "box_Simple_Node_146.Out", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|157671970", "157671970", "UNI61_937_Tracker", "box_Simple_Node_146.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 13);
end;

function export:f_box_Simple_Node_147_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1442179362", "1442179362", "UNI61_937_Tracker", "box_Simple_Node_147.Out", "box_MultipleOR_92.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1401294441", "1401294441", "UNI61_937_Tracker", "box_Simple_Node_147.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 14);
end;

function export:f_box_Simple_Node_79_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1709826891", "1709826891", "UNI61_937_Tracker", "box_Simple_Node_79.Out", "box_MultipleOR_43.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1011669083", "1011669083", "UNI61_937_Tracker", "box_Simple_Node_79.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_76_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1702430888", "1702430888", "UNI61_937_Tracker", "box_Simple_Node_76.Out", "box_MultipleOR_63.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1510964388", "1510964388", "UNI61_937_Tracker", "box_Simple_Node_76.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Simple_Node_78_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|130098392", "130098392", "UNI61_937_Tracker", "box_Simple_Node_78.Out", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|271864125", "271864125", "UNI61_937_Tracker", "box_Simple_Node_78.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Simple_Node_83_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1727288183", "1727288183", "UNI61_937_Tracker", "box_Simple_Node_83.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1506324058", "1506324058", "UNI61_937_Tracker", "box_Simple_Node_83.Out", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_82_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|47235552", "47235552", "UNI61_937_Tracker", "box_Simple_Node_82.Out", "box_MultipleOR_62.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1023102022", "1023102022", "UNI61_937_Tracker", "box_Simple_Node_82.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_Simple_Node_139_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|684716883", "684716883", "UNI61_937_Tracker", "box_Simple_Node_139.Out", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|140632183", "140632183", "UNI61_937_Tracker", "box_Simple_Node_139.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_Simple_Node_140_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1384254654", "1384254654", "UNI61_937_Tracker", "box_Simple_Node_140.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 7);
    l0 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|607893411", "607893411", "UNI61_937_Tracker", "box_Simple_Node_140.Out", "box_MultipleOR_39.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_141_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1983927738", "1983927738", "UNI61_937_Tracker", "box_Simple_Node_141.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 8);
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1723443712", "1723443712", "UNI61_937_Tracker", "box_Simple_Node_141.Out", "box_MultipleOR_2.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_137_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|489615242", "489615242", "UNI61_937_Tracker", "box_Simple_Node_137.Out", "box_OutputOrder_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_138_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_96();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|161919307", "161919307", "UNI61_937_Tracker", "box_Simple_Node_138.Out", "box_OutputOrder_v2_96.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_136_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1452895900", "1452895900", "UNI61_937_Tracker", "box_Simple_Node_136.Out", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_84_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|835615850", "835615850", "UNI61_937_Tracker", "box_Simple_Node_84.Out", "box_OutputOrder_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_77_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1462552157", "1462552157", "UNI61_937_Tracker", "box_Simple_Node_77.Out", "box_MultipleOR_75.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IntegerArithmetics_v2_8_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|98068660", "98068660", "UNI61_937_Tracker", "box_IntegerArithmetics_v2_8.Out", "box_Simple_Node_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_9_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|305337939", "305337939", "UNI61_937_Tracker", "box_IntegerArithmetics_v2_9.Out", "box_Simple_Node_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_96_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_107();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1155452430", "1155452430", "UNI61_937_Tracker", "box_OutputOrder_v2_96.Out", "box_GetPreconditionState_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_96_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_91();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|930656578", "930656578", "UNI61_937_Tracker", "box_OutputOrder_v2_96.Out", "box_GetPreconditionState_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_96_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_111();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1119657175", "1119657175", "UNI61_937_Tracker", "box_OutputOrder_v2_96.Out", "box_GetPreconditionState_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_96_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_101();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|913763257", "913763257", "UNI61_937_Tracker", "box_OutputOrder_v2_96.Out", "box_GetPreconditionState_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_96_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_109();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1743090758", "1743090758", "UNI61_937_Tracker", "box_OutputOrder_v2_96.Out", "box_GetPreconditionState_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_104_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_104;
    l1 = self.box_OnceOnly_v3_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|751128780", "751128780", "UNI61_937_Tracker", "box_MultipleOR_104.Out", "box_OnceOnly_v3_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_31_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_50();
    l0 = self.box_OnceOnly_v3_31;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|969545931", "969545931", "UNI61_937_Tracker", "box_OnceOnly_v3_31.Out", "box_IntegerArithmetics_v2_50.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_4_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1617072475", "1617072475", "UNI61_937_Tracker", "box_IntegerArithmetics_v2_4.Out", "box_Simple_Node_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1912730880", "1912730880", "UNI61_937_Tracker", "box_OutputOrder_v2_23.Out", "box_Simple_Node_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|843668117", "843668117", "UNI61_937_Tracker", "box_OutputOrder_v2_23.Out", "box_Delay_v5_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_AddActivityObjectiveProgress_v2_35_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_35_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_135();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|113655632", "113655632", "UNI61_937_Tracker", "box_AddActivityObjectiveProgress_v2_35.Out", "box_OutputOrder_v2_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_58_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_57();
    l0 = self.box_OnceOnly_v3_58;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|13278654", "13278654", "UNI61_937_Tracker", "box_OnceOnly_v3_58.Out", "box_IntegerArithmetics_v2_57.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_26();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|408519274", "408519274", "UNI61_937_Tracker", "box_OutputOrder_v2_21.Out", "box_GetPreconditionState_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_14();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|484773701", "484773701", "UNI61_937_Tracker", "box_OutputOrder_v2_21.Out", "box_GetPreconditionState_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_54();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|581027323", "581027323", "UNI61_937_Tracker", "box_OutputOrder_v2_21.Out", "box_GetPreconditionState_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_12();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|988544647", "988544647", "UNI61_937_Tracker", "box_OutputOrder_v2_21.Out", "box_GetPreconditionState_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_37();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1833218483", "1833218483", "UNI61_937_Tracker", "box_OutputOrder_v2_21.Out", "box_GetPreconditionState_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_56_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_56;
    l1 = self.box_OnceOnly_v3_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1107159645", "1107159645", "UNI61_937_Tracker", "box_MultipleOR_56.Out", "box_OnceOnly_v3_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_14_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_6();
    l0 = self.box_PreconditionListener_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|866877218", "866877218", "UNI61_937_Tracker", "box_GetPreconditionState_14.NotValid", "box_PreconditionListener_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_14_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2024951877", "2024951877", "UNI61_937_Tracker", "box_GetPreconditionState_14.Valid", "box_MultipleOR_43.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_54_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_60();
    l0 = self.box_PreconditionListener_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2114160637", "2114160637", "UNI61_937_Tracker", "box_GetPreconditionState_54.NotValid", "box_PreconditionListener_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_54_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1511307965", "1511307965", "UNI61_937_Tracker", "box_GetPreconditionState_54.Valid", "box_MultipleOR_63.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_118_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_115();
    l0 = self.box_RequestPhoneCall_v2_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|446530378", "446530378", "UNI61_937_Tracker", "box_OutputOrder_v2_118.Out", "box_RequestPhoneCall_v2_115.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_IntegerArithmetics_v2_61_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_61_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1597612108", "1597612108", "UNI61_937_Tracker", "box_IntegerArithmetics_v2_61.Out", "box_Simple_Node_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_22_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_140();
    l0 = self.box_PreconditionListener_22;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|15143147", "15143147", "UNI61_937_Tracker", "box_PreconditionListener_22.PreconditionMet", "box_Simple_Node_140.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_128_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_55();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|795938879", "795938879", "UNI61_937_Tracker", "box_OutputOrder_v2_128.Out", "box_EndActivityObjective_v2_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_128_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_127();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1541551153", "1541551153", "UNI61_937_Tracker", "box_OutputOrder_v2_128.Out", "box_ActivityObjectiveMarkerModifier_v3_127.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_69_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_1();
    l0 = self.box_OnceOnly_v3_69;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1016561617", "1016561617", "UNI61_937_Tracker", "box_OnceOnly_v3_69.Out", "box_IntegerArithmetics_v2_1.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_123_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StartCelebration_124();
    l0 = self.box_MultipleOR_123;
    l1 = self.box_StartCelebration_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1694656509", "1694656509", "UNI61_937_Tracker", "box_MultipleOR_123.Out", "box_StartCelebration_124.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_GetPreconditionState_70_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_66();
    l0 = self.box_PreconditionListener_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|177424873", "177424873", "UNI61_937_Tracker", "box_GetPreconditionState_70.NotValid", "box_PreconditionListener_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_70_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|879883561", "879883561", "UNI61_937_Tracker", "box_GetPreconditionState_70.Valid", "box_MultipleOR_56.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_42_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_131();
    l0 = self.box_OnceOnly_v3_42;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|826514980", "826514980", "UNI61_937_Tracker", "box_OnceOnly_v3_42.Out", "box_GetPlayerGroup_v2_131.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_27();
    l0 = self.box_MultipleOR_46;
    l1 = self.box_Switch_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|599452089", "599452089", "UNI61_937_Tracker", "box_MultipleOR_46.Out", "box_Switch_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_67_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_17();
    l0 = self.box_Delay_v5_67;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|712270282", "712270282", "UNI61_937_Tracker", "box_Delay_v5_67.TimeElapsed", "box_Compare_Integers_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_50_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_50_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|886887055", "886887055", "UNI61_937_Tracker", "box_IntegerArithmetics_v2_50.Out", "box_Simple_Node_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_53_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_61();
    l0 = self.box_OnceOnly_v3_53;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|61165092", "61165092", "UNI61_937_Tracker", "box_OnceOnly_v3_53.Out", "box_IntegerArithmetics_v2_61.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_126_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_71();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1244629060", "1244629060", "UNI61_937_Tracker", "box_OutputOrder_v2_126.Out", "box_SetActivityObjectiveProgress_v2_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_126_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_130();
    l0 = self.box_ProximityRadiusListener_v3_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|680206844", "680206844", "UNI61_937_Tracker", "box_OutputOrder_v2_126.Out", "box_ProximityRadiusListener_v3_130.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_126_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_132();
    l0 = self.box_ProximityRadiusListener_v3_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1926764788", "1926764788", "UNI61_937_Tracker", "box_OutputOrder_v2_126.Out", "box_ProximityRadiusListener_v3_132.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_32_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_4();
    l0 = self.box_OnceOnly_v3_32;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|306440251", "306440251", "UNI61_937_Tracker", "box_OnceOnly_v3_32.Out", "box_IntegerArithmetics_v2_4.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_74_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_22();
    l0 = self.box_PreconditionListener_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|648347387", "648347387", "UNI61_937_Tracker", "box_GetPreconditionState_74.NotValid", "box_PreconditionListener_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_74_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|519127353", "519127353", "UNI61_937_Tracker", "box_GetPreconditionState_74.Valid", "box_MultipleOR_39.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_95_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_95;
    l1 = self.box_OnceOnly_v3_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1742358877", "1742358877", "UNI61_937_Tracker", "box_MultipleOR_95.Out", "box_OnceOnly_v3_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_47_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_11();
    l0 = self.box_OnceOnly_v3_47;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1194794045", "1194794045", "UNI61_937_Tracker", "box_OnceOnly_v3_47.Out", "box_IntegerArithmetics_v2_11.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_MultipleOR_75;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1385398635", "1385398635", "UNI61_937_Tracker", "box_MultipleOR_75.Out", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_107_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_112();
    l0 = self.box_PreconditionListener_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|977725439", "977725439", "UNI61_937_Tracker", "box_GetPreconditionState_107.NotValid", "box_PreconditionListener_112.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_107_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2135378295", "2135378295", "UNI61_937_Tracker", "box_GetPreconditionState_107.Valid", "box_MultipleOR_87.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_130_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_125();
    l0 = self.box_ProximityRadiusListener_v3_130;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1820758617", "1820758617", "UNI61_937_Tracker", "box_ProximityRadiusListener_v3_130.AllFar", "box_ActivityObjectiveMarkerModifier_v3_125.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_25_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_25;
    l1 = self.box_OnceOnly_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1793829011", "1793829011", "UNI61_937_Tracker", "box_MultipleOR_25.Out", "box_OnceOnly_v3_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PreconditionListener_7_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_85();
    l0 = self.box_PreconditionListener_7;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|626761994", "626761994", "UNI61_937_Tracker", "box_PreconditionListener_7.PreconditionMet", "box_Simple_Node_85.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_116_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_122();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|824756652", "824756652", "UNI61_937_Tracker", "box_GetPreconditionState_116.NotValid", "box_OutputOrder_v2_122.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_116_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_118();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1721526895", "1721526895", "UNI61_937_Tracker", "box_GetPreconditionState_116.Valid", "box_OutputOrder_v2_118.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_120_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_120;
    l1 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1732307191", "1732307191", "UNI61_937_Tracker", "box_RequestPhoneCall_v2_120.Completed", "box_MultipleOR_123.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|904764973", "904764973", "UNI61_937_Tracker", "box_OutputOrder_v2_36.Out", "box_OnceOnly_v3_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_16();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|787302571", "787302571", "UNI61_937_Tracker", "box_OutputOrder_v2_36.Out", "box_Print_v2_16.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_113();
    l0 = self.box_RequestPhoneCall_v2_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|235344557", "235344557", "UNI61_937_Tracker", "box_OutputOrder_v2_36.Out", "box_RequestPhoneCall_v2_113.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_33_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_33;
    l1 = self.box_ActivityInitialized_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|229592137", "229592137", "UNI61_937_Tracker", "box_MultipleOR_33.Out", "box_ActivityInitialized_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_IntegerArithmetics_v2_57_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_57_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|661966797", "661966797", "UNI61_937_Tracker", "box_IntegerArithmetics_v2_57.Out", "box_Simple_Node_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_11_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1718928204", "1718928204", "UNI61_937_Tracker", "box_IntegerArithmetics_v2_11.Out", "box_Simple_Node_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_110_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_88();
    l0 = self.box_OnceOnly_v3_110;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|309050297", "309050297", "UNI61_937_Tracker", "box_OnceOnly_v3_110.Out", "box_IntegerArithmetics_v2_88.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_37_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_45();
    l0 = self.box_PreconditionListener_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1011541876", "1011541876", "UNI61_937_Tracker", "box_GetPreconditionState_37.NotValid", "box_PreconditionListener_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_37_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1994175014", "1994175014", "UNI61_937_Tracker", "box_GetPreconditionState_37.Valid", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IntegerArithmetics_v2_105_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_105_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|17690222", "17690222", "UNI61_937_Tracker", "box_IntegerArithmetics_v2_105.Out", "box_Simple_Node_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_64_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_68();
    l0 = self.box_PreconditionListener_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|409181834", "409181834", "UNI61_937_Tracker", "box_GetPreconditionState_64.NotValid", "box_PreconditionListener_68.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_64_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|970112510", "970112510", "UNI61_937_Tracker", "box_GetPreconditionState_64.Valid", "box_MultipleOR_2.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_121_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_120();
    l0 = self.box_Delay_v5_121;
    l1 = self.box_RequestPhoneCall_v2_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|851895482", "851895482", "UNI61_937_Tracker", "box_Delay_v5_121.TimeElapsed", "box_RequestPhoneCall_v2_120.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_62_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_62;
    l1 = self.box_OnceOnly_v3_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|280839511", "280839511", "UNI61_937_Tracker", "box_MultipleOR_62.Out", "box_OnceOnly_v3_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PreconditionListener_6_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_79();
    l0 = self.box_PreconditionListener_6;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1788815677", "1788815677", "UNI61_937_Tracker", "box_PreconditionListener_6.PreconditionMet", "box_Simple_Node_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_10();
    l0 = self.box_Delay_v5_20;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1187742672", "1187742672", "UNI61_937_Tracker", "box_Delay_v5_20.TimeElapsed", "box_SetActivityObjectiveProgress_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_43_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_43;
    l1 = self.box_OnceOnly_v3_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1641619803", "1641619803", "UNI61_937_Tracker", "box_MultipleOR_43.Out", "box_OnceOnly_v3_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_27_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_114();
    l0 = self.box_Switch_27;
    l1 = self.box_RequestPhoneCall_v2_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|667352563", "667352563", "UNI61_937_Tracker", "box_Switch_27.Output", "box_RequestPhoneCall_v2_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1768239824", "1768239824", "UNI61_937_Tracker", "box_OutputOrder_v2_41.Out", "box_Simple_Node_136.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_137();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|127639532", "127639532", "UNI61_937_Tracker", "box_OutputOrder_v2_41.Out", "box_Simple_Node_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_138();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|590621219", "590621219", "UNI61_937_Tracker", "box_OutputOrder_v2_41.Out", "box_Simple_Node_138.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_98_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_147();
    l0 = self.box_PreconditionListener_98;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|330109859", "330109859", "UNI61_937_Tracker", "box_PreconditionListener_98.PreconditionMet", "box_Simple_Node_147.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_34_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_34;
    l1 = self.box_OnceOnly_v3_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|748736176", "748736176", "UNI61_937_Tracker", "box_MultipleOR_34.Out", "box_OnceOnly_v3_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StartCelebration_124_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_15();
    l0 = self.box_StartCelebration_124;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|221721025", "221721025", "UNI61_937_Tracker", "box_StartCelebration_124.Ended", "box_ActivityEnd_15.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_38_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_139();
    l0 = self.box_PreconditionListener_38;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|188114497", "188114497", "UNI61_937_Tracker", "box_PreconditionListener_38.PreconditionMet", "box_Simple_Node_139.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_18_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_28();
    l0 = self.box_OnceOnly_v3_18;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1984310153", "1984310153", "UNI61_937_Tracker", "box_OnceOnly_v3_18.Out", "box_IntegerArithmetics_v2_28.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_89_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_145();
    l0 = self.box_PreconditionListener_89;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|57677946", "57677946", "UNI61_937_Tracker", "box_PreconditionListener_89.PreconditionMet", "box_Simple_Node_145.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_128();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|666548683", "666548683", "UNI61_937_Tracker", "box_SetActivityObjectiveProgress_v2_10.Out", "box_OutputOrder_v2_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_106_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_90();
    l0 = self.box_OnceOnly_v3_106;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1765400758", "1765400758", "UNI61_937_Tracker", "box_OnceOnly_v3_106.Out", "box_IntegerArithmetics_v2_90.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_97_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_144();
    l0 = self.box_PreconditionListener_97;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|160125767", "160125767", "UNI61_937_Tracker", "box_PreconditionListener_97.PreconditionMet", "box_Simple_Node_144.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_108_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_108_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|636389539", "636389539", "UNI61_937_Tracker", "box_IntegerArithmetics_v2_108.Out", "box_Simple_Node_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_91_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_97();
    l0 = self.box_PreconditionListener_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|214967531", "214967531", "UNI61_937_Tracker", "box_GetPreconditionState_91.NotValid", "box_PreconditionListener_97.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_91_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|495298400", "495298400", "UNI61_937_Tracker", "box_GetPreconditionState_91.Valid", "box_MultipleOR_100.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_135_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1652071813", "1652071813", "UNI61_937_Tracker", "box_OutputOrder_v2_135.Out", "box_MultipleOR_75.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_135_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_134();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|246275297", "246275297", "UNI61_937_Tracker", "box_OutputOrder_v2_135.Out", "box_ActivityObjectiveMarkerModifier_v3_134.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_87_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_87;
    l1 = self.box_OnceOnly_v3_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|546247293", "546247293", "UNI61_937_Tracker", "box_MultipleOR_87.Out", "box_OnceOnly_v3_103.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_19_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_38();
    l0 = self.box_PreconditionListener_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|590802920", "590802920", "UNI61_937_Tracker", "box_GetPreconditionState_19.NotValid", "box_PreconditionListener_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_19_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|139092749", "139092749", "UNI61_937_Tracker", "box_GetPreconditionState_19.Valid", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetActivityObjectiveProgress_v2_71_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1841367393", "1841367393", "UNI61_937_Tracker", "box_SetActivityObjectiveProgress_v2_71.Out", "box_OnceOnly_v3_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_39_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_39;
    l1 = self.box_OnceOnly_v3_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2090779893", "2090779893", "UNI61_937_Tracker", "box_MultipleOR_39.Out", "box_OnceOnly_v3_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_122_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_119();
    l0 = self.box_RequestPhoneCall_v2_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2121597066", "2121597066", "UNI61_937_Tracker", "box_OutputOrder_v2_122.Out", "box_RequestPhoneCall_v2_119.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_122_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_121();
    l0 = self.box_Delay_v5_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|468943511", "468943511", "UNI61_937_Tracker", "box_OutputOrder_v2_122.Out", "box_Delay_v5_121.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PreconditionListener_45_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_83();
    l0 = self.box_PreconditionListener_45;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1027977658", "1027977658", "UNI61_937_Tracker", "box_PreconditionListener_45.PreconditionMet", "box_Simple_Node_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_111_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_89();
    l0 = self.box_PreconditionListener_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|90172746", "90172746", "UNI61_937_Tracker", "box_GetPreconditionState_111.NotValid", "box_PreconditionListener_89.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_111_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|186961819", "186961819", "UNI61_937_Tracker", "box_GetPreconditionState_111.Valid", "box_MultipleOR_104.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PreconditionListener_60_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_76();
    l0 = self.box_PreconditionListener_60;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|233461016", "233461016", "UNI61_937_Tracker", "box_PreconditionListener_60.PreconditionMet", "box_Simple_Node_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_103_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_108();
    l0 = self.box_OnceOnly_v3_103;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|678787491", "678787491", "UNI61_937_Tracker", "box_OnceOnly_v3_103.Out", "box_IntegerArithmetics_v2_108.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_29_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = self.box_OnceOnly_v3_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|610275745", "610275745", "UNI61_937_Tracker", "box_OnceOnly_v3_29.Out", "box_OutputOrder_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_115_Out()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_115;
    l1 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1168771811", "1168771811", "UNI61_937_Tracker", "box_RequestPhoneCall_v2_115.Out", "box_MultipleOR_123.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_12_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_30();
    l0 = self.box_PreconditionListener_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|218506587", "218506587", "UNI61_937_Tracker", "box_GetPreconditionState_12.NotValid", "box_PreconditionListener_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_12_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1523819251", "1523819251", "UNI61_937_Tracker", "box_GetPreconditionState_12.Valid", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_73_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_8();
    l0 = self.box_OnceOnly_v3_73;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2144177278", "2144177278", "UNI61_937_Tracker", "box_OnceOnly_v3_73.Out", "box_IntegerArithmetics_v2_8.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_26_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_7();
    l0 = self.box_PreconditionListener_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|359103157", "359103157", "UNI61_937_Tracker", "box_GetPreconditionState_26.NotValid", "box_PreconditionListener_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_26_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|808758851", "808758851", "UNI61_937_Tracker", "box_GetPreconditionState_26.Valid", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayerGroup_v2_131_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_131_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_59();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|679167979", "679167979", "UNI61_937_Tracker", "box_GetPlayerGroup_v2_131.Out", "box_AddActivityObjective_v2_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_55_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_117();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|986677931", "986677931", "UNI61_937_Tracker", "box_EndActivityObjective_v2_55.Out", "box_OutputOrder_v2_117.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_100_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_100;
    l1 = self.box_OnceOnly_v3_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1026402441", "1026402441", "UNI61_937_Tracker", "box_MultipleOR_100.Out", "box_OnceOnly_v3_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PreconditionListener_66_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_142();
    l0 = self.box_PreconditionListener_66;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1234387023", "1234387023", "UNI61_937_Tracker", "box_PreconditionListener_66.PreconditionMet", "box_Simple_Node_142.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_24_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_86();
    l0 = self.box_PreconditionListener_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1183169240", "1183169240", "UNI61_937_Tracker", "box_GetPreconditionState_24.NotValid", "box_PreconditionListener_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_24_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2045400591", "2045400591", "UNI61_937_Tracker", "box_GetPreconditionState_24.Valid", "box_MultipleOR_62.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_44_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_44;
    l1 = self.box_OnceOnly_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|572229640", "572229640", "UNI61_937_Tracker", "box_MultipleOR_44.Out", "box_OnceOnly_v3_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IntegerArithmetics_v2_102_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_102_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|407274584", "407274584", "UNI61_937_Tracker", "box_IntegerArithmetics_v2_102.Out", "box_Simple_Node_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_67();
    l0 = self.box_Delay_v5_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|731434549", "731434549", "UNI61_937_Tracker", "box_OutputOrder_v2_5.Out", "box_Delay_v5_67.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_13();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1640530044", "1640530044", "UNI61_937_Tracker", "box_OutputOrder_v2_5.Out", "box_Print_v2_13.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_117_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_116();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|417043098", "417043098", "UNI61_937_Tracker", "box_OutputOrder_v2_117.Out", "box_GetPreconditionState_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_17_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_129();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1353719907", "1353719907", "UNI61_937_Tracker", "box_Compare_Integers_17.A_eq_B", "box_SetActivityObjectiveProgress_v2_129.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_17_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_126();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1017806869", "1017806869", "UNI61_937_Tracker", "box_Compare_Integers_17.A_lt_B", "box_OutputOrder_v2_126.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_92_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_92;
    l1 = self.box_OnceOnly_v3_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1235017130", "1235017130", "UNI61_937_Tracker", "box_MultipleOR_92.Out", "box_OnceOnly_v3_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_101_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_99();
    l0 = self.box_PreconditionListener_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|268300105", "268300105", "UNI61_937_Tracker", "box_GetPreconditionState_101.NotValid", "box_PreconditionListener_99.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_101_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1413499453", "1413499453", "UNI61_937_Tracker", "box_GetPreconditionState_101.Valid", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IntegerArithmetics_v2_28_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1669380383", "1669380383", "UNI61_937_Tracker", "box_IntegerArithmetics_v2_28.Out", "box_Simple_Node_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_132_AllNear()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_133();
    l0 = self.box_ProximityRadiusListener_v3_132;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|728690141", "728690141", "UNI61_937_Tracker", "box_ProximityRadiusListener_v3_132.AllNear", "box_ActivityObjectiveMarkerModifier_v3_133.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_OnceOnly_v3_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|974796760", "974796760", "UNI61_937_Tracker", "box_MultipleOR_2.Out", "box_OnceOnly_v3_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_24();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1638718707", "1638718707", "UNI61_937_Tracker", "box_OutputOrder_v2_48.Out", "box_GetPreconditionState_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_19();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2142574449", "2142574449", "UNI61_937_Tracker", "box_OutputOrder_v2_48.Out", "box_GetPreconditionState_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_74();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|571429311", "571429311", "UNI61_937_Tracker", "box_OutputOrder_v2_48.Out", "box_GetPreconditionState_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_64();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2004036437", "2004036437", "UNI61_937_Tracker", "box_OutputOrder_v2_48.Out", "box_GetPreconditionState_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_70();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|955379172", "955379172", "UNI61_937_Tracker", "box_OutputOrder_v2_48.Out", "box_GetPreconditionState_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_72_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_72;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|29857960", "29857960", "UNI61_937_Tracker", "box_ActivityAcknowledgeGate_72.Acknowledged", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_72_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_72;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|740457604", "740457604", "UNI61_937_Tracker", "box_ActivityAcknowledgeGate_72.Reloaded", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PreconditionListener_86_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_82();
    l0 = self.box_PreconditionListener_86;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|157060957", "157060957", "UNI61_937_Tracker", "box_PreconditionListener_86.PreconditionMet", "box_Simple_Node_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_30_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_78();
    l0 = self.box_PreconditionListener_30;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1107090513", "1107090513", "UNI61_937_Tracker", "box_PreconditionListener_30.PreconditionMet", "box_Simple_Node_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_99_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_PreconditionListener_99;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1228828495", "1228828495", "UNI61_937_Tracker", "box_PreconditionListener_99.PreconditionMet", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_112_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_143();
    l0 = self.box_PreconditionListener_112;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|169165093", "169165093", "UNI61_937_Tracker", "box_PreconditionListener_112.PreconditionMet", "box_Simple_Node_143.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_93_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_102();
    l0 = self.box_OnceOnly_v3_93;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1470706756", "1470706756", "UNI61_937_Tracker", "box_OnceOnly_v3_93.Out", "box_IntegerArithmetics_v2_102.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_90_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_90_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|954538897", "954538897", "UNI61_937_Tracker", "box_IntegerArithmetics_v2_90.Out", "box_Simple_Node_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_ActivityInitialized_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2075941863", "2075941863", "UNI61_937_Tracker", "box_ActivityInitialized_40.Out", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_88_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_88_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|290646359", "290646359", "UNI61_937_Tracker", "box_IntegerArithmetics_v2_88.Out", "box_Simple_Node_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_51_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_51;
    l1 = self.box_OnceOnly_v3_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|135144223", "135144223", "UNI61_937_Tracker", "box_MultipleOR_51.Out", "box_OnceOnly_v3_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_3_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_65();
    l0 = self.box_OnceOnly_v3_3;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2094303671", "2094303671", "UNI61_937_Tracker", "box_OnceOnly_v3_3.Out", "box_IntegerArithmetics_v2_65.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_129_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_84();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|37793627", "37793627", "UNI61_937_Tracker", "box_SetActivityObjectiveProgress_v2_129.Out", "box_Simple_Node_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_63_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_63;
    l1 = self.box_OnceOnly_v3_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|814623733", "814623733", "UNI61_937_Tracker", "box_MultipleOR_63.Out", "box_OnceOnly_v3_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IntegerArithmetics_v2_1_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|157658100", "157658100", "UNI61_937_Tracker", "box_IntegerArithmetics_v2_1.Out", "box_Simple_Node_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_65_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_65_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|766321020", "766321020", "UNI61_937_Tracker", "box_IntegerArithmetics_v2_65.Out", "box_Simple_Node_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_68_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_141();
    l0 = self.box_PreconditionListener_68;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1898363455", "1898363455", "UNI61_937_Tracker", "box_PreconditionListener_68.PreconditionMet", "box_Simple_Node_141.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_59_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_35();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|589840001", "589840001", "UNI61_937_Tracker", "box_AddActivityObjective_v2_59.Out", "box_AddActivityObjectiveProgress_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_109_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_98();
    l0 = self.box_PreconditionListener_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1232261766", "1232261766", "UNI61_937_Tracker", "box_GetPreconditionState_109.NotValid", "box_PreconditionListener_98.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_109_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1619712909", "1619712909", "UNI61_937_Tracker", "box_GetPreconditionState_109.Valid", "box_MultipleOR_92.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_49_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_9();
    l0 = self.box_OnceOnly_v3_49;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1147323595", "1147323595", "UNI61_937_Tracker", "box_OnceOnly_v3_49.Out", "box_IntegerArithmetics_v2_9.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_94_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_105();
    l0 = self.box_OnceOnly_v3_94;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|255111791", "255111791", "UNI61_937_Tracker", "box_OnceOnly_v3_94.Out", "box_IntegerArithmetics_v2_105.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@B10");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_85_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@B100");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_142_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@B110");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_143_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@B120");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_144_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@B130");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_145_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@B140");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_146_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@B150");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_147_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@B20");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_79_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@B30");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_76_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@B40");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_78_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@B50");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_83_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@B60");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_82_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@B70");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_139_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@B80");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_140_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@B90");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_141_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@Letter_E");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_137_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@Letter_S");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_138_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@Letter_Y");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_136_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@n_AllSilosDestroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_84_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@n_CheckObjective");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_77_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|@n_CleanUp");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_114()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3191019460",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|47756985");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_8_Out,
    });
    params = {
        -- A,
        [0] = self.var_i_DestroyedMarkedSilos,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|53438457");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2104743676826667246",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI61_937_B10_OBJ",
            id = "857698",
        },
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|81027508");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_9_Out,
    });
    params = {
        -- A,
        [0] = self.var_i_DestroyedMarkedSilos,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|103684540");
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
                [0] = self.f_box_OutputOrder_v2_96_Out_0,
                [1] = self.f_box_OutputOrder_v2_96_Out_1,
                [2] = self.f_box_OutputOrder_v2_96_Out_2,
                [3] = self.f_box_OutputOrder_v2_96_Out_3,
                [4] = self.f_box_OutputOrder_v2_96_Out_4,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|144238740");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_4_Out,
    });
    params = {
        -- A,
        [0] = self.var_i_DestroyedMarkedSilos,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|161875005");
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

function export:OnEnter_box_AddActivityObjectiveProgress_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|164708685");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_35_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI61_937_B10_OBJ",
            id = "857698",
        },
        -- ProgressDisplayType,
        [2] = 1,
        -- TotalProgress,
        [3] = 15,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|204741420");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
                [2] = self.f_box_OutputOrder_v2_21_Out_2,
                [3] = self.f_box_OutputOrder_v2_21_Out_3,
                [4] = self.f_box_OutputOrder_v2_21_Out_4,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|278034895");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_14_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_14_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015282964462637",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|290938158");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_54_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_54_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015282964469325",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|309277499");
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
                [1] = self.f_box_OutputOrder_v2_118_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|354738571");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_61_Out,
    });
    params = {
        -- A,
        [0] = self.var_i_DestroyedMarkedSilos,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_22()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015282964497149",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|376782842");
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
                [0] = self.f_box_OutputOrder_v2_128_Out_0,
                [1] = self.f_box_OutputOrder_v2_128_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|407071552");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_70_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_70_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015282964505424",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_67()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|457237873");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_50_Out,
    });
    params = {
        -- A,
        [0] = self.var_i_DestroyedMarkedSilos,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|474101132");
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
                [0] = self.f_box_OutputOrder_v2_126_Out_0,
                [1] = self.f_box_OutputOrder_v2_126_Out_1,
                [2] = self.f_box_OutputOrder_v2_126_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|493759859");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_74_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_74_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015282964497149",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|525262361");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2104743676826667246",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI61_937_B10_OBJ",
            id = "857698",
        },
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|533111995");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_107_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_107_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015282964508896",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_130()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.AllMyFriendlyPlayers,
        -- farZone,
        [2] = 200,
        -- id2,
        [3] = "2105130517824300697",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_7()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015282831136318",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|646356111");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_116_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_116_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015263358687067",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_120()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1291373793",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|679650465");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
                [2] = self.f_box_OutputOrder_v2_36_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|777800505");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_57_Out,
    });
    params = {
        -- A,
        [0] = self.var_i_DestroyedMarkedSilos,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|782553912");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_11_Out,
    });
    params = {
        -- A,
        [0] = self.var_i_DestroyedMarkedSilos,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|791159488");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_37_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_37_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015282964478200",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|802489123");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_105_Out,
    });
    params = {
        -- A,
        [0] = self.var_i_DestroyedMarkedSilos,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|805695223");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_64_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_64_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015282964501200",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_121()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_6()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015282964462637",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Switch_27()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|997711896");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
                [2] = self.f_box_OutputOrder_v2_41_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_98()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015282964525011",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_124()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_38()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015282964488284",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_89()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015282964517693",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1142179048");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_10_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI61_937_B10_OBJ",
            id = "857698",
        },
        -- Progress,
        [1] = 14,
        -- ProgressId,
        [2] = 14,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_97()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015282964514018",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1192638947");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2104743676826667246",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI61_937_B10_OBJ",
            id = "857698",
        },
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1210957149");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_108_Out,
    });
    params = {
        -- A,
        [0] = self.var_i_DestroyedMarkedSilos,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1211325157");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_91_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_91_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015282964514018",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1232915776");
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
                [0] = self.f_box_OutputOrder_v2_135_Out_0,
                [1] = self.f_box_OutputOrder_v2_135_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1275004957");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_19_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_19_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015282964488284",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1292550949");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_71_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI61_937_B10_OBJ",
            id = "857698",
        },
        -- Progress,
        [1] = self.var_i_DestroyedMarkedSilos,
        -- ProgressId,
        [2] = self.ProgressID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1351069138");
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
                [0] = self.f_box_OutputOrder_v2_122_Out_0,
                [1] = self.f_box_OutputOrder_v2_122_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1360224764");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1369333098");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.var_i_DestroyedMarkedSilos,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Destroyed Silos:",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1384852675");
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
        [8] = "UNI61_937_Tracker script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_45()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015282964478200",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1407319663");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_111_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_111_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015282964517693",
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_60()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015282964469325",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_115()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1725927567",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1477565766");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_12_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_12_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015282964473922",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1497653990");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_26_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_26_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015282831136318",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1533610312");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_131_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1549552476");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_55_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI61_937_B10_OBJ",
            id = "857698",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_66()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015282964505424",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1584077297");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_24_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_24_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015282964483542",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1607607557");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_102_Out,
    });
    params = {
        -- A,
        [0] = self.var_i_DestroyedMarkedSilos,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1609276262");
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

function export:OnEnter_box_OutputOrder_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1627826834");
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
                [0] = self.f_box_OutputOrder_v2_117_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1646273010");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_17_A_eq_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_17_A_lt_B,
    });
    params = {
        -- A,
        [0] = 0,
        -- B,
        [1] = self.var_i_DestroyedMarkedSilos,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1674219343");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2104743676826667246",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI61_937_B10_OBJ",
            id = "857698",
        },
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1675651715");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_101_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_101_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015282964521349",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1683708341");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_28_Out,
    });
    params = {
        -- A,
        [0] = self.var_i_DestroyedMarkedSilos,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_119()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1310437456",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_132()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.AllMyFriendlyPlayers,
        -- id2,
        [3] = "2105130517824300697",
        -- nearZone,
        [4] = 180,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1726424954");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
                [2] = self.f_box_OutputOrder_v2_48_Out_2,
                [3] = self.f_box_OutputOrder_v2_48_Out_3,
                [4] = self.f_box_OutputOrder_v2_48_Out_4,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_86()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015282964483542",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_30()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015282964473922",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_99()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015282964521349",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_112()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015282964508896",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1878217739");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_90_Out,
    });
    params = {
        -- A,
        [0] = self.var_i_DestroyedMarkedSilos,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1893024656");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_88_Out,
    });
    params = {
        -- A,
        [0] = self.var_i_DestroyedMarkedSilos,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_113()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2019942046",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|1975125053");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_129_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI61_937_B10_OBJ",
            id = "857698",
        },
        -- Progress,
        [1] = self.var_i_DestroyedMarkedSilos,
        -- ProgressId,
        [2] = self.ProgressID,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2017133781");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_1_Out,
    });
    params = {
        -- A,
        [0] = self.var_i_DestroyedMarkedSilos,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2057504212");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_65_Out,
    });
    params = {
        -- A,
        [0] = self.var_i_DestroyedMarkedSilos,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_68()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015282964501200",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2071141980");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_59_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI61_937_B10_OBJ",
            id = "857698",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_937\\UNI61_937_Tracker.domino|@UNI61_937_Tracker|2096123304");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_109_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_109_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015282964525011",
    };
    return params;
end;

function export:OnExit_box_IntegerArithmetics_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.var_i_DestroyedMarkedSilos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.var_i_DestroyedMarkedSilos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.var_i_DestroyedMarkedSilos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_35_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.ProgressID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_61_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.var_i_DestroyedMarkedSilos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_50_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.var_i_DestroyedMarkedSilos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_57_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.var_i_DestroyedMarkedSilos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.var_i_DestroyedMarkedSilos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_105_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.var_i_DestroyedMarkedSilos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_108_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.var_i_DestroyedMarkedSilos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_131_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.AllMyFriendlyPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_102_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.var_i_DestroyedMarkedSilos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.var_i_DestroyedMarkedSilos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_90_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.var_i_DestroyedMarkedSilos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_88_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.var_i_DestroyedMarkedSilos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.var_i_DestroyedMarkedSilos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_65_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.var_i_DestroyedMarkedSilos = l0:GetDataOutValue(0);
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
