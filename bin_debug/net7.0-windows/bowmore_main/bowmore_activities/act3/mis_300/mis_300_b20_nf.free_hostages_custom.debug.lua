LUAC�e -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_300/mis_300_b20_nf.domino
-- User graph: Free_Hostages_Custom
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="bCompletePreviousObjectives" Type="Core|bool" />
    <DataIn Name="HostagesToSave" Type="Core|int" />
    <DataIn Name="bRequiresObjective" Type="Core|bool" />
    <DataIn Name="bMinimunHostagesCompletion" Type="Core|bool" />
    <DataIn Name="Hostage_group" Type="Nomad|group" />
    <DataIn Name="Objective" Type="Nomad|oasis" />
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
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/IsEntityInGroup.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StatisticIncrement_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B20_nf.globals.lua");
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B20_nf.Free_Hostages_Custom.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "EnoughDead",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjectives",
                type = "bool",
            },
            [1] = {
                name = "bMinimunHostagesCompletion",
                type = "bool",
            },
            [2] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "Hostage_group",
                type = "group",
            },
            [4] = {
                name = "HostagesToSave",
                type = "int",
            },
            [5] = {
                name = "Objective",
                type = "oasis",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "HostagesSaved",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")] = {
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
                name = "Entities",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/StatisticIncrement_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Increment",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Incremented",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "increment",
                type = "int",
            },
            [1] = {
                name = "name",
                type = "string",
            },
            [2] = {
                name = "statisticDbObject",
                type = "database",
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
    self._name = "Free_Hostages_Custom";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom";
    self.Started = DummyFunction;
    self.Success = DummyFunction;
    self.Fail = DummyFunction;
    self.saved_hostages = 0;
    self.iTotalMinusKilled = 0;
    self.i_min_hostages = 0;
    self.eMemberRemoved = nil;
    self.initial_hostage_number = 0;
    self.hostage_remaining = 0;
    self.active_hostage = 0;
    self.eVictim = nil;
    self.hostages_total = 0;
    self.hostages_killed = 0;
    self.box_MultipleOR_65 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|19873060");
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
        [0] = self.f_box_MultipleOR_65_Out,
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|71392091");
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
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|76458598");
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
    self.box_OnceOnly_v3_84 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|146134083");
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
                [0] = self.f_box_OnceOnly_v3_84_Out_0,
            },
            count = 2,
        },
    });
    self.box_GroupSizeListener_v6_56 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|276237632");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_56_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_56_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_56_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_56_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_56_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_56_MemberSpawned,
    });
    self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|313378139");
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
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|644985398");
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
    self.box_MultipleOR_54 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|647237019");
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
        [0] = self.f_box_MultipleOR_54_Out,
    });
    self.box_MultipleOR_79 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|740899995");
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
        [0] = self.f_box_MultipleOR_79_Out,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1097346977");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_GroupSizeListener_v6_41 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1336549015");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_41_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_41_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_41_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_41_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_41_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_41_MemberSpawned,
    });
    self.box_MultipleOR_73 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1343623100");
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
        [0] = self.f_box_MultipleOR_73_Out,
    });
    self.box_MultipleOR_70 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1351672947");
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
        [0] = self.f_box_MultipleOR_70_Out,
    });
    self.box_Gate_v3_25 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1372130897");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_25_Out,
    });
    self.box_HealthListener_v6_39 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1417448398");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_39_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_39_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_39_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_39_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_39_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_39_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_39_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_39_Revived,
    });
    self.box_HealthListener_v6_9 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1427561455");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_9_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_9_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_9_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_9_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_9_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_9_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_9_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_9_Revived,
    });
    self.box_GroupSizeListener_v6_67 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1498306489");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_67_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_67_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_67_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_67_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_67_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_67_MemberSpawned,
    });
    self.box_MultipleOR_85 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1503230870");
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
        [0] = self.f_box_MultipleOR_85_Out,
    });
    self.box_MultipleOR_47 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1526064561");
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
        [0] = self.f_box_MultipleOR_47_Out,
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1596818673");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
    self.box_OnceOnly_v3_13 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1729630038");
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
                [0] = self.f_box_OnceOnly_v3_13_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_6 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1792434996");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_6_Out,
    });
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_SetInteger_v2_23();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|189323167", "189323167", "Free_Hostages_Custom", "Enable", "box_SetInteger_v2_23.FromInteger", self, l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:EnoughDead()
    local l0;
    l0 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1151858979", "1151858979", "Free_Hostages_Custom", "EnoughDead", "box_MultipleOR_85.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_83_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|726671602", "726671602", "Free_Hostages_Custom", "box_Simple_Node_83.Out", "box_MultipleOR_65.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_81_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1624917765", "1624917765", "Free_Hostages_Custom", "box_Simple_Node_81.Out", "box_MultipleOR_47.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|453416769", "453416769", "Free_Hostages_Custom", "box_Simple_Node_81.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_82_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1908230889", "1908230889", "Free_Hostages_Custom", "box_Simple_Node_82.Out", "box_MultipleOR_54.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|458281409", "458281409", "Free_Hostages_Custom", "box_Simple_Node_82.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_80_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|108144063", "108144063", "Free_Hostages_Custom", "box_Simple_Node_80.Out", "box_MultipleOR_65.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_65_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_75();
    l0 = self.box_MultipleOR_65;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|215451920", "215451920", "Free_Hostages_Custom", "box_MultipleOR_65.Out", "box_Compare_Integers_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_15_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_15_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|878435034", "878435034", "Free_Hostages_Custom", "box_IntegerArithmetics_v2_15.Out", "box_Simple_Node_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_71();
    l0 = self.box_MultipleOR_33;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|937397098", "937397098", "Free_Hostages_Custom", "box_MultipleOR_33.Out", "box_Compare_Boolean_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = self.box_MultipleOR_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1202820114", "1202820114", "Free_Hostages_Custom", "box_MultipleOR_27.Out", "box_OutputOrder_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_40_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_40_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1776476614", "1776476614", "Free_Hostages_Custom", "box_SetInteger_v2_40.Out", "box_OutputOrder_v2_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_24_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|840850882", "840850882", "Free_Hostages_Custom", "box_Compare_Boolean_24.A_is_False", "Started", clone:GetLuaBox(), self);
    self:Started();
