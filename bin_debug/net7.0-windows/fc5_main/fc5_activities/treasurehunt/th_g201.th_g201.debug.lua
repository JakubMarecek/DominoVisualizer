LUAC#� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/treasurehunt/th_g201.domino
-- User graph: TH_G201
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/PreconditionListener.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/LockableListener.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/PickupListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetInventoryItemQuantity.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2733962515.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4109838437.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_G201.TH_G201.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry.lua")] = {
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
            [2] = {
                name = "ShowHud",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/LockableListener.lua")] = {
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
                name = "Locked",
                delayed = true,
            },
            [3] = {
                name = "Unlocked",
                delayed = true,
            },
            [4] = {
                name = "UnlockFailed",
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
                name = "lockableEntity",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "Disable",
            },
            [3] = {
                name = "Enable",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/PickupListener_v2.lua")] = {
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
                name = "PickedUp",
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
                name = "pickupId",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "InstigatorId",
                type = "entity",
            },
            [1] = {
                name = "PickedUpId",
                type = "entity",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetNumberOfItems",
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
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [2] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "numItems",
                type = "int",
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
    self._name = "TH_G201";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201";
    self.gp_playergroup = nil;
    self.box_PreconditionListener_55 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|3684950");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_55_PreconditionMet,
    });
    self.box_Delay_v5_46 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|103028117");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_46_TimeElapsed,
    });
    self.box_BaseMissionBlock_v2_13 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|124816417");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_BaseMissionBlock_v2_13_Activated,
    });
    self.box_ActivityInitialized_9 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|481179528");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_9_Out,
    });
    self.box_BaseMissionBlock_v2_7 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|540348356");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_BaseMissionBlock_v2_7_Deactivated,
    });
    self.box_PreconditionListener_54 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|595903967");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_54_PreconditionMet,
    });
    self.box_LockListener_34 = cbox:CreateBox("Domino/System/LockableListener.lua");
    l0 = self.box_LockListener_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LockListener_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|618304189");
    l0:SetConnections({
        -- Locked,
        [2] = self.f_box_LockListener_34_Locked,
        -- Unlocked,
        [3] = self.f_box_LockListener_34_Unlocked,
    });
    self.box_MultipleOR_58 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|694385103");
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
    self.box_MultipleOR_59 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|710623101");
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
        [0] = self.f_box_MultipleOR_59_Out,
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|715718276");
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
    self.box_LockListener_29 = cbox:CreateBox("Domino/System/LockableListener.lua");
    l0 = self.box_LockListener_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LockListener_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|729519110");
    l0:SetConnections({
        -- Locked,
        [2] = self.f_box_LockListener_29_Locked,
        -- Unlocked,
        [3] = self.f_box_LockListener_29_Unlocked,
    });
    self.box_PreconditionListener_51 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|762507685");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_51_PreconditionMet,
    });
    self.box_Delay_v5_48 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|819777382");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_48_TimeElapsed,
    });
    self.box_PhysicsModifier_60 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|843685921");
    l0:SetConnections({
    });
    self.box_PreconditionListener_52 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|855480804");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_52_PreconditionMet,
    });
    self.box_PreconditionListener_57 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|886780938");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_57_PreconditionMet,
    });
    self.box_StartCelebration_1 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|937056934");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_StartCelebration_1_Started,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1060275361");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_SoundModifier_v2_44 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1141065792");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_41 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1254233071");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_17 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1266497787");
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
        [0] = self.f_box_MultipleAND_v2_17_Out,
    });
    self.box_PreconditionListener_56 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1270049303");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_56_PreconditionMet,
    });
    self.box_RemoveEntity_v2_10 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1286612216");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_10_Out,
    });
    self.box_MultipleAND_v2_22 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1681955338");
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
        [0] = self.f_box_MultipleAND_v2_22_Out,
    });
    self.box_EntityStatusListener_62 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1712419948");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_62_Loaded,
    });
    self.box_UniversalInteractionListener_19 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1774061191");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_19_Interacted,
    });
    self.box_MultipleAND_v2_23 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1795280127");
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
        [0] = self.f_box_MultipleAND_v2_23_Out,
    });
    self.box_PickupListener_v2_14 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1822898731");
    l0:SetConnections({
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_14_PickedUp,
    });
    self.box_EntityStatusListener_61 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1862285490");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_61_Loaded,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1914857556");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|2073150690", "2073150690", "TH_G201", "In", "box_ActivityAcknowledgeGate_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|105934028", "105934028", "TH_G201", "OnLeaveZone", "box_ActivityRetry_8.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_48();
    l0 = self.box_Delay_v5_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1564125407", "1564125407", "TH_G201", "box_Simple_Node_45.Out", "box_Delay_v5_48.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_39_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LockListener_29();
    l0 = self.box_LockListener_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|2099075513", "2099075513", "TH_G201", "box_Simple_Node_39.Out", "box_LockListener_29.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_LockListener_34();
    l0 = self.box_LockListener_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|28266613", "28266613", "TH_G201", "box_Simple_Node_39.Out", "box_LockListener_34.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_28_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_22();
    l0 = self.box_MultipleAND_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1344704939", "1344704939", "TH_G201", "box_Simple_Node_28.Out", "box_MultipleAND_v2_22.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_Simple_Node_63();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1371228899", "1371228899", "TH_G201", "box_Simple_Node_28.Out", "box_Simple_Node_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_AddActivityObjective_v2_16();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1578606340", "1578606340", "TH_G201", "box_Simple_Node_28.Out", "box_AddActivityObjective_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_MultipleAND_v2_17();
    l0 = self.box_MultipleAND_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1162457187", "1162457187", "TH_G201", "box_Simple_Node_28.Out", "box_MultipleAND_v2_17.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LockListener_34();
    l0 = self.box_LockListener_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1046104234", "1046104234", "TH_G201", "box_Simple_Node_63.Out", "box_LockListener_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_LockListener_29();
    l0 = self.box_LockListener_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|243246825", "243246825", "TH_G201", "box_Simple_Node_63.Out", "box_LockListener_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|199552939", "199552939", "TH_G201", "box_Simple_Node_26.Out", "box_MultipleAND_v2_23.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_MultipleAND_v2_17();
    l0 = self.box_MultipleAND_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1995271107", "1995271107", "TH_G201", "box_Simple_Node_26.Out", "box_MultipleAND_v2_17.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
    params = self:OnEnter_box_Delay_v5_46();
    l0 = self.box_Delay_v5_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|878225322", "878225322", "TH_G201", "box_Simple_Node_26.Out", "box_Delay_v5_46.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_32_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_19();
    l0 = self.box_UniversalInteractionListener_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|751734367", "751734367", "TH_G201", "box_Simple_Node_32.Out", "box_UniversalInteractionListener_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_EntityStatusListener_61();
    l0 = self.box_EntityStatusListener_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|637621012", "637621012", "TH_G201", "box_Simple_Node_32.Out", "box_EntityStatusListener_61.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_AddActivityObjective_v2_21();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|544020609", "544020609", "TH_G201", "box_Simple_Node_32.Out", "box_AddActivityObjective_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_EntityStatusListener_62();
    l0 = self.box_EntityStatusListener_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|142171609", "142171609", "TH_G201", "box_Simple_Node_32.Out", "box_EntityStatusListener_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_64_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|893485356", "893485356", "TH_G201", "box_Simple_Node_64.Out", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|67833542", "67833542", "TH_G201", "box_Simple_Node_36.Out", "box_EndActivityObjective_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_55_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_55;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1113541140", "1113541140", "TH_G201", "box_PreconditionListener_55.PreconditionMet", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_46_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_44();
    l0 = self.box_Delay_v5_46;
    l1 = self.box_SoundModifier_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|181426622", "181426622", "TH_G201", "box_Delay_v5_46.TimeElapsed", "box_SoundModifier_v2_44.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_BaseMissionBlock_v2_13_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_GetInventoryItemQuantity_49();
    l0 = self.box_BaseMissionBlock_v2_13;
    l1 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|354171457", "354171457", "TH_G201", "box_BaseMissionBlock_v2_13.Activated", "box_GetInventoryItemQuantity_49.GetNumberOfItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetNumberOfItems
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_39();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|405743384", "405743384", "TH_G201", "box_OutputOrder_v2_33.Out", "box_Simple_Node_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|796535689", "796535689", "TH_G201", "box_OutputOrder_v2_33.Out", "box_Simple_Node_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|504542868", "504542868", "TH_G201", "box_AddActivityObjective_v2_21.Out", "box_OutputOrder_v2_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_26();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1846825534", "1846825534", "TH_G201", "box_OutputOrder_v2_40.Out", "box_Simple_Node_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_52();
    l0 = self.box_PreconditionListener_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|48366368", "48366368", "TH_G201", "box_OutputOrder_v2_40.Out", "box_PreconditionListener_52.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_40_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_51();
    l0 = self.box_PreconditionListener_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1857882216", "1857882216", "TH_G201", "box_OutputOrder_v2_40.Out", "box_PreconditionListener_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityInitialized_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_13();
    l0 = self.box_ActivityInitialized_9;
    l1 = self.box_BaseMissionBlock_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1888331429", "1888331429", "TH_G201", "box_ActivityInitialized_9.Out", "box_BaseMissionBlock_v2_13.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_GetInventoryItemQuantity_49_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_49_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_47();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|638867030", "638867030", "TH_G201", "box_GetInventoryItemQuantity_49.Out", "box_Compare_Integers_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BaseMissionBlock_v2_7_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_10();
    l0 = self.box_BaseMissionBlock_v2_7;
    l1 = self.box_RemoveEntity_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|937307256", "937307256", "TH_G201", "box_BaseMissionBlock_v2_7.Deactivated", "box_RemoveEntity_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PreconditionListener_54_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_54;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1953089885", "1953089885", "TH_G201", "box_PreconditionListener_54.PreconditionMet", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_LockListener_34_Locked()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_35();
    l0 = self.box_LockListener_34;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|360811861", "360811861", "TH_G201", "box_LockListener_34.Locked", "box_Simple_Node_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LockListener_34_Unlocked()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = self.box_LockListener_34;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|2053747336", "2053747336", "TH_G201", "box_LockListener_34.Unlocked", "box_Simple_Node_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1077164954", "1077164954", "TH_G201", "box_AddActivityObjective_v2_11.Out", "box_OutputOrder_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_16_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1012189526", "1012189526", "TH_G201", "box_AddActivityObjective_v2_16.Out", "box_OutputOrder_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_12();
    l0 = self.box_MultipleOR_58;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|96056885", "96056885", "TH_G201", "box_MultipleOR_58.Out", "box_ActivityObjectiveMarkerModifier_v3_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_59_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_43();
    l0 = self.box_MultipleOR_59;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1919278524", "1919278524", "TH_G201", "box_MultipleOR_59.Out", "box_ActivityObjectiveMarkerModifier_v3_43.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_18();
    l0 = self.box_MultipleOR_53;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|2057005296", "2057005296", "TH_G201", "box_MultipleOR_53.Out", "box_ActivityObjectiveMarkerModifier_v3_18.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LockListener_29_Locked()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_30();
    l0 = self.box_LockListener_29;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1905832142", "1905832142", "TH_G201", "box_LockListener_29.Locked", "box_Simple_Node_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LockListener_29_Unlocked()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = self.box_LockListener_29;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|367965324", "367965324", "TH_G201", "box_LockListener_29.Unlocked", "box_Simple_Node_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_51_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_51;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|843273086", "843273086", "TH_G201", "box_PreconditionListener_51.PreconditionMet", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_48_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_41();
    l0 = self.box_Delay_v5_48;
    l1 = self.box_SoundModifier_v2_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|370765307", "370765307", "TH_G201", "box_Delay_v5_48.TimeElapsed", "box_SoundModifier_v2_41.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_PreconditionListener_52_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_52;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1642164746", "1642164746", "TH_G201", "box_PreconditionListener_52.PreconditionMet", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PreconditionListener_57_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_57;
    l1 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|778407247", "778407247", "TH_G201", "box_PreconditionListener_57.PreconditionMet", "box_MultipleOR_59.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StartCelebration_1_Started()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_7();
    l0 = self.box_StartCelebration_1;
    l1 = self.box_BaseMissionBlock_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|296489228", "296489228", "TH_G201", "box_StartCelebration_1.Started", "box_BaseMissionBlock_v2_7.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1151862787", "1151862787", "TH_G201", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1001334451", "1001334451", "TH_G201", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleAND_v2_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_20();
    l0 = self.box_MultipleAND_v2_17;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|740977755", "740977755", "TH_G201", "box_MultipleAND_v2_17.Out", "box_EndActivityObjective_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_56_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_56;
    l1 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1882547391", "1882547391", "TH_G201", "box_PreconditionListener_56.PreconditionMet", "box_MultipleOR_59.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RemoveEntity_v2_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_6();
    l0 = self.box_RemoveEntity_v2_10;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1126645941", "1126645941", "TH_G201", "box_RemoveEntity_v2_10.Out", "box_ActivityEnd_6.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_22();
    l0 = self.box_MultipleAND_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1822367177", "1822367177", "TH_G201", "box_OutputOrder_v2_4.Out", "box_MultipleAND_v2_22.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_54();
    l0 = self.box_PreconditionListener_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1941792647", "1941792647", "TH_G201", "box_OutputOrder_v2_4.Out", "box_PreconditionListener_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_55();
    l0 = self.box_PreconditionListener_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1219905135", "1219905135", "TH_G201", "box_OutputOrder_v2_4.Out", "box_PreconditionListener_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_15();
    l0 = self.box_MultipleAND_v2_22;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|548731574", "548731574", "TH_G201", "box_MultipleAND_v2_22.Out", "box_EndActivityObjective_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_47_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_28();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|931807700", "931807700", "TH_G201", "box_Compare_Integers_47.A_gt_B", "box_Simple_Node_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_47_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1741313", "1741313", "TH_G201", "box_Compare_Integers_47.A_le_B", "box_Simple_Node_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_62_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PickupListener_v2_14();
    l0 = self.box_EntityStatusListener_62;
    l1 = self.box_PickupListener_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|975459681", "975459681", "TH_G201", "box_EntityStatusListener_62.Loaded", "box_PickupListener_v2_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_57();
    l0 = self.box_PreconditionListener_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1951783226", "1951783226", "TH_G201", "box_OutputOrder_v2_42.Out", "box_PreconditionListener_57.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_56();
    l0 = self.box_PreconditionListener_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|2102818939", "2102818939", "TH_G201", "box_OutputOrder_v2_42.Out", "box_PreconditionListener_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_19_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_UniversalInteractionListener_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1778400841", "1778400841", "TH_G201", "box_UniversalInteractionListener_19.Interacted", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_25();
    l0 = self.box_MultipleAND_v2_23;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1612765112", "1612765112", "TH_G201", "box_MultipleAND_v2_23.Out", "box_EndActivityObjective_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|555747533", "555747533", "TH_G201", "box_OutputOrder_v2_24.Out", "box_AddActivityObjective_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|734870101", "734870101", "TH_G201", "box_OutputOrder_v2_24.Out", "box_MultipleAND_v2_23.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_24_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_45();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|2023717166", "2023717166", "TH_G201", "box_OutputOrder_v2_24.Out", "box_Simple_Node_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PickupListener_v2_14_PickedUp()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_28();
    l0 = self.box_PickupListener_v2_14;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|618839115", "618839115", "TH_G201", "box_PickupListener_v2_14.PickedUp", "box_Simple_Node_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_61_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_60();
    l0 = self.box_EntityStatusListener_61;
    l1 = self.box_PhysicsModifier_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1561815272", "1561815272", "TH_G201", "box_EntityStatusListener_61.Loaded", "box_PhysicsModifier_60.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_2_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_1();
    l0 = self.box_StartCelebration_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1675884666", "1675884666", "TH_G201", "box_EndActivityObjective_v2_2.Out", "box_StartCelebration_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_ActivityInitialized_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|926435940", "926435940", "TH_G201", "box_MultipleOR_5.Out", "box_ActivityInitialized_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:OnEnter_box_Simple_Node_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|@CaveSound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_45_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|@DisLockLstn");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_39_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|@KeyObtained");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|@LockLstn");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_63_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|@Lookout");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_26_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|@TH_G2_Start");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_32_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|@Unlocked");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_64_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|@UnlockedCabin");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_55()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015280813251294",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|45110896");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "THG201_Dansky_Cabin",
            item = "THG201_Objective_01",
            id = "730279",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_46()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_13()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160219001695316",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|160535896");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2103113014021472144",
        -- ObjectiveId,
        [2] = {
            section = "THG201_Dansky_Cabin",
            item = "THG201_Objective_01",
            id = "730279",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|225220472");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|278812767");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_21_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "THG201_Dansky_Cabin",
            item = "THG201_Objective_01",
            id = "730279",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|305769678");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
                [2] = self.f_box_OutputOrder_v2_40_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|491384489");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|507848588");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_49_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015280688010344",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_7()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160219001695316",
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_54()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015280812993117",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|604011742");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "THG201_Dansky_Cabin",
            item = "THG201_Objective_01",
            id = "730279",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_LockListener_34()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- lockableEntity,
        [1] = "2103495352442163946",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|658289689");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_11_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "THG201_Dansky_Cabin",
            item = "THG201_Objective_03",
            id = "730281",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|659339330");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2102641858933966144",
        -- ObjectiveId,
        [2] = {
            section = "THG201_Dansky_Cabin",
            item = "THG201_Objective_03",
            id = "730281",
        },
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|693229078");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_16_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "THG201_Dansky_Cabin",
            item = "THG201_Objective_04",
            id = "730282",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_LockListener_29()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- lockableEntity,
        [1] = "2103495352442163945",
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_51()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015280812993117",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|807696569");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_48()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_60()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104092819443429056",
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_52()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015280813251294",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_57()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015280812993117",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_1()
    local params;
    params = {
        -- Preset,
        [0] = "9015219471541668",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_44()
    local params;
    params = {
        -- Pawns,
        [0] = "2103125816297662121",
        -- SoundId,
        [1] = "4109838437",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_41()
    local params;
    params = {
        -- Pawns,
        [0] = "2103125823549613739",
        -- SoundId,
        [1] = "2733962515",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_17()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_56()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015280813251294",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_10()
    local params;
    params = {
        -- Group,
        [0] = "2104755955282505062",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1403211140");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1639605239");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_22()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1710121640");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_47_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_47_A_le_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_49,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_62()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104065391723607317",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1740390366");
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
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
                [2] = self.f_box_OutputOrder_v2_42_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_19()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2101630169052616092",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1781438184");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2103969853854472480",
        -- ObjectiveId,
        [2] = {
            section = "THG201_Dansky_Cabin",
            item = "THG201_Objective_04",
            id = "730282",
        },
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_23()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1819460422");
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

function export:OnEnter_box_PickupListener_v2_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pickupId,
        [1] = "2104065391723607317",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1834589890");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_61()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104092819443429056",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1894355641");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_2_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "THG201_Dansky_Cabin",
            item = "THG201_Objective_04",
            id = "730282",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G201.domino|@TH_G201|1902565201");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "THG201_Dansky_Cabin",
            item = "THG201_Objective_03",
            id = "730281",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnExit_box_GetInventoryItemQuantity_49_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_49 = l0:GetDataOutValue(0);
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
