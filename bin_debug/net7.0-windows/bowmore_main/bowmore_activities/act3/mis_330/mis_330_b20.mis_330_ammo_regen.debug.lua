LUAC�v -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_330/mis_330_b20.domino
-- User graph: MIS_330_Ammo_Regen
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Amplitude" Type="Core|float" />
    <DataIn Name="Target" Type="Nomad|entity{}" />
    <DataIn Name="Archetype" Type="Nomad|archetype" />
    <DataIn Name="Trigger" Type="Nomad|entity{}" />
    <DataIn Name="ParticleSystem" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsImpulse.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RandomInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Spawner_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1602066545.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Ammo_Regen.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "EnableCatapult",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
            [1] = {
                name = "Used",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Amplitude",
                type = "float",
            },
            [1] = {
                name = "Archetype",
                type = "archetype",
            },
            [2] = {
                name = "ParticleSystem",
                type = "entity",
            },
            [3] = {
                name = "Target",
                type = "entity",
            },
            [4] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/InventoryItemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Refill",
            },
            [2] = {
                name = "RefillClip",
            },
            [3] = {
                name = "Remove",
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
            [3] = {
                name = "quantity",
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
    metadataTable[GetPathID("Domino/System/PhysicsImpulse.lua")] = {
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
                name = "AngularAmplitude",
                type = "float",
            },
            [1] = {
                name = "AngularVector",
                type = "list",
            },
            [2] = {
                name = "DirectionAmplitude",
                type = "float",
            },
            [3] = {
                name = "DirectionEntityID",
                type = "entity",
            },
            [4] = {
                name = "DirectionVector",
                type = "list",
            },
            [5] = {
                name = "targets",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/RandomInteger_v2.lua")] = {
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
                type = "int",
            },
            [1] = {
                name = "Min",
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
    metadataTable[GetPathID("Domino/System/Spawner_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Error",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "archetype",
                type = "archetype",
            },
            [1] = {
                name = "pitch",
                type = "float",
            },
            [2] = {
                name = "roll",
                type = "float",
            },
            [3] = {
                name = "target",
                type = "entity",
            },
            [4] = {
                name = "xPos",
                type = "float",
            },
            [5] = {
                name = "yaw",
                type = "float",
            },
            [6] = {
                name = "yPos",
                type = "float",
            },
            [7] = {
                name = "zPos",
                type = "float",
            },
        },
        dataInCount = 8,
        dataOut = {
            [0] = {
                name = "errorMsg",
                type = "string",
            },
            [1] = {
                name = "spawned",
                type = "entity",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/StaticBreakableBreaker.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Destroy",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceState",
            },
            [3] = {
                name = "NextState",
            },
            [4] = {
                name = "SetDamageable",
            },
            [5] = {
                name = "SetUnDamageable",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "DamageableChanged",
                delayed = false,
            },
            [1] = {
                name = "Destroyed",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "StateChanged",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "entity",
                type = "entity",
            },
            [1] = {
                name = "forcedStateId",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/StaticBreakableListener.lua")] = {
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
                name = "OnBreak",
                delayed = true,
            },
            [3] = {
                name = "OnBreakAll",
                delayed = true,
            },
            [4] = {
                name = "OnDamage",
                delayed = true,
            },
            [5] = {
                name = "OnHit",
                delayed = true,
            },
            [6] = {
                name = "OnStateChanged",
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
                name = "entity",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "instigatorID",
                type = "entity",
            },
            [1] = {
                name = "stateID",
                type = "int",
            },
            [2] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_330_Ammo_Regen";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen";
    self.Out = DummyFunction;
    self.Used = DummyFunction;
    self.gp_FriendlyPlayers = nil;
    self.e_SpawnedFlare = nil;
    self.e_barrel = nil;
    self.ePlayer = nil;
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|52204438");
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
    self.box_InventoryItemModifier_4 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|73370874");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_4_Out,
    });
    self.box_InventoryItemModifier_3 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|177751317");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_3_Out,
    });
    self.box_InventoryItemModifier_12 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|186185107");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_12_Out,
    });
    self.box_Delay_v5_44 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|501648719");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_44_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_44_TimeElapsed,
    });
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|506862133");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_EntityStatusListener_24 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|552242877");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_24_Loaded,
    });
    self.box_EntityStatusListener_2 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|713865045");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_2_Loaded,
    });
    self.box_InventoryItemModifier_49 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|840308155");
    l0:SetConnections({
    });
    self.box_Bind_v4_23 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|851627619");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_23_Bound,
    });
    self.box_OnceOnly_v3_28 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|925487139");
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
                [0] = self.f_box_OnceOnly_v3_28_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|964334251");
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
        [0] = self.f_box_MultipleOR_27_Out,
    });
    self.box_InventoryItemModifier_8 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1027271343");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_8_Out,
    });
    self.box_StaticBreakableListener_16 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1177907477");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_16_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_16_OnBreak,
    });
    self.box_Delay_v5_7 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1390522395");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_7_TimeElapsed,
    });
    self.box_Delay_v5_31 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1550353160");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_31_TimeElapsed,
    });
    self.box_InventoryItemModifier_39 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1561214832");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_39_Out,
    });
    self.box_EntityStatusListener_9 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1747258934");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_9_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_9_Loaded,
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1783217087");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_10 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1828290252");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_10_Disabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_10_Enter,
    });
    self.box_SoundModifier_v2_11 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1829702887");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_26 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1836964272");
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
                [0] = self.f_box_OnceOnly_v3_26_Out_0,
            },
            count = 2,
        },
    });
    self.box_Bind_v4_34 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1899857252");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_34_Bound,
    });
    self.box_MultipleOR_55 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1951315012");
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
        [0] = self.f_box_MultipleOR_55_Out,
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_StaticBreakableListener_16();
    l0 = self.box_StaticBreakableListener_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1908138956", "1908138956", "MIS_330_Ammo_Regen", "Disable", "box_StaticBreakableListener_16.Disable", self, l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|882061287", "882061287", "MIS_330_Ammo_Regen", "Disable", "box_OutputOrder_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_EntityStatusListener_9();
    l0 = self.box_EntityStatusListener_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|538560821", "538560821", "MIS_330_Ammo_Regen", "Disable", "box_EntityStatusListener_9.Disable", self, l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1011285223", "1011285223", "MIS_330_Ammo_Regen", "Disable", "box_MultipleOR_5.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:EnableCatapult()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_38();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1034026318", "1034026318", "MIS_330_Ammo_Regen", "EnableCatapult", "box_GetPlayerGroup_v2_38.FriendlyPlayers", self, l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_56_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1492688986", "1492688986", "MIS_330_Ammo_Regen", "box_Simple_Node_56.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|544415976", "544415976", "MIS_330_Ammo_Regen", "box_Simple_Node_42.Out", "box_OutputOrder_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_43_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1509735859", "1509735859", "MIS_330_Ammo_Regen", "box_Simple_Node_43.Out", "box_OnceOnly_v3_26.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
    l0 = self.box_OnceOnly_v3_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|25357892", "25357892", "MIS_330_Ammo_Regen", "box_Simple_Node_43.Out", "box_OnceOnly_v3_28.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_Simple_Node_17_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_11();
    l0 = self.box_SoundModifier_v2_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|655518400", "655518400", "MIS_330_Ammo_Regen", "box_Simple_Node_17.Out", "box_SoundModifier_v2_11.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_10();
    l0 = self.box_MultipleOR_5;
    l1 = self.box_ProximityTrigger_v3_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|431160229", "431160229", "MIS_330_Ammo_Regen", "box_MultipleOR_5.Out", "box_ProximityTrigger_v3_10.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableBreaker_30_Destroyed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|802364461", "802364461", "MIS_330_Ammo_Regen", "box_StaticBreakableBreaker_30.Destroyed", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_InventoryItemModifier_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_8();
    l0 = self.box_InventoryItemModifier_4;
    l1 = self.box_InventoryItemModifier_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1391794768", "1391794768", "MIS_330_Ammo_Regen", "box_InventoryItemModifier_4.Out", "box_InventoryItemModifier_8.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_20_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Spawner_v2_19();
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|851852983", "851852983", "MIS_330_Ammo_Regen", "box_IsEntityLoaded_v3_20.False", "box_Spawner_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_20_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_36();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|133874868", "133874868", "MIS_330_Ammo_Regen", "box_IsEntityLoaded_v3_20.True", "box_Print_v2_36.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_12();
    l0 = self.box_InventoryItemModifier_3;
    l1 = self.box_InventoryItemModifier_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1806209836", "1806209836", "MIS_330_Ammo_Regen", "box_InventoryItemModifier_3.Out", "box_InventoryItemModifier_12.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_30();
    l0 = self.box_InventoryItemModifier_12;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|145834485", "145834485", "MIS_330_Ammo_Regen", "box_InventoryItemModifier_12.Out", "box_StaticBreakableBreaker_30.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_44_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_44;
    l1 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1612008481", "1612008481", "MIS_330_Ammo_Regen", "box_Delay_v5_44.Stopped", "box_MultipleOR_55.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_44_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_51();
    l0 = self.box_Delay_v5_44;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1561979770", "1561979770", "MIS_330_Ammo_Regen", "box_Delay_v5_44.TimeElapsed", "box_ParticleSystem_v3_51.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_9();
    l0 = self.box_Delay_v5_21;
    l1 = self.box_EntityStatusListener_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|649632782", "649632782", "MIS_330_Ammo_Regen", "box_Delay_v5_21.TimeElapsed", "box_EntityStatusListener_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_7();
    l0 = self.box_Delay_v5_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1309634024", "1309634024", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_6.Out", "box_Delay_v5_7.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_23();
    l0 = self.box_Bind_v4_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|346562515", "346562515", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_6.Out", "box_Bind_v4_23.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_24_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_41();
    l0 = self.box_EntityStatusListener_24;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1400453355", "1400453355", "MIS_330_Ammo_Regen", "box_EntityStatusListener_24.Loaded", "box_StaticBreakableBreaker_41.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|5824275", "5824275", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_29.Out", "box_Delay_v5_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1266967427", "1266967427", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_29.Out", "box_Simple_Node_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|241706602", "241706602", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_29.Out", "box_Delay_v5_40.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_2_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_15();
    l0 = self.box_EntityStatusListener_2;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|958244239", "958244239", "MIS_330_Ammo_Regen", "box_EntityStatusListener_2.Loaded", "box_StaticBreakableBreaker_15.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_47_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_49();
    l0 = self.box_InventoryItemModifier_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|764790161", "764790161", "MIS_330_Ammo_Regen", "box_Compare_Integers_47.A_eq_B", "box_InventoryItemModifier_49.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_Bind_v4_23_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_34();
    l0 = self.box_Bind_v4_23;
    l1 = self.box_Bind_v4_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1843450582", "1843450582", "MIS_330_Ammo_Regen", "box_Bind_v4_23.Bound", "box_Bind_v4_34.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_28_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = self.box_OnceOnly_v3_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1082602336", "1082602336", "MIS_330_Ammo_Regen", "box_OnceOnly_v3_28.Out", "box_OutputOrder_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_27_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_27;
    l1 = self.box_OnceOnly_v3_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|927890296", "927890296", "MIS_330_Ammo_Regen", "box_MultipleOR_27.Out", "box_OnceOnly_v3_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InventoryItemModifier_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_3();
    l0 = self.box_InventoryItemModifier_8;
    l1 = self.box_InventoryItemModifier_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|801615774", "801615774", "MIS_330_Ammo_Regen", "box_InventoryItemModifier_8.Out", "box_InventoryItemModifier_3.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_16_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_10();
    l0 = self.box_StaticBreakableListener_16;
    l1 = self.box_ProximityTrigger_v3_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1267614091", "1267614091", "MIS_330_Ammo_Regen", "box_StaticBreakableListener_16.Enabled", "box_ProximityTrigger_v3_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_16_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = self.box_StaticBreakableListener_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1823484442", "1823484442", "MIS_330_Ammo_Regen", "box_StaticBreakableListener_16.OnBreak", "box_OutputOrder_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_2();
    l0 = self.box_EntityStatusListener_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|2098086848", "2098086848", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_1.Out", "box_EntityStatusListener_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_53();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|23079196", "23079196", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_1.Out", "box_ParticleSystem_v3_53.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_7_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = self.box_Delay_v5_7;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|2084513502", "2084513502", "MIS_330_Ammo_Regen", "box_Delay_v5_7.TimeElapsed", "box_Simple_Node_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_38_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_38_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_20();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1858324639", "1858324639", "MIS_330_Ammo_Regen", "box_GetPlayerGroup_v2_38.Out", "box_IsEntityLoaded_v3_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1995232469", "1995232469", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_33.Out", "box_Delay_v5_31.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|142528028", "142528028", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_33.Out", "box_Delay_v5_44.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Delay_v5_31_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_31;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|822732366", "822732366", "MIS_330_Ammo_Regen", "box_Delay_v5_31.TimeElapsed", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|2145785953", "2145785953", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_48.Out", "box_Simple_Node_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_39();
    l0 = self.box_InventoryItemModifier_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|171728420", "171728420", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_48.Out", "box_InventoryItemModifier_39.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_48_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomInteger_v2_46();
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|239680679", "239680679", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_48.Out", "box_RandomInteger_v2_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_4();
    l0 = self.box_InventoryItemModifier_39;
    l1 = self.box_InventoryItemModifier_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1074463675", "1074463675", "MIS_330_Ammo_Regen", "box_InventoryItemModifier_39.Out", "box_InventoryItemModifier_4.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_PhysicsImpulse_18_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|215954403", "215954403", "MIS_330_Ammo_Regen", "box_PhysicsImpulse_18.Out", "box_OutputOrder_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_9_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_7();
    l0 = self.box_EntityStatusListener_9;
    l1 = self.box_Delay_v5_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|2049108412", "2049108412", "MIS_330_Ammo_Regen", "box_EntityStatusListener_9.Enabled", "box_Delay_v5_7.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_9_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_EntityStatusListener_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1697626116", "1697626116", "MIS_330_Ammo_Regen", "box_EntityStatusListener_9.Loaded", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Spawner_v2_19_Out()
    local params, l0;
    self:OnExit_box_Spawner_v2_19_Out();
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|957074087", "957074087", "MIS_330_Ammo_Regen", "box_Spawner_v2_19.Out", "box_OutputOrder_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = self.box_Delay_v5_40;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1082589946", "1082589946", "MIS_330_Ammo_Regen", "box_Delay_v5_40.TimeElapsed", "box_Simple_Node_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_10_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_10;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|744852953", "744852953", "MIS_330_Ammo_Regen", "box_ProximityTrigger_v3_10.Disabled", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_10_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = self.box_ProximityTrigger_v3_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1567906519", "1567906519", "MIS_330_Ammo_Regen", "box_ProximityTrigger_v3_10.Enter", "box_OutputOrder_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_26_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsImpulse_18();
    l0 = self.box_OnceOnly_v3_26;
    l1 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1044993222", "1044993222", "MIS_330_Ammo_Regen", "box_OnceOnly_v3_26.Out", "box_PhysicsImpulse_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_34_Bound()
    local l0, l1;
    l0 = self.box_Bind_v4_34;
    l1 = self.box_OnceOnly_v3_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1529768400", "1529768400", "MIS_330_Ammo_Regen", "box_Bind_v4_34.Bound", "box_OnceOnly_v3_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_16();
    l0 = self.box_StaticBreakableListener_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1329653556", "1329653556", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_50.Out", "box_StaticBreakableListener_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|952525945", "952525945", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_50.Out", "box_Delay_v5_44.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_56();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1362797760", "1362797760", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_54.Out", "box_Simple_Node_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|46703367", "46703367", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_54.Out", "Used", clone:GetLuaBox(), self);
    self:Used();
