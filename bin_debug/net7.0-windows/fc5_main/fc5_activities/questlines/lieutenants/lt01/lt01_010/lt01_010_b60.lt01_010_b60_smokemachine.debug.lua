LUAC/V -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_010/lt01_010_b60.domino
-- User graph: LT01_010_B60_SmokeMachine
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="e_LocalPlayer" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/FloatArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetHealthState.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetValueNil.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/VisionModeModifier_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_010/LT01_010_B60.LT01_010_B60_SmokeMachine.debug.lua")] = {
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
            [0] = {
                name = "e_LocalPlayer",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/GetHealthState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Critical",
                delayed = false,
            },
            [1] = {
                name = "Dead",
                delayed = false,
            },
            [2] = {
                name = "Down",
                delayed = false,
            },
            [3] = {
                name = "Healthy",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Health",
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
    metadataTable[GetPathID("Domino/System/MissionBlockLayer.lua")] = {
        stateless = true,
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
        },
        controlInCount = 3,
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
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionLayerId",
                type = "missionblocklayer",
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v2.lua")] = {
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
                name = "OnEmpty",
                delayed = true,
            },
            [5] = {
                name = "OnOccupied",
                delayed = true,
            },
            [6] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 7,
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
                name = "listenToGroupSizeChange",
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
    metadataTable[GetPathID("Domino/System/SetValueNil.lua")] = {
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
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "bool",
                type = "bool",
            },
            [2] = {
                name = "ent",
                type = "entity",
            },
            [3] = {
                name = "float",
                type = "float",
            },
            [4] = {
                name = "group",
                type = "group",
            },
            [5] = {
                name = "int",
                type = "int",
            },
            [6] = {
                name = "oasis",
                type = "oasis",
            },
            [7] = {
                name = "sound",
                type = "Sound",
            },
            [8] = {
                name = "str",
                type = "string",
            },
        },
        dataOutCount = 9,
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
    metadataTable[GetPathID("Domino/System/VisionModeModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "StartBliss",
            },
            [1] = {
                name = "StartCustomIntoxication",
            },
            [2] = {
                name = "StartDrunk",
            },
            [3] = {
                name = "StartHigh",
            },
            [4] = {
                name = "StartScopolamine",
            },
            [5] = {
                name = "StartScopolamineHeavy",
            },
            [6] = {
                name = "StartScopolamineMedium",
            },
            [7] = {
                name = "Stop",
            },
        },
        controlInCount = 8,
        controlOut = {
            [0] = {
                name = "StartedBliss",
                delayed = false,
            },
            [1] = {
                name = "StartedCustomIntoxication",
                delayed = false,
            },
            [2] = {
                name = "StartedDrunk",
                delayed = false,
            },
            [3] = {
                name = "StartedHigh",
                delayed = false,
            },
            [4] = {
                name = "StartedScopolamine",
                delayed = false,
            },
            [5] = {
                name = "StartedScopolamineHeavy",
                delayed = false,
            },
            [6] = {
                name = "StartedScopolamineMedium",
                delayed = false,
            },
            [7] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "intoxicationAmount",
                type = "float",
            },
            [1] = {
                name = "players",
                type = "group",
            },
            [2] = {
                name = "useAsPercent",
                type = "bool",
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
    self._name = "LT01_010_B60_SmokeMachine";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine";
    self.DelayInterval = 8;
    self.PlayerVar = nil;
    self.DamageValue = 2;
    self.i_IntoxAmount = 1;
    self.e_entityToKill = nil;
    self.f_playerMaxHealth = 0;
    self.f_DamageValue = 0;
    self.PlayerGroup = nil;
    self.box_VisionModeModifier_v2_12 = cbox:CreateBox("Domino/System/VisionModeModifier_v2.lua");
    l0 = self.box_VisionModeModifier_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisionModeModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|154156050");
    l0:SetConnections({
        -- StartedScopolamineHeavy,
        [5] = self.f_box_VisionModeModifier_v2_12_StartedScopolamineHeavy,
    });
    self.box_OnceOnly_v3_10 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|223791980");
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
                [0] = self.f_box_OnceOnly_v3_10_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_6 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|266363670");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_6_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_6_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_6_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_6_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_6_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_6_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_6_Use,
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|347031567");
    l0:SetConnections({
        -- LoopingEnded,
        [0] = self.f_box_Delay_v5_18_LoopingEnded,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_Delay_v5_2 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|355683384");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_2_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_2_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_27 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|636974291");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_27_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_27_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_27_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_27_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_27_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_27_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_27_Use,
    });
    self.box_VisionModeModifier_v2_14 = cbox:CreateBox("Domino/System/VisionModeModifier_v2.lua");
    l0 = self.box_VisionModeModifier_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisionModeModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|697731461");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_45 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|826074278");
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
                [0] = self.f_box_OnceOnly_v3_45_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|909782626");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
    self.box_Delay_v5_37 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|951872707");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_37_TimeElapsed,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1004967306");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1013930133");
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
        [0] = self.f_box_MultipleOR_21_Out,
    });
    self.box_Switch_3 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1272974212");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 8,
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
                [0] = self.f_box_Switch_3_Output_0,
                [1] = self.f_box_Switch_3_Output_1,
                [2] = self.f_box_Switch_3_Output_2,
            },
            count = 8,
        },
    });
    self.box_ProximityTrigger_v2_48 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1307355241");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_48_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_48_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_48_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_48_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_48_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_48_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_48_Use,
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1396759124");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
    self.box_Delay_v5_32 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1438970957");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_32_TimeElapsed,
    });
    self.box_Delay_v5_42 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1821908506");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_42_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_46();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1667283300", "1667283300", "LT01_010_B60_SmokeMachine", "In", "box_GetPlayerGroup_v2_46.FriendlyPlayers", self, l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_42();
    l0 = self.box_Delay_v5_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1314565550", "1314565550", "LT01_010_B60_SmokeMachine", "box_Simple_Node_33.Out", "box_Delay_v5_42.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|243597327", "243597327", "LT01_010_B60_SmokeMachine", "box_Simple_Node_33.Out", "box_OutputOrder_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_34_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1718681757", "1718681757", "LT01_010_B60_SmokeMachine", "box_Simple_Node_34.Out", "box_Delay_v5_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_VisionModeModifier_v2_12_StartedScopolamineHeavy()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_30();
    l0 = self.box_VisionModeModifier_v2_12;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1599749193", "1599749193", "LT01_010_B60_SmokeMachine", "box_VisionModeModifier_v2_12.StartedScopolamineHeavy", "box_Print_v2_30.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_10_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_10;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1100248527", "1100248527", "LT01_010_B60_SmokeMachine", "box_OnceOnly_v3_10.Out", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_6_Enabled()
    self:OnExit_box_ProximityTrigger_v2_6_Enabled();
