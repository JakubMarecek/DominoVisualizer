LUACu�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_230/mis_230_b25.domino
-- User graph: MIS_230_B25_BearManager
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eSTP" Type="Nomad|entity{}" />
    <DataIn Name="gBear" Type="Nomad|group" />
    <DataIn Name="eCS" Type="Nomad|entity{}" />
    <DataIn Name="DamageTreshold" Type="Core|float" />
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DiplayTextModifier_v6.lua");
        cboxRes:RegisterBox("Domino/System/FloatArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupIter.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PawnDeathIntoParticle_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_SFX_Bear.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[newparticles/90080146990270032.part]], "CParticlesSystemParamResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_B25_BearManager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "DamageTreshold",
                type = "float",
            },
            [1] = {
                name = "eCS",
                type = "entity",
            },
            [2] = {
                name = "eSTP",
                type = "entity",
            },
            [3] = {
                name = "gBear",
                type = "group",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/ContextualActionListener.lua")] = {
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
                name = "Available",
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
                name = "End",
                delayed = true,
            },
            [4] = {
                name = "Interrupt",
                delayed = true,
            },
            [5] = {
                name = "Markup1",
                delayed = true,
            },
            [6] = {
                name = "Markup2",
                delayed = true,
            },
            [7] = {
                name = "Select",
                delayed = true,
            },
            [8] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "InCAIndex",
                type = "int",
            },
            [2] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "OutCAIndex",
                type = "int",
            },
            [1] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "CallForceNormalEnd",
            },
            [1] = {
                name = "CallInterrupt",
            },
            [2] = {
                name = "Disable",
            },
            [3] = {
                name = "Enable",
            },
            [4] = {
                name = "Use",
            },
        },
        controlInCount = 5,
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
                name = "ForceNormalEndCalled",
                delayed = false,
            },
            [3] = {
                name = "InterruptCalled",
                delayed = false,
            },
            [4] = {
                name = "UseCalled",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "ContextualActionIndex",
                type = "int",
            },
            [2] = {
                name = "Entity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/DiplayTextModifier_v6.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ClearText",
            },
            [1] = {
                name = "DisplayText",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "TextCleared",
                delayed = false,
            },
            [1] = {
                name = "TextDisplayed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "displayOverCinematic",
                type = "bool",
            },
            [1] = {
                name = "displayTimer",
                type = "float",
            },
            [2] = {
                name = "forceInstantDisplay",
                type = "bool",
            },
            [3] = {
                name = "isKarmaEvent",
                type = "bool",
            },
            [4] = {
                name = "textId",
                type = "oasis",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/PawnDeathIntoParticle_v2.lua")] = {
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
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "particle",
                type = "particle",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "timeToParticle",
                type = "float",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_SFX_Bear.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Appear",
            },
            [1] = {
                name = "Roar",
            },
            [2] = {
                name = "Vanish",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = false,
            },
            [1] = {
                name = "Out",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_230_B25_BearManager";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager";
    self.Finished = DummyFunction;
    self.BearGRPCount = 0;
    self.Bear_DamageCount = 0;
    self.bear = nil;
    self.box_OnceOnly_v3_3 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|196084715");
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
    self.box_MIS_230_COMMON_SFX_Bear_9 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_SFX_Bear.debug.lua");
    l0 = self.box_MIS_230_COMMON_SFX_Bear_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_COMMON_SFX_Bear_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|528342146");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_230_COMMON_SFX_Bear_9_Out,
    });
    self.box_ContextualActionListener_8 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|763975945");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_8_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_8_End,
    });
    self.box_GroupIter_13 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|815624882");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_13_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_13_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_13_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_13_Stopped,
    });
    self.box_HealthListener_v6_14 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1026711712");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_14_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_14_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_14_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_14_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_14_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_14_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_14_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_14_Revived,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1382173966");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_PawnDeathIntoParticle_v2_18 = cbox:CreateBox("Domino/System/PawnDeathIntoParticle_v2.lua");
    l0 = self.box_PawnDeathIntoParticle_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnDeathIntoParticle_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1924963299");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PawnDeathIntoParticle_v2_18_Done,
        -- Started,
        [2] = self.f_box_PawnDeathIntoParticle_v2_18_Started,
    });
    self.box_OnceOnly_v3_16 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|2040259173");
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
                [0] = self.f_box_OnceOnly_v3_16_Out_0,
            },
            count = 2,
        },
    });