end;

function export:f_box_MultipleOR_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_52();
    l0 = self.box_MultipleOR_55;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|871917203", "871917203", "MIS_330_Ammo_Regen", "box_MultipleOR_55.Out", "box_ParticleSystem_v3_52.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RandomInteger_v2_46_Out()
    local params, l0;
    self:OnExit_box_RandomInteger_v2_46_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_47();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1769150765", "1769150765", "MIS_330_Ammo_Regen", "box_RandomInteger_v2_46.Out", "box_Compare_Integers_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_24();
    l0 = self.box_EntityStatusListener_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1702294960", "1702294960", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_22.Out", "box_EntityStatusListener_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_45();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1622593221", "1622593221", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_22.Out", "box_ParticleSystem_v3_45.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1593379083", "1593379083", "MIS_330_Ammo_Regen", "box_OutputOrder_v2_22.Out", "Used", clone:GetLuaBox(), self);
    self:Used();
end;

function export:OnEnter_box_Simple_Node_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|@n_Cleanup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_56_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|@n_Failsafe");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_42_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|@n_reset");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_43_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|@Pick_Up_Ammo_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_17_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|63602428");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_30_Destroyed,
    });
    params = {
        -- entity,
        [0] = self.e_barrel,
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_4()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015251705182346",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 30,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|93770411");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = self.ParticleSystem,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|116863811");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_20_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_20_True,
    });
    params = {
        -- entityId,
        [0] = self.e_barrel,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|163484593");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = self.ParticleSystem,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_3()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927234092606",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 20,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_12()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015251705383497",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_44()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_21()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|539106096");
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