end;

function export:f_box_ProximityTrigger_v2_6_Enter()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_6_Enter();
    l0 = self.box_ProximityTrigger_v2_6;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1374566551", "1374566551", "LT01_010_B60_SmokeMachine", "box_ProximityTrigger_v2_6.Enter", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_6_Leave()
    self:OnExit_box_ProximityTrigger_v2_6_Leave();
end;

function export:f_box_ProximityTrigger_v2_6_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_6_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_6_OnOccupied()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_6_OnOccupied();
    l0 = self.box_ProximityTrigger_v2_6;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1906528950", "1906528950", "LT01_010_B60_SmokeMachine", "box_ProximityTrigger_v2_6.OnOccupied", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_6_Use()
    self:OnExit_box_ProximityTrigger_v2_6_Use();
end;

function export:f_box_SetInteger_v2_23_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_23_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|654471107", "654471107", "LT01_010_B60_SmokeMachine", "box_SetInteger_v2_23.Out", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_18_LoopingEnded()
    local params, l0, l1;
    params = self:OnEnter_box_VisionModeModifier_v2_12();
    l0 = self.box_Delay_v5_18;
    l1 = self.box_VisionModeModifier_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1166052818", "1166052818", "LT01_010_B60_SmokeMachine", "box_Delay_v5_18.LoopingEnded", "box_VisionModeModifier_v2_12.StartScopolamineHeavy", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartScopolamineHeavy
    l1:Exec(5, params);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_FloatArithmetics_v2_17();
    l0 = self.box_Delay_v5_18;
    l1 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1448930108", "1448930108", "LT01_010_B60_SmokeMachine", "box_Delay_v5_18.TimeElapsed", "box_FloatArithmetics_v2_17.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_2_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_2;
    l1 = self.box_OnceOnly_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|919899593", "919899593", "LT01_010_B60_SmokeMachine", "box_Delay_v5_2.Started", "box_OnceOnly_v3_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_2_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_2;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|339926906", "339926906", "LT01_010_B60_SmokeMachine", "box_Delay_v5_2.TimeElapsed", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_FloatArithmetics_v2_25_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_25_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_4();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|347343655", "347343655", "LT01_010_B60_SmokeMachine", "box_FloatArithmetics_v2_25.Out", "box_Compare_Floats_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_17_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_17_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisionModeModifier_v2_14();
    l0 = self.box_VisionModeModifier_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|613395420", "613395420", "LT01_010_B60_SmokeMachine", "box_FloatArithmetics_v2_17.Out", "box_VisionModeModifier_v2_14.StartScopolamineHeavy", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartScopolamineHeavy
    l0:Exec(5, params);