end;

function export:Start()
    local params, l0;
    params = self:OnEnter_box_GroupIter_13();
    l0 = self.box_GroupIter_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|42070786", "42070786", "MIS_230_B25_BearManager", "Start", "box_GroupIter_13.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_3_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_3;
    l1 = self.box_MIS_230_COMMON_SFX_Bear_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|275521290", "275521290", "MIS_230_B25_BearManager", "box_OnceOnly_v3_3.Out", "box_MIS_230_COMMON_SFX_Bear_9.Vanish", l0:GetLuaBox(), l1:GetLuaBox());
    -- Vanish
    l1:Exec(2, {
    });
end;

function export:f_box_UseContextualActionModifier_v3_11_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_12();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1554284354", "1554284354", "MIS_230_B25_BearManager", "box_UseContextualActionModifier_v3_11.Disabled", "box_SetContextualStrategy_12.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_230_COMMON_SFX_Bear_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_10();
    l0 = self.box_MIS_230_COMMON_SFX_Bear_9;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|846380751", "846380751", "MIS_230_B25_BearManager", "box_MIS_230_COMMON_SFX_Bear_9.Out", "box_HealthModifier_v2_10.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_14();
    l0 = self.box_HealthListener_v6_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|885841839", "885841839", "MIS_230_B25_BearManager", "box_OutputOrder_v2_6.Out", "box_HealthListener_v6_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_8();
    l0 = self.box_ContextualActionListener_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|688013556", "688013556", "MIS_230_B25_BearManager", "box_OutputOrder_v2_6.Out", "box_ContextualActionListener_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1543205520", "1543205520", "MIS_230_B25_BearManager", "box_OutputOrder_v2_6.Out", "box_Delay_v5_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ContextualActionListener_8_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_11();
    l0 = self.box_ContextualActionListener_8;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|842451490", "842451490", "MIS_230_B25_BearManager", "box_ContextualActionListener_8.Enabled", "box_UseContextualActionModifier_v3_11.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_8_End()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_11();
    l0 = self.box_ContextualActionListener_8;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1631748101", "1631748101", "MIS_230_B25_BearManager", "box_ContextualActionListener_8.End", "box_UseContextualActionModifier_v3_11.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupIter_13_EndIter()
    local params, l0, l1;
    params = self:OnEnter_box_PawnDeathIntoParticle_v2_18();
    l0 = self.box_GroupIter_13;
    l1 = self.box_PawnDeathIntoParticle_v2_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|829416142", "829416142", "MIS_230_B25_BearManager", "box_GroupIter_13.EndIter", "box_PawnDeathIntoParticle_v2_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_GroupIter_13_PawnIter()
    local l0, l1;
    l0 = self.box_GroupIter_13;
    l1 = self.box_OnceOnly_v3_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1198752952", "1198752952", "MIS_230_B25_BearManager", "box_GroupIter_13.PawnIter", "box_OnceOnly_v3_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_14_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_HealthListener_v6_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|480322604", "480322604", "MIS_230_B25_BearManager", "box_HealthListener_v6_14.Damaged", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayTextModifier_v6_4();
    l0 = self.box_Delay_v5_20;
    l1 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1743701583", "1743701583", "MIS_230_B25_BearManager", "box_Delay_v5_20.TimeElapsed", "box_DisplayTextModifier_v6_4.DisplayText", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisplayText
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_17_Out()
    self:OnExit_box_SetEntity_v2_17_Out();
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_5();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1923009351", "1923009351", "MIS_230_B25_BearManager", "box_OutputOrder_v2_2.Out", "box_FloatArithmetics_v2_5.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|557571301", "557571301", "MIS_230_B25_BearManager", "box_OutputOrder_v2_2.Out", "box_Print_v2_1.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|368444836", "368444836", "MIS_230_B25_BearManager", "box_OutputOrder_v2_2.Out", "box_Delay_v5_20.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_FloatArithmetics_v2_5_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_7();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1068567018", "1068567018", "MIS_230_B25_BearManager", "box_FloatArithmetics_v2_5.Out", "box_Compare_Floats_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_7_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1856134733", "1856134733", "MIS_230_B25_BearManager", "box_Compare_Floats_7.A_ge_B", "box_OnceOnly_v3_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PawnDeathIntoParticle_v2_18_Done()
    local l0;
    l0 = self.box_PawnDeathIntoParticle_v2_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|146882343", "146882343", "MIS_230_B25_BearManager", "box_PawnDeathIntoParticle_v2_18.Done", "Finished", l0:GetLuaBox(), self);
    self:Finished();