end;

function export:f_box_Compare_Boolean_24_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|802749578", "802749578", "Free_Hostages_Custom", "box_Compare_Boolean_24.A_is_True", "box_OnceOnly_v3_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_84_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_OnceOnly_v3_84;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|2081799268", "2081799268", "Free_Hostages_Custom", "box_OnceOnly_v3_84.Out", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_16_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_16_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_40();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1221752334", "1221752334", "Free_Hostages_Custom", "box_SetInteger_v2_16.Out", "box_SetInteger_v2_40.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|183910058", "183910058", "Free_Hostages_Custom", "box_OutputOrder_v2_68.Out", "box_Print_v2_2.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveFromGroup_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1113592011", "1113592011", "Free_Hostages_Custom", "box_OutputOrder_v2_68.Out", "box_RemoveFromGroup_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjectiveProgress_v2_62_Out()
    local l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_62_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1559779696", "1559779696", "Free_Hostages_Custom", "box_AddActivityObjectiveProgress_v2_62.Out", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v6_56_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_22();
    l0 = self.box_GroupSizeListener_v6_56;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|2106347586", "2106347586", "Free_Hostages_Custom", "box_GroupSizeListener_v6_56.Disabled", "box_Print_v2_22.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_56_Enabled()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v6_56_Enabled();
    params = self:OnEnter_box_SetInteger_v2_16();
    l0 = self.box_GroupSizeListener_v6_56;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1159765004", "1159765004", "Free_Hostages_Custom", "box_GroupSizeListener_v6_56.Enabled", "box_SetInteger_v2_16.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_56_MemberAdded()
    self:OnExit_box_GroupSizeListener_v6_56_MemberAdded();
end;

function export:f_box_GroupSizeListener_v6_56_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_56_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_56_MemberRemoved()
    self:OnExit_box_GroupSizeListener_v6_56_MemberRemoved();
end;

function export:f_box_GroupSizeListener_v6_56_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_56_MemberSpawned();
end;