end;

function export:f_box_ProximityTrigger_v2_27_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_47();
    l0 = self.box_ProximityTrigger_v2_27;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1884140732", "1884140732", "LT01_010_B60_SmokeMachine", "box_ProximityTrigger_v2_27.Enter", "box_RemoveFromGroup_v2_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_7_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|264543983", "264543983", "LT01_010_B60_SmokeMachine", "box_MissionBlockLayer_7.Activated", "box_Delay_v5_2.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_GroupAddToGroup_v2_50_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1382706620", "1382706620", "LT01_010_B60_SmokeMachine", "box_GroupAddToGroup_v2_50.Out", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_40_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_41();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1933323405", "1933323405", "LT01_010_B60_SmokeMachine", "box_HealthModifier_v2_40.Damaged", "box_HealthModifier_v2_41.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_45_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_OnceOnly_v3_45;
    l1 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1217202809", "1217202809", "LT01_010_B60_SmokeMachine", "box_OnceOnly_v3_45.Out", "box_Delay_v5_19.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_3();
    l0 = self.box_MultipleOR_9;
    l1 = self.box_Switch_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|495563002", "495563002", "LT01_010_B60_SmokeMachine", "box_MultipleOR_9.Out", "box_Switch_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Floats_4_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_26();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|94977563", "94977563", "LT01_010_B60_SmokeMachine", "box_Compare_Floats_4.A_gt_B", "box_SetInteger_v2_26.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_4_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_23();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|105549294", "105549294", "LT01_010_B60_SmokeMachine", "box_Compare_Floats_4.A_le_B", "box_SetInteger_v2_23.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_37_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_15();
    l0 = self.box_Delay_v5_37;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1263606496", "1263606496", "LT01_010_B60_SmokeMachine", "box_Delay_v5_37.TimeElapsed", "box_HealthModifier_v2_15.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_46_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_46_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_50();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|424738825", "424738825", "LT01_010_B60_SmokeMachine", "box_GetPlayerGroup_v2_46.Out", "box_GroupAddToGroup_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_40();
    l0 = self.box_MultipleOR_8;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1817407156", "1817407156", "LT01_010_B60_SmokeMachine", "box_MultipleOR_8.Out", "box_HealthModifier_v2_40.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_21_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_21;
    l1 = self.box_OnceOnly_v3_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1343613237", "1343613237", "LT01_010_B60_SmokeMachine", "box_MultipleOR_21.Out", "box_OnceOnly_v3_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetValueNil_44_Out()
    self:OnExit_box_SetValueNil_44_Out();
end;

function export:f_box_HealthModifier_v2_41_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetValueNil_44();
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|896226019", "896226019", "LT01_010_B60_SmokeMachine", "box_HealthModifier_v2_41.Damaged", "box_SetValueNil_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_43_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_43_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_6();
    l0 = self.box_ProximityTrigger_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1640485576", "1640485576", "LT01_010_B60_SmokeMachine", "box_SetInteger_v2_43.Out", "box_ProximityTrigger_v2_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetHealthState_24_Critical()
    self:OnExit_box_GetHealthState_24_Critical();
end;

function export:f_box_GetHealthState_24_Dead()
    self:OnExit_box_GetHealthState_24_Dead();
end;

function export:f_box_GetHealthState_24_Down()
    self:OnExit_box_GetHealthState_24_Down();
end;