end;

function export:f_box_PawnDeathIntoParticle_v2_18_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_PawnDeathIntoParticle_v2_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1208963100", "1208963100", "MIS_230_B25_BearManager", "box_PawnDeathIntoParticle_v2_18.Started", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_16_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_17();
    l0 = self.box_OnceOnly_v3_16;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|659654543", "659654543", "MIS_230_B25_BearManager", "box_OnceOnly_v3_16.Out", "box_SetEntity_v2_17.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_UseContextualActionModifier_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|298992699");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_11_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = self.eSTP,
        -- Entity,
        [2] = self.bear,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|534469948");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
                [2] = self.f_box_OutputOrder_v2_6_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_8()
    local params;
    params = {
        -- ContextualAction,
        [0] = self.eSTP,
    };
    return params;
end;

function export:OnEnter_box_GroupIter_13()
    local params;
    params = {
        -- entities,
        [0] = "#FDF68E27",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_14()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#FDF68E27",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1086582021");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#FDF68E27",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 60,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1520148944");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_17_Out,
    });
    l0 = self.box_GroupIter_13;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1553349307");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
                [2] = self.f_box_OutputOrder_v2_2_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DisplayTextModifier_v6_4()
    local params, l0;
    DrawTextToScreen("Comment: Display HINT", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DisplayTextModifier_v6')-- Comment: Display HINT");
    l0 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayTextModifier_v6_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1592169599");
    l0:SetConnections({
    });
    params = {
        -- displayOverCinematic,
        [0] = false,
        -- displayTimer,
        [1] = 20,
        -- forceInstantDisplay,
        [2] = true,
        -- isKarmaEvent,
        [3] = false,
        -- textId,
        [4] = {
            section = "LEVELDESIGN",
            item = "TUTO_WEAKSPOTS_HINT",
            id = "1033838",
        },
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1635438225");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = self.eCS,
        -- Group,
        [1] = "#FDF68E27",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1714710061");
    l0:SetConnections({
    });
    l0 = self.box_HealthListener_v6_14;
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- float,
        [4] = l0:GetDataOutValue(1),
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "DELTA : ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1880513328");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_5_Out,
    });
    l0 = self.box_HealthListener_v6_14;
    params = {
        -- A,
        [0] = self.Bear_DamageCount,
        -- B,
        [1] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_B25_BearManager|1890462182");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Floats_7_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.Bear_DamageCount,
        -- B,
        [1] = self.DamageTreshold,
    };
    return params;
end;

function export:OnEnter_box_PawnDeathIntoParticle_v2_18()
    local params;
    params = {
        -- BoneName,
        [0] = "Root",
        -- particle,
        [1] = "newparticles/90080146990270032.part",
        -- pawns,
        [2] = "#FDF68E27",
        -- timeToParticle,
        [3] = 0,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.bear = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.Bear_DamageCount = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Finished()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Finished" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="DamageTreshold" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="eCS" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSTP" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="gBear" AnchorDynType="0" DataTypeID="group" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