function export:f_box_AddActivityObjective_v2_77_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|269851764", "269851764", "Free_Hostages_Custom", "box_AddActivityObjective_v2_77.Out", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StatisticIncrement_v2_43_Incremented()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_31();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1612697297", "1612697297", "Free_Hostages_Custom", "box_StatisticIncrement_v2_43.Incremented", "box_SetInteger_v2_31.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_64();
    l0 = self.box_MultipleOR_48;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1162775075", "1162775075", "Free_Hostages_Custom", "box_MultipleOR_48.Out", "box_Compare_Integers_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjectiveProgress_v2_66_Out()
    local l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_66_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1260223054", "1260223054", "Free_Hostages_Custom", "box_AddActivityObjectiveProgress_v2_66.Out", "box_MultipleOR_70.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EndActivityObjective_v2_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_10();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1239506657", "1239506657", "Free_Hostages_Custom", "box_EndActivityObjective_v2_14.Out", "box_SetInteger_v2_10.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_6();
    l0 = self.box_Gate_v3_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1097382462", "1097382462", "Free_Hostages_Custom", "box_OutputOrder_v2_21.Out", "box_Gate_v3_6.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_25();
    l0 = self.box_Gate_v3_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1123526399", "1123526399", "Free_Hostages_Custom", "box_OutputOrder_v2_21.Out", "box_Gate_v3_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_IntegerArithmetics_v2_26_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_26_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1434984932", "1434984932", "Free_Hostages_Custom", "box_IntegerArithmetics_v2_26.Out", "box_OutputOrder_v2_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_56();
    l0 = self.box_GroupSizeListener_v6_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1063923728", "1063923728", "Free_Hostages_Custom", "box_OutputOrder_v2_69.Out", "box_GroupSizeListener_v6_56.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_24();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1597034722", "1597034722", "Free_Hostages_Custom", "box_OutputOrder_v2_69.Out", "box_Compare_Boolean_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_67();
    l0 = self.box_GroupSizeListener_v6_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|228499956", "228499956", "Free_Hostages_Custom", "box_OutputOrder_v2_69.Out", "box_GroupSizeListener_v6_67.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_69_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_9();
    l0 = self.box_HealthListener_v6_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1696686050", "1696686050", "Free_Hostages_Custom", "box_OutputOrder_v2_69.Out", "box_HealthListener_v6_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_RemoveFromGroup_v2_3_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_26();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1240550240", "1240550240", "Free_Hostages_Custom", "box_RemoveFromGroup_v2_3.Out", "box_IntegerArithmetics_v2_26.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_60_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_50();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1978603299", "1978603299", "Free_Hostages_Custom", "box_Compare_Boolean_60.A_is_False", "box_Compare_Integers_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_60_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1017850588", "1017850588", "Free_Hostages_Custom", "box_Compare_Boolean_60.A_is_True", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_75_A_gt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|311217890", "311217890", "Free_Hostages_Custom", "box_Compare_Integers_75.A_gt_B", "box_MultipleOR_70.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityInGroup_53_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_34();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1958731527", "1958731527", "Free_Hostages_Custom", "box_IsEntityInGroup_53.False", "box_IntegerArithmetics_v2_34.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_MultipleOR_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|302597736", "302597736", "Free_Hostages_Custom", "box_MultipleOR_5.Out", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_15();
    l0 = self.box_MultipleOR_54;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|2084343376", "2084343376", "Free_Hostages_Custom", "box_MultipleOR_54.Out", "box_IntegerArithmetics_v2_15.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_6();
    l0 = self.box_Gate_v3_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1816607938", "1816607938", "Free_Hostages_Custom", "box_OutputOrder_v2_44.Out", "box_Gate_v3_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_25();
    l0 = self.box_Gate_v3_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1490530502", "1490530502", "Free_Hostages_Custom", "box_OutputOrder_v2_44.Out", "box_Gate_v3_25.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_79_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_12();
    l0 = self.box_MultipleOR_79;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|360380887", "360380887", "Free_Hostages_Custom", "box_MultipleOR_79.Out", "box_EndActivityObjective_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_49_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1842982123", "1842982123", "Free_Hostages_Custom", "box_AddActivityObjective_v2_49.Out", "box_OutputOrder_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_64_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_11();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1962514121", "1962514121", "Free_Hostages_Custom", "box_Compare_Integers_64.A_gt_B", "box_IntegerArithmetics_v2_11.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_76_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|966105917", "966105917", "Free_Hostages_Custom", "box_AddActivityObjective_v2_76.Out", "Started", clone:GetLuaBox(), self);
    self:Started();
end;

function export:f_box_SetInteger_v2_10_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|648000182", "648000182", "Free_Hostages_Custom", "box_SetInteger_v2_10.Out", "Fail", clone:GetLuaBox(), self);
    self:Fail();
end;