function export:f_box_GetHealthState_24_Healthy()
    local params, l0;
    self:OnExit_box_GetHealthState_24_Healthy();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_25();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1938890834", "1938890834", "LT01_010_B60_SmokeMachine", "box_GetHealthState_24.Healthy", "box_FloatArithmetics_v2_25.Div", clone:GetLuaBox(), l0:GetLuaBox());
    -- Div
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_3_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_1();
    l0 = self.box_Switch_3;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|567404741", "567404741", "LT01_010_B60_SmokeMachine", "box_Switch_3.Output", "box_MissionBlockLayer_1.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_3_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_5();
    l0 = self.box_Switch_3;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1850460243", "1850460243", "LT01_010_B60_SmokeMachine", "box_Switch_3.Output", "box_MissionBlockLayer_5.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_3_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_7();
    l0 = self.box_Switch_3;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1888268490", "1888268490", "LT01_010_B60_SmokeMachine", "box_Switch_3.Output", "box_MissionBlockLayer_7.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_48_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_49();
    l0 = self.box_ProximityTrigger_v2_48;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1754288282", "1754288282", "LT01_010_B60_SmokeMachine", "box_ProximityTrigger_v2_48.Enter", "box_GroupAddToGroup_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_22();
    l0 = self.box_Delay_v5_19;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|842608097", "842608097", "LT01_010_B60_SmokeMachine", "box_Delay_v5_19.TimeElapsed", "box_HealthModifier_v2_22.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetHealthState_24();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1196935737", "1196935737", "LT01_010_B60_SmokeMachine", "box_OutputOrder_v2_16.Out", "box_GetHealthState_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_32();
    l0 = self.box_Delay_v5_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1617117630", "1617117630", "LT01_010_B60_SmokeMachine", "box_OutputOrder_v2_16.Out", "box_Delay_v5_32.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_32_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_20();
    l0 = self.box_Delay_v5_32;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|55635607", "55635607", "LT01_010_B60_SmokeMachine", "box_Delay_v5_32.TimeElapsed", "box_SetInteger_v2_20.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_15_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_38();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|45282696", "45282696", "LT01_010_B60_SmokeMachine", "box_HealthModifier_v2_15.Damaged", "box_HealthModifier_v2_38.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1313715471", "1313715471", "LT01_010_B60_SmokeMachine", "box_OutputOrder_v2_13.Out", "box_Delay_v5_2.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1139660924", "1139660924", "LT01_010_B60_SmokeMachine", "box_OutputOrder_v2_13.Out", "box_Simple_Node_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_34();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1812421354", "1812421354", "LT01_010_B60_SmokeMachine", "box_OutputOrder_v2_13.Out", "box_Simple_Node_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_27();
    l0 = self.box_ProximityTrigger_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1056588924", "1056588924", "LT01_010_B60_SmokeMachine", "box_OutputOrder_v2_13.Out", "box_ProximityTrigger_v2_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_48();
    l0 = self.box_ProximityTrigger_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1930091786", "1930091786", "LT01_010_B60_SmokeMachine", "box_OutputOrder_v2_13.Out", "box_ProximityTrigger_v2_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_42_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_43();
    l0 = self.box_Delay_v5_42;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|505378715", "505378715", "LT01_010_B60_SmokeMachine", "box_Delay_v5_42.TimeElapsed", "box_SetInteger_v2_43.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_26_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_26_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1852242207", "1852242207", "LT01_010_B60_SmokeMachine", "box_SetInteger_v2_26.Out", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_20_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_20_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_37();
    l0 = self.box_Delay_v5_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|456906872", "456906872", "LT01_010_B60_SmokeMachine", "box_SetInteger_v2_20.Out", "box_Delay_v5_37.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:OnEnter_box_Simple_Node_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|@n_ScopoDamage");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_33_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|@n_ScopoVision");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_34_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|119459728");
    l0:SetConnections({
    });
    l0 = self.box_ProximityTrigger_v2_27;
    params = {
        -- Entities,
        [0] = l0:GetDataOutValue(0),
        -- Group,
        [1] = "#2482C3B6",
    };
    return params;
end;