function export:OnEnter_box_EntityStatusListener_24()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.e_barrel,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|595674698");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
                [2] = self.f_box_OutputOrder_v2_29_Out_2,
            },
            count = 3,
        },
    });
    params = {
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
        [2] = self.e_barrel,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|833781285");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_47_A_eq_B,
    });
    params = {
        -- A,
        [0] = self._sld_Result_box_RandomInteger_v2_46,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|835277795");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = self.e_barrel,
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_49()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927638943126",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_23()
    local params;
    params = {
        -- EntityA,
        [1] = self.e_barrel,
        -- EntityB,
        [2] = self.Trigger,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_8()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927234124204",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 30,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_16()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = self.e_barrel,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1243609636");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = self.ParticleSystem,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1243709327");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "AMMO CRATE ALREADY EXISTS",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1284156634");
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

function export:OnEnter_box_Delay_v5_7()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1400875502");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_38_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1502468635");
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

function export:OnEnter_box_Delay_v5_31()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1550825471");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
                [2] = self.f_box_OutputOrder_v2_48_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_39()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927234130547",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 30,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1568905042");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = self.e_barrel,
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_PhysicsImpulse_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PhysicsImpulse.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsImpulse_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1628180408");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_PhysicsImpulse_18_Out,
    });
    params = {
        -- AngularAmplitude,
        [0] = 0,
        -- DirectionAmplitude,
        [2] = self.Amplitude,
        -- DirectionEntityID,
        [3] = self.Target,
        -- targets,
        [5] = self.e_barrel,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1739509132");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = self.ParticleSystem,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.e_barrel,
    };
    return params;