function export:f_box_Compare_Integers_35_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|598228302", "598228302", "Free_Hostages_Custom", "box_Compare_Integers_35.A_ge_B", "box_MultipleOR_73.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_83();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|738740661", "738740661", "Free_Hostages_Custom", "box_OutputOrder_v2_7.Out", "box_Simple_Node_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1306249461", "1306249461", "Free_Hostages_Custom", "box_OutputOrder_v2_7.Out", "box_Delay_v5_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Integers_50_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_46();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|856922443", "856922443", "Free_Hostages_Custom", "box_Compare_Integers_50.A_eq_B", "box_Compare_Integers_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_34_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_34_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1627715037", "1627715037", "Free_Hostages_Custom", "box_IntegerArithmetics_v2_34.Out", "box_OutputOrder_v2_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_35();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|617003478", "617003478", "Free_Hostages_Custom", "box_OutputOrder_v2_8.Out", "box_Compare_Integers_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_58();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1483427586", "1483427586", "Free_Hostages_Custom", "box_OutputOrder_v2_8.Out", "box_Compare_Integers_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_78();
    l0 = self.box_Delay_v5_20;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1718558609", "1718558609", "Free_Hostages_Custom", "box_Delay_v5_20.TimeElapsed", "box_Compare_Boolean_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_57();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1806650329", "1806650329", "Free_Hostages_Custom", "box_OutputOrder_v2_45.Out", "box_Print_v2_57.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|83340950", "83340950", "Free_Hostages_Custom", "box_OutputOrder_v2_45.Out", "box_MultipleOR_54.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_45_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_38();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1272666386", "1272666386", "Free_Hostages_Custom", "box_OutputOrder_v2_45.Out", "box_IntegerArithmetics_v2_38.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_23_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_23_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_36();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|753665895", "753665895", "Free_Hostages_Custom", "box_SetInteger_v2_23.Out", "box_SetInteger_v2_36.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_71_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_30();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1144069086", "1144069086", "Free_Hostages_Custom", "box_Compare_Boolean_71.A_is_False", "box_SetActivityObjectiveProgress_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_41_MemberAdded()
    self:OnExit_box_GroupSizeListener_v6_41_MemberAdded();
end;

function export:f_box_GroupSizeListener_v6_41_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_41_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_41_MemberRemoved()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v6_41_MemberRemoved();
    params = self:OnEnter_box_IsEntityInGroup_53();
    l0 = self.box_GroupSizeListener_v6_41;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|834134072", "834134072", "Free_Hostages_Custom", "box_GroupSizeListener_v6_41.MemberRemoved", "box_IsEntityInGroup_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_41_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_41_MemberSpawned();
end;

function export:f_box_MultipleOR_73_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_MultipleOR_73;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|976277061", "976277061", "Free_Hostages_Custom", "box_MultipleOR_73.Out", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_51();
    l0 = self.box_MultipleOR_70;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1750533271", "1750533271", "Free_Hostages_Custom", "box_MultipleOR_70.Out", "box_SetActivityObjectiveProgress_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_Gate_v3_25;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|17908565", "17908565", "Free_Hostages_Custom", "box_Gate_v3_25.Out", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_39_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_59();
    l0 = self.box_HealthListener_v6_39;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|90282489", "90282489", "Free_Hostages_Custom", "box_HealthListener_v6_39.Killed", "box_RemoveFromGroup_v2_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_39_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_18();
    l0 = self.box_HealthListener_v6_39;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|674378944", "674378944", "Free_Hostages_Custom", "box_HealthListener_v6_39.Revived", "box_RemoveFromGroup_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_9_Critical()
    self:OnExit_box_HealthListener_v6_9_Critical();
end;

function export:f_box_HealthListener_v6_9_Damaged()
    self:OnExit_box_HealthListener_v6_9_Damaged();
end;

function export:f_box_HealthListener_v6_9_Downed()
    local params, l0, l1;
    self:OnExit_box_HealthListener_v6_9_Downed();
    params = self:OnEnter_box_GroupAddToGroup_v2_42();
    l0 = self.box_HealthListener_v6_9;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1332067603", "1332067603", "Free_Hostages_Custom", "box_HealthListener_v6_9.Downed", "box_GroupAddToGroup_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_9_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_41();
    l0 = self.box_HealthListener_v6_9;
    l1 = self.box_GroupSizeListener_v6_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|498385694", "498385694", "Free_Hostages_Custom", "box_HealthListener_v6_9.Enabled", "box_GroupSizeListener_v6_41.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_9_Healed()
    self:OnExit_box_HealthListener_v6_9_Healed();