function export:OnEnter_box_VisionModeModifier_v2_12()
    local params;
    params = {
        -- intoxicationAmount,
        [0] = 100,
        -- players,
        [1] = "#ED455357",
        -- useAsPercent,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_6()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104353472601141508",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|294532171");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#2482C3B6",
        -- value,
        [3] = self.DamageValue,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|333480598");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_23_Out,
    });
    params = {
        -- Float,
        [0] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- nbLoop,
        [1] = 85,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|353112114");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160234533938183",
        -- missionLayerId,
        [1] = "36167433788679175",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_2()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = self.DelayInterval,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|455838383");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_25_Out,
    });
    params = {
        -- A,
        [0] = self.f_playerMaxHealth,
        -- B,
        [1] = 110,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|467622583");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_17_Out,
    });
    params = {
        -- A,
        [0] = self.i_IntoxAmount,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|502584706");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "Purple",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "---- LT01_010_B60 ---- SCOPO EFFECT AT MAX.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_27()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102392378858948071",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|659026695");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_7_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160234533938183",
        -- missionLayerId,
        [1] = "72196230812772970",
    };
    return params;
end;

function export:OnEnter_box_VisionModeModifier_v2_14()
    local params;
    params = {
        -- intoxicationAmount,
        [0] = self.i_IntoxAmount,
        -- players,
        [1] = "#ED455357",
        -- useAsPercent,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|712481801");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_50_Out,
    });
    params = {
        -- FromGroup,
        [0] = self.PlayerGroup,
        -- ToGroup,
        [1] = "#2482C3B6",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|763004832");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_40_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 21,
        -- pawns,
        [2] = "#2482C3B6",
        -- value,
        [3] = self.DamageValue,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|849971289");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160234533938183",
        -- missionLayerId,
        [1] = "54181832302861341",
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|914014806");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Floats_4_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_4_A_le_B,
    });
    params = {
        -- A,
        [0] = self.f_DamageValue,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_37()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|962304474");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_46_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetValueNil_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetValueNil_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1094940256");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetValueNil_44_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1100096379");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 21,
        -- pawns,
        [2] = "#2482C3B6",
        -- value,
        [3] = self.DamageValue,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1159730667");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_41_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 21,
        -- pawns,
        [2] = "#2482C3B6",
        -- value,
        [3] = self.DamageValue,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1194665736");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_43_Out,
    });
    params = {
        -- Integer,
        [1] = 9999,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1209871849");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_GetHealthState_24_Critical,
        -- Dead,
        [1] = self.f_box_GetHealthState_24_Dead,
        -- Down,
        [2] = self.f_box_GetHealthState_24_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_24_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.e_LocalPlayer,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1220164300");
    l0:SetConnections({
    });
    l0 = self.box_ProximityTrigger_v2_48;
    params = {
        -- FromGroup,
        [0] = l0:GetDataOutValue(0),
        -- ToGroup,
        [1] = "#2482C3B6",
    };
    return params;
end;

function export:OnEnter_box_Switch_3()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_48()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104353472601141508",
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

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1405707889");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_32()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 89,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1662203204");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_15_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#2482C3B6",
        -- value,
        [3] = self.DamageValue,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1665087362");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
                [2] = self.f_box_OutputOrder_v2_13_Out_2,
                [3] = self.f_box_OutputOrder_v2_13_Out_3,
                [4] = self.f_box_OutputOrder_v2_13_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_42()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 89,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1876367766");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_26_Out,
    });
    params = {
        -- Float,
        [0] = self.f_DamageValue,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_010\\LT01_010_B60.domino|@LT01_010_B60_SmokeMachine|1908589796");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_20_Out,
    });
    params = {
        -- Integer,
        [1] = 9999,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnExit_box_ProximityTrigger_v2_6_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_6;
    self.e_entityToKill = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_6_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_6;
    self.e_entityToKill = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_6_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_6;
    self.e_entityToKill = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_6_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_6;
    self.e_entityToKill = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_6_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_6;
    self.e_entityToKill = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_6_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_6;
    self.e_entityToKill = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.DamageValue = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.f_DamageValue = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.i_IntoxAmount = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_46_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetValueNil_44_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    self.e_entityToKill = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetInteger_v2_43_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.DamageValue = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetHealthState_24_Critical()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    self.f_playerMaxHealth = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetHealthState_24_Dead()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    self.f_playerMaxHealth = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetHealthState_24_Down()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    self.f_playerMaxHealth = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetHealthState_24_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    self.f_playerMaxHealth = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_26_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.DamageValue = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.DamageValue = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="e_LocalPlayer" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