end;

function export:OnEnter_box_Spawner_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Spawner_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1775863636");
    l0:SetConnections({
        -- Error,
        [0] = self.f_box_Spawner_v2_19_Error,
        -- Out,
        [1] = self.f_box_Spawner_v2_19_Out,
    });
    params = {
        -- archetype,
        [0] = self.Archetype,
        -- pitch,
        [1] = 0,
        -- roll,
        [2] = 0,
        -- target,
        [3] = "2108402437753682266",
        -- xPos,
        [4] = 0,
        -- yaw,
        [5] = 0,
        -- yPos,
        [6] = 0,
        -- zPos,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.gp_FriendlyPlayers,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = self.Trigger,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_11()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1602066545",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_34()
    local params;
    params = {
        -- EntityA,
        [1] = self.e_barrel,
        -- EntityB,
        [2] = self.ParticleSystem,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = true,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1936081347");
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

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|1936391731");
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
                [0] = self.f_box_OutputOrder_v2_54_Out_0,
                [1] = self.f_box_OutputOrder_v2_54_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RandomInteger_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomInteger_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|2013971160");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomInteger_v2_46_Out,
    });
    params = {
        -- Max,
        [0] = 3,
        -- Min,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Ammo_Regen|2053043974");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
                [2] = self.f_box_OutputOrder_v2_22_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_38_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gp_FriendlyPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Spawner_v2_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    self.e_barrel = l0:GetDataOutValue(1);
end;

function export:OnExit_box_RandomInteger_v2_46_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    self._sld_Result_box_RandomInteger_v2_46 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Used()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="EnableCatapult" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Used" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Amplitude" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Archetype" AnchorDynType="0" DataTypeID="archetype" />
		<DataIn Name="ParticleSystem" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Target" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Trigger" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