end;

function export:f_box_HealthListener_v6_9_Killed()
    local params, l0, l1;
    self:OnExit_box_HealthListener_v6_9_Killed();
    params = self:OnEnter_box_RemoveFromGroup_v2_74();
    l0 = self.box_HealthListener_v6_9;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|365865660", "365865660", "Free_Hostages_Custom", "box_HealthListener_v6_9.Killed", "box_RemoveFromGroup_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_9_Revived()
    self:OnExit_box_HealthListener_v6_9_Revived();
end;

function export:f_box_SetInteger_v2_61_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_61_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_17();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|889942080", "889942080", "Free_Hostages_Custom", "box_SetInteger_v2_61.Out", "box_Compare_Integers_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_11_Out()
    local l0;
    self:OnExit_box_IntegerArithmetics_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1868974517", "1868974517", "Free_Hostages_Custom", "box_IntegerArithmetics_v2_11.Out", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_4_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_62();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1026484758", "1026484758", "Free_Hostages_Custom", "box_Compare_Boolean_4.A_is_False", "box_AddActivityObjectiveProgress_v2_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_31_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_31_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1782006597", "1782006597", "Free_Hostages_Custom", "box_SetInteger_v2_31.Out", "Success", clone:GetLuaBox(), self);
    self:Success();
end;

function export:f_box_GroupSizeListener_v6_67_Enabled()
    self:OnExit_box_GroupSizeListener_v6_67_Enabled();
end;

function export:f_box_GroupSizeListener_v6_67_MemberAdded()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v6_67_MemberAdded();
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = self.box_GroupSizeListener_v6_67;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1556050402", "1556050402", "Free_Hostages_Custom", "box_GroupSizeListener_v6_67.MemberAdded", "box_OutputOrder_v2_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_67_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_67_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_67_MemberRemoved()
    self:OnExit_box_GroupSizeListener_v6_67_MemberRemoved();
end;

function export:f_box_GroupSizeListener_v6_67_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_67_MemberSpawned();
end;

function export:f_box_MultipleOR_85_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_85;
    l1 = self.box_OnceOnly_v3_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|782133060", "782133060", "Free_Hostages_Custom", "box_MultipleOR_85.Out", "box_OnceOnly_v3_84.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = self.box_MultipleOR_47;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|865780164", "865780164", "Free_Hostages_Custom", "box_MultipleOR_47.Out", "box_OutputOrder_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_66();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1176037908", "1176037908", "Free_Hostages_Custom", "box_OutputOrder_v2_1.Out", "box_AddActivityObjectiveProgress_v2_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|211498547", "211498547", "Free_Hostages_Custom", "box_OutputOrder_v2_1.Out", "Started", clone:GetLuaBox(), self);
    self:Started();
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_19;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|2143766714", "2143766714", "Free_Hostages_Custom", "box_Delay_v5_19.TimeElapsed", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IntegerArithmetics_v2_38_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_38_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_81();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1343142634", "1343142634", "Free_Hostages_Custom", "box_IntegerArithmetics_v2_38.Out", "box_Simple_Node_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_63_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_60();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1881474882", "1881474882", "Free_Hostages_Custom", "box_OutputOrder_v2_63.Out", "box_Compare_Boolean_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_32();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1119689716", "1119689716", "Free_Hostages_Custom", "box_OutputOrder_v2_63.Out", "box_Print_v2_32.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_83();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1262810765", "1262810765", "Free_Hostages_Custom", "box_OutputOrder_v2_28.Out", "box_Simple_Node_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|865859368", "865859368", "Free_Hostages_Custom", "box_OutputOrder_v2_28.Out", "box_Delay_v5_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_4();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1226845140", "1226845140", "Free_Hostages_Custom", "box_OutputOrder_v2_29.Out", "box_Compare_Boolean_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_49();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|2068751060", "2068751060", "Free_Hostages_Custom", "box_OutputOrder_v2_29.Out", "box_AddActivityObjective_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_13_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_61();
    l0 = self.box_OnceOnly_v3_13;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1497588592", "1497588592", "Free_Hostages_Custom", "box_OnceOnly_v3_13.Out", "box_SetInteger_v2_61.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_82();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1750583109", "1750583109", "Free_Hostages_Custom", "box_OutputOrder_v2_52.Out", "box_Simple_Node_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|669620393", "669620393", "Free_Hostages_Custom", "box_OutputOrder_v2_52.Out", "box_MultipleOR_47.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_58_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1169955740", "1169955740", "Free_Hostages_Custom", "box_Compare_Integers_58.A_lt_B", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_6_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_6;
    l1 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1190651575", "1190651575", "Free_Hostages_Custom", "box_Gate_v3_6.Out", "box_MultipleOR_85.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_46_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|958624696", "958624696", "Free_Hostages_Custom", "box_Compare_Integers_46.A_ge_B", "box_MultipleOR_73.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_46_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|702327125", "702327125", "Free_Hostages_Custom", "box_Compare_Integers_46.A_lt_B", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_17_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_76();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1835882453", "1835882453", "Free_Hostages_Custom", "box_Compare_Integers_17.A_eq_B", "box_AddActivityObjective_v2_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_17_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_37();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|2086384170", "2086384170", "Free_Hostages_Custom", "box_Compare_Integers_17.A_gt_B", "box_Compare_Boolean_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_37_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_77();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|583314326", "583314326", "Free_Hostages_Custom", "box_Compare_Boolean_37.A_is_False", "box_AddActivityObjective_v2_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_37_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|2022993023", "2022993023", "Free_Hostages_Custom", "box_Compare_Boolean_37.A_is_True", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_78_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_55();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|39817955", "39817955", "Free_Hostages_Custom", "box_Compare_Boolean_78.A_is_False", "box_EndActivityObjective_v2_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_78_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|677922163", "677922163", "Free_Hostages_Custom", "box_Compare_Boolean_78.A_is_True", "box_MultipleOR_79.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_55_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_14();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|582901995", "582901995", "Free_Hostages_Custom", "box_EndActivityObjective_v2_55.Out", "box_EndActivityObjective_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_12_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_72();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|94437458", "94437458", "Free_Hostages_Custom", "box_EndActivityObjective_v2_12.Out", "box_EndActivityObjective_v2_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupAddToGroup_v2_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_39();
    l0 = self.box_HealthListener_v6_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|750148233", "750148233", "Free_Hostages_Custom", "box_GroupAddToGroup_v2_42.Out", "box_HealthListener_v6_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_72_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StatisticIncrement_v2_43();
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|15156476", "15156476", "Free_Hostages_Custom", "box_EndActivityObjective_v2_72.Out", "box_StatisticIncrement_v2_43.Increment", clone:GetLuaBox(), l0:GetLuaBox());
    -- Increment
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_36_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_36_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_56();
    l0 = self.box_GroupSizeListener_v6_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1545732231", "1545732231", "Free_Hostages_Custom", "box_SetInteger_v2_36.Out", "box_GroupSizeListener_v6_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|@cleanup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_83_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|@n_hostagekill");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_81_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|@n_hostagesaved");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_82_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|@objectiveUpdate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_80_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|64845171");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_15_Out,
    });
    params = {
        -- A,
        [0] = self.hostage_remaining,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|92448852");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_40_Out,
    });
    params = {
        -- Integer,
        [1] = self.hostages_total,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|97212081");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_24_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_24_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRequiresObjective,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|157294697");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_16_Out,
    });
    params = {
        -- Integer,
        [1] = self.hostages_total,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|168776622");
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
                [0] = self.f_box_OutputOrder_v2_68_Out_0,
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|245233446");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_62_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT01_040_B10_Progress",
            id = "461520",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = self.hostages_total,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_56()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = self.Hostage_group,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|288590658");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_77_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT01_040_B10_Progress",
            id = "461520",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_StatisticIncrement_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StatisticIncrement_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|289380574");
    l0:SetConnections({
        -- Incremented,
        [0] = self.f_box_StatisticIncrement_v2_43_Incremented,
    });
    params = {
        -- increment,
        [0] = 1,
        -- name,
        [1] = "General_HostageQuestsCompleted",
        -- statisticDbObject,
        [2] = nil,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|314173994");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_66_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = self.Objective,
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = self.hostages_total,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|329726272");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_14_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = self.Objective,
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|438050090");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.hostage_remaining,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Hostage Remaining",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|452932293");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|485254022");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_26_Out,
    });
    params = {
        -- A,
        [0] = self.saved_hostages,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|528194993");
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
                [0] = self.f_box_OutputOrder_v2_69_Out_0,
                [1] = self.f_box_OutputOrder_v2_69_Out_1,
                [2] = self.f_box_OutputOrder_v2_69_Out_2,
                [3] = self.f_box_OutputOrder_v2_69_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|550673282");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveFromGroup_v2_3_Out,
    });
    l0 = self.box_GroupSizeListener_v6_67;
    params = {
        -- Entities,
        [0] = l0:GetDataOutValue(0),
        -- Group,
        [1] = self.Hostage_group,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|559199179");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_60_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_60_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bMinimunHostagesCompletion,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|597819019");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_75_A_gt_B,
    });
    params = {
        -- A,
        [0] = self.hostages_total,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|610756561");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityInGroup_53_False,
    });
    params = {
        -- Entity,
        [0] = self.eMemberRemoved,
        -- Group,
        [1] = "#BEC33A93",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|647470115");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = self.eVictim,
        -- Group,
        [1] = self.Hostage_group,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|676357970");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [1] = self.f_box_OutputOrder_v2_44_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|712584170");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT01_040_B10_Progress",
            id = "461520",
        },
        -- Progress,
        [1] = self.initial_hostage_number,
        -- ProgressId,
        [2] = self._sld_ProgressId_box_AddActivityObjectiveProgress_v2_62,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|757520357");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_49_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = self.bCompletePreviousObjectives,
        -- ObjectiveId,
        [1] = self.Objective,
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|778217745");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = self.Objective,
        -- Progress,
        [1] = self.saved_hostages,
        -- ProgressId,
        [2] = self._sld_ProgressId_box_AddActivityObjectiveProgress_v2_66,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|807307544");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_64_A_gt_B,
    });
    params = {
        -- A,
        [0] = self.hostages_total,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|831786341");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_76_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = self.bCompletePreviousObjectives,
        -- ObjectiveId,
        [1] = self.Objective,
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|879668870");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_10_Out,
    });
    params = {
        -- Integer,
        [1] = self.saved_hostages,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|888723225");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_35_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.saved_hostages,
        -- B,
        [1] = self.i_min_hostages,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|892514665");
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

function export:OnEnter_box_Compare_Integers_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|924425269");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_50_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.hostage_remaining,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1051849406");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.active_hostage,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "activehostage",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1079873159");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_34_Out,
    });
    params = {
        -- A,
        [0] = 1,
        -- B,
        [1] = self.hostages_killed,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1095647499");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1222470910");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
                [2] = self.f_box_OutputOrder_v2_45_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1263919846");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_23_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1310880259");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_71_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bMinimunHostagesCompletion,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_41()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = self.Hostage_group,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_25()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_39()
    local params, l0;
    l0 = self.box_HealthListener_v6_9;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = l0:GetDataOutValue(6),
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_9()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.Hostage_group,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1451394501");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_61_Out,
    });
    params = {
        -- Integer,
        [1] = self.hostages_total,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1476966172");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_11_Out,
    });
    params = {
        -- A,
        [0] = self.initial_hostage_number,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1493508305");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_4_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bMinimunHostagesCompletion,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1494953858");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_31_Out,
    });
    params = {
        -- Integer,
        [1] = self.saved_hostages,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_67()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#BEC33A93",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1535042099");
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

function export:OnEnter_box_Print_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1589391316");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.hostages_total,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Hostages_to_Save",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1607872588");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_38_Out,
    });
    params = {
        -- A,
        [0] = self.hostages_total,
        -- B,
        [1] = self.hostages_killed,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1647489939");
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
                [0] = self.f_box_OutputOrder_v2_63_Out_0,
                [1] = self.f_box_OutputOrder_v2_63_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1657747406");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1676475147");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.hostages_killed,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "hostage_killed",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1723217006");
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

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1752521533");
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
                [0] = self.f_box_OutputOrder_v2_52_Out_0,
                [1] = self.f_box_OutputOrder_v2_52_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1774316205");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_58_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iTotalMinusKilled,
        -- B,
        [1] = self.i_min_hostages,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_6()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1824222326");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_46_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_46_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.saved_hostages,
        -- B,
        [1] = self.i_min_hostages,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1848163449");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_17_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_17_A_gt_B,
    });
    params = {
        -- A,
        [0] = self.hostages_total,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1901258680");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_37_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_37_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bMinimunHostagesCompletion,
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_18()
    local params, l0;
    DrawTextToScreen("Comment: Removed from DOWNED", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RemoveFromGroup_v2')-- Comment: Removed from DOWNED");
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1912383504");
    l0:SetConnections({
    });
    l0 = self.box_HealthListener_v6_39;
    params = {
        -- Entities,
        [0] = l0:GetDataOutValue(6),
        -- Group,
        [1] = "#DF3148DF",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1921750365");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_78_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_78_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.MIS_300_B20_nf.bHostageEnoughSaved,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1927384543");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_55_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT01_040_B10_Progress",
            id = "461520",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_59()
    local params, l0;
    DrawTextToScreen("Comment: Removed from DOWNED", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RemoveFromGroup_v2')-- Comment: Removed from DOWNED");
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|1991062434");
    l0:SetConnections({
    });
    l0 = self.box_HealthListener_v6_39;
    params = {
        -- Entities,
        [0] = l0:GetDataOutValue(6),
        -- Group,
        [1] = "#DF3148DF",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|2019952667");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_12_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT01_040_B10_Progress",
            id = "461520",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|2107918376");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_42_Out,
    });
    l0 = self.box_HealthListener_v6_9;
    params = {
        -- FromGroup,
        [0] = l0:GetDataOutValue(6),
        -- ToGroup,
        [1] = "#DF3148DF",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|2117526529");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_72_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = self.Objective,
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@Free_Hostages_Custom|2136645781");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_36_Out,
    });
    params = {
        -- Integer,
        [1] = self.HostagesToSave,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnExit_box_IntegerArithmetics_v2_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.hostage_remaining = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_40_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iTotalMinusKilled = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.hostage_remaining = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_62_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self._sld_ProgressId_box_AddActivityObjectiveProgress_v2_62 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_56_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_56;
    self.hostages_total = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_56_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_56;
    self.hostages_total = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_56_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_56;
    self.hostages_total = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_56_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_56;
    self.hostages_total = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_56_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_56;
    self.hostages_total = l0:GetDataOutValue(1);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_66_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self._sld_ProgressId_box_AddActivityObjectiveProgress_v2_66 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_26_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.saved_hostages = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.HostagesSaved = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_34_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.hostages_killed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.saved_hostages = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_41_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_41;
    self.eMemberRemoved = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_41_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_41;
    self.eMemberRemoved = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_41_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_41;
    self.eMemberRemoved = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_41_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_41;
    self.eMemberRemoved = l0:GetDataOutValue(0);
end;

function export:OnExit_box_HealthListener_v6_9_Critical()
    local l0, l1;
    l0 = self.box_HealthListener_v6_9;
    l1 = self.box_HealthListener_v6_39;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(6);
    self.eVictim = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_9_Damaged()
    local l0, l1;
    l0 = self.box_HealthListener_v6_9;
    l1 = self.box_HealthListener_v6_39;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(6);
    self.eVictim = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_9_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_9;
    l1 = self.box_HealthListener_v6_39;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(6);
    self.eVictim = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_9_Healed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_9;
    l1 = self.box_HealthListener_v6_39;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(6);
    self.eVictim = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_9_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_9;
    l1 = self.box_HealthListener_v6_39;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(6);
    self.eVictim = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_9_Revived()
    local l0, l1;
    l0 = self.box_HealthListener_v6_9;
    l1 = self.box_HealthListener_v6_39;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(6);
    self.eVictim = l0:GetDataOutValue(6);
end;

function export:OnExit_box_SetInteger_v2_61_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.initial_hostage_number = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.initial_hostage_number = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.HostagesSaved = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_67_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_67;
    self.active_hostage = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_67_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_67;
    self.active_hostage = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_67_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_67;
    self.active_hostage = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_67_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_67;
    self.active_hostage = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_67_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_67;
    self.active_hostage = l0:GetDataOutValue(1);
end;

function export:OnExit_box_IntegerArithmetics_v2_38_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iTotalMinusKilled = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_36_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_min_hostages = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Started()
    
end;
function export:Success()
    
end;
function export:Fail()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="EnoughDead" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Fail" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Started" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Success" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="bCompletePreviousObjectives" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="bMinimunHostagesCompletion" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="bRequiresObjective" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="Hostage_group" AnchorDynType="0" DataTypeID="group" />
		<DataIn Name="HostagesToSave" AnchorDynType="0" DataTypeID="int" />
		<DataIn Name="Objective" AnchorDynType="0" DataTypeID="oasis" />
	</DatasIn>
	<DatasOut>
		<DataOut Name="HostagesSaved" AnchorDynType="0" DataTypeID="int" />
	</DatasOut>
</DominoMetadata>
