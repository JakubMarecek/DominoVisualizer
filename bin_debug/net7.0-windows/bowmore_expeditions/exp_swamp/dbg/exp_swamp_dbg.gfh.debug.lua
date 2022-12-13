LUAC�r -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/dbg/exp_swamp_dbg.domino
-- User graph: GFH
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
        cboxRes:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/GroupIter.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/ForceInVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehiclePositionLockModifier.lua");
        cboxRes:RegisterBox("Domino/System/VehicleSeatModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/DBG/Exp_Swamp_DBG.GFH.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/GFHSystemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableGFHSystem",
            },
            [1] = {
                name = "EnableGFHSystem",
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
                name = "enableAfterBeat",
                type = "bool",
            },
            [1] = {
                name = "immediateDespawn",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")] = {
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
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "SeatType",
                type = "int",
            },
            [2] = {
                name = "vehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/TeleportPawns.lua")] = {
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
            [0] = {
                name = "ClientDestinationEntity",
                type = "entity",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "LoadingScreen",
                type = "bool",
            },
            [3] = {
                name = "LoadSynch",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "UseBlackScreen",
                type = "bool",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/VehiclePositionLockModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Lock",
            },
            [1] = {
                name = "Unlock",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Locked",
                delayed = false,
            },
            [1] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "VehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Lock",
            },
            [1] = {
                name = "Unlock",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Locked",
                delayed = false,
            },
            [1] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "IsAI",
                type = "bool",
            },
            [1] = {
                name = "IsPlayer",
                type = "bool",
            },
            [2] = {
                name = "SeatIndex",
                type = "int",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/VisibilityModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "GFH";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH";
    self.eHelicopter = nil;
    self.ePlayer_EnteringVehicle = nil;
    self.eGFH = nil;
    self.eFFH_Dog = nil;
    self.eFFH_Boar = nil;
    self.box_ConsoleCommand_v3_25 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|157574601");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_25_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_25_Execute,
    });
    self.box_ConsoleCommand_v3_16 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|193700419");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_16_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_16_Execute,
    });
    self.box_ConsoleCommand_v3_42 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|203542274");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_42_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_42_Execute,
    });
    self.box_ConsoleCommand_v3_32 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|219439870");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_32_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_32_Execute,
    });
    self.box_VisibilityModifier_30 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|259256554");
    l0:SetConnections({
    });
    self.box_GroupIter_27 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|346697701");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_27_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_27_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_27_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_27_Stopped,
    });
    self.box_ConsoleCommand_v3_47 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|621412515");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_47_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_47_Execute,
    });
    self.box_VisibilityModifier_28 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|634923615");
    l0:SetConnections({
    });
    self.box_GroupIter_20 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|668874157");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_20_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_20_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_20_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_20_Stopped,
    });
    self.box_ConsoleCommand_v3_22 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|700286476");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_22_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_22_Execute,
    });
    self.box_VisibilityModifier_37 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|809795237");
    l0:SetConnections({
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|952619467");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_ConsoleCommand_v3_24 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|963149719");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_24_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_24_Execute,
    });
    self.box_ConsoleCommand_v3_14 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|995101581");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_14_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_14_Execute,
    });
    self.box_ConsoleCommand_v3_56 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1059290045");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_56_Execute,
    });
    self.box_GroupIter_31 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1122892957");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_31_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_31_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_31_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_31_Stopped,
    });
    self.box_ConsoleCommand_v3_43 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1141753429");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_43_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_43_Execute,
    });
    self.box_GroupIter_39 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1160524447");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_39_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_39_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_39_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_39_Stopped,
    });
    self.box_VisibilityModifier_38 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1166777648");
    l0:SetConnections({
    });
    self.box_ConsoleCommand_v3_11 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1192223823");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_11_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_11_Execute,
    });
    self.box_GroupIter_36 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1427739583");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_36_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_36_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_36_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_36_Stopped,
    });
    self.box_ConsoleCommand_v3_51 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1579094743");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_51_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_51_Execute,
    });
    self.box_GunsForHireSystemModifier_46 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1583892824");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_26 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1605051756");
    l0:SetConnections({
    });
    self.box_ConsoleCommand_v3_2 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1629389962");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_2_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_2_Execute,
    });
    self.box_ConsoleCommand_v3_54 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1702519963");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_54_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_54_Execute,
    });
    self.box_ConsoleCommand_v3_55 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1711525888");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_55_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_55_Execute,
    });
    self.box_GroupIter_19 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1737461547");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_19_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_19_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_19_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_19_Stopped,
    });
    self.box_GroupIter_34 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1750591921");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_34_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_34_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_34_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_34_Stopped,
    });
    self.box_GroupIter_35 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1886954350");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_35_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_35_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_35_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_35_Stopped,
    });
    self.box_GroupIter_21 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1891006343");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_21_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_21_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_21_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_21_Stopped,
    });
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1892340497");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_TeleportPawns_9 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1898916310");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_9_Out,
    });
    self.box_ConsoleCommand_v3_44 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1899014448");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_44_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_44_Execute,
    });
    self.box_GroupIter_1 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1909558597");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_1_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_1_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_1_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_1_Stopped,
    });
    self.box_VisibilityModifier_29 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|2028433973");
    l0:SetConnections({
    });
    self.box_TeleportPawns_6 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|2144590512");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_6_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_ConsoleCommand_v3_51();
    l0 = self.box_ConsoleCommand_v3_51;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|489323296", "489323296", "GFH", "In", "box_ConsoleCommand_v3_51.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_VehicleSeatModifier_v2_41_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_48();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1495959630", "1495959630", "GFH", "box_VehicleSeatModifier_v2_41.Unlocked", "box_VehicleSeatModifier_v2_48.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_25_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_32();
    l0 = self.box_ConsoleCommand_v3_25;
    l1 = self.box_ConsoleCommand_v3_32;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1269264799", "1269264799", "GFH", "box_ConsoleCommand_v3_25.Enabled", "box_ConsoleCommand_v3_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_25_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = self.box_ConsoleCommand_v3_25;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1901316939", "1901316939", "GFH", "box_ConsoleCommand_v3_25.Execute", "box_OutputOrder_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_16_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_14();
    l0 = self.box_ConsoleCommand_v3_16;
    l1 = self.box_ConsoleCommand_v3_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|624794195", "624794195", "GFH", "box_ConsoleCommand_v3_16.Enabled", "box_ConsoleCommand_v3_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_16_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_GroupIter_19();
    l0 = self.box_ConsoleCommand_v3_16;
    l1 = self.box_GroupIter_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1939653382", "1939653382", "GFH", "box_ConsoleCommand_v3_16.Execute", "box_GroupIter_19.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_ConsoleCommand_v3_42_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_43();
    l0 = self.box_ConsoleCommand_v3_42;
    l1 = self.box_ConsoleCommand_v3_43;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|950308279", "950308279", "GFH", "box_ConsoleCommand_v3_42.Enabled", "box_ConsoleCommand_v3_43.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_42_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_46();
    l0 = self.box_ConsoleCommand_v3_42;
    l1 = self.box_GunsForHireSystemModifier_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1850143332", "1850143332", "GFH", "box_ConsoleCommand_v3_42.Execute", "box_GunsForHireSystemModifier_46.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_ConsoleCommand_v3_32_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_42();
    l0 = self.box_ConsoleCommand_v3_32;
    l1 = self.box_ConsoleCommand_v3_42;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|819378188", "819378188", "GFH", "box_ConsoleCommand_v3_32.Enabled", "box_ConsoleCommand_v3_42.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_32_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_ConsoleCommand_v3_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|527842018", "527842018", "GFH", "box_ConsoleCommand_v3_32.Execute", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_57();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|737287461", "737287461", "GFH", "box_OutputOrder_v2_60.Out", "box_HealthModifier_v2_57.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_58();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1507815389", "1507815389", "GFH", "box_OutputOrder_v2_60.Out", "box_HealthModifier_v2_58.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_59();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|2144841956", "2144841956", "GFH", "box_OutputOrder_v2_60.Out", "box_HealthModifier_v2_59.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupIter_27_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_27_PawnIter();
    params = self:OnEnter_box_VisibilityModifier_30();
    l0 = self.box_GroupIter_27;
    l1 = self.box_VisibilityModifier_30;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1547125903", "1547125903", "GFH", "box_GroupIter_27.PawnIter", "box_VisibilityModifier_30.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_ConsoleCommand_v3_47_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_54();
    l0 = self.box_ConsoleCommand_v3_47;
    l1 = self.box_ConsoleCommand_v3_54;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1872946601", "1872946601", "GFH", "box_ConsoleCommand_v3_47.Enabled", "box_ConsoleCommand_v3_54.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_47_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_VehiclePositionLockModifier_45();
    l0 = self.box_ConsoleCommand_v3_47;
    l1 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1330926910", "1330926910", "GFH", "box_ConsoleCommand_v3_47.Execute", "box_VehiclePositionLockModifier_45.Lock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lock
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupIter_20_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_20_PawnIter();
    params = self:OnEnter_box_ForceInVehicle_v2_17();
    l0 = self.box_GroupIter_20;
    l1 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|650963618", "650963618", "GFH", "box_GroupIter_20.PawnIter", "box_ForceInVehicle_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_22_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_24();
    l0 = self.box_ConsoleCommand_v3_22;
    l1 = self.box_ConsoleCommand_v3_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1982508184", "1982508184", "GFH", "box_ConsoleCommand_v3_22.Enabled", "box_ConsoleCommand_v3_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_22_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleSeatModifier_v2_23();
    l0 = self.box_ConsoleCommand_v3_22;
    l1 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1424876359", "1424876359", "GFH", "box_ConsoleCommand_v3_22.Execute", "box_VehicleSeatModifier_v2_23.Lock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lock
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_27();
    l0 = self.box_GroupIter_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|479446831", "479446831", "GFH", "box_OutputOrder_v2_40.Out", "box_GroupIter_27.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_39();
    l0 = self.box_GroupIter_39;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1588641193", "1588641193", "GFH", "box_OutputOrder_v2_40.Out", "box_GroupIter_39.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_40_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_35();
    l0 = self.box_GroupIter_35;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1393082682", "1393082682", "GFH", "box_OutputOrder_v2_40.Out", "box_GroupIter_35.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ForceInVehicle_v2_4();
    l0 = self.box_Delay_v5_18;
    l1 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1643395282", "1643395282", "GFH", "box_Delay_v5_18.TimeElapsed", "box_ForceInVehicle_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_24_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_25();
    l0 = self.box_ConsoleCommand_v3_24;
    l1 = self.box_ConsoleCommand_v3_25;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1282823788", "1282823788", "GFH", "box_ConsoleCommand_v3_24.Enabled", "box_ConsoleCommand_v3_25.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_24_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleSeatModifier_v2_41();
    l0 = self.box_ConsoleCommand_v3_24;
    l1 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|587881414", "587881414", "GFH", "box_ConsoleCommand_v3_24.Execute", "box_VehicleSeatModifier_v2_41.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_14_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_22();
    l0 = self.box_ConsoleCommand_v3_14;
    l1 = self.box_ConsoleCommand_v3_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|927651096", "927651096", "GFH", "box_ConsoleCommand_v3_14.Enabled", "box_ConsoleCommand_v3_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_14_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = self.box_ConsoleCommand_v3_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|254274679", "254274679", "GFH", "box_ConsoleCommand_v3_14.Execute", "box_OutputOrder_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_56_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = self.box_ConsoleCommand_v3_56;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1901532529", "1901532529", "GFH", "box_ConsoleCommand_v3_56.Execute", "box_OutputOrder_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupIter_31_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_31_PawnIter();
    params = self:OnEnter_box_VisibilityModifier_28();
    l0 = self.box_GroupIter_31;
    l1 = self.box_VisibilityModifier_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|757739132", "757739132", "GFH", "box_GroupIter_31.PawnIter", "box_VisibilityModifier_28.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_GetLocalPlayer_v2_10_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_9();
    l0 = self.box_TeleportPawns_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|135211000", "135211000", "GFH", "box_GetLocalPlayer_v2_10.Out", "box_TeleportPawns_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ConsoleCommand_v3_43_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_44();
    l0 = self.box_ConsoleCommand_v3_43;
    l1 = self.box_ConsoleCommand_v3_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|405687406", "405687406", "GFH", "box_ConsoleCommand_v3_43.Enabled", "box_ConsoleCommand_v3_44.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_43_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_46();
    l0 = self.box_ConsoleCommand_v3_43;
    l1 = self.box_GunsForHireSystemModifier_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|953204976", "953204976", "GFH", "box_ConsoleCommand_v3_43.Execute", "box_GunsForHireSystemModifier_46.EnableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableGFHSystem
    l1:Exec(1, params);
end;

function export:f_box_GroupIter_39_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_39_PawnIter();
    params = self:OnEnter_box_VisibilityModifier_38();
    l0 = self.box_GroupIter_39;
    l1 = self.box_VisibilityModifier_38;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1369180126", "1369180126", "GFH", "box_GroupIter_39.PawnIter", "box_VisibilityModifier_38.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_34();
    l0 = self.box_GroupIter_34;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|634973657", "634973657", "GFH", "box_OutputOrder_v2_33.Out", "box_GroupIter_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_36();
    l0 = self.box_GroupIter_36;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1505014619", "1505014619", "GFH", "box_OutputOrder_v2_33.Out", "box_GroupIter_36.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_31();
    l0 = self.box_GroupIter_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1253293571", "1253293571", "GFH", "box_OutputOrder_v2_33.Out", "box_GroupIter_31.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_ConsoleCommand_v3_11_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_16();
    l0 = self.box_ConsoleCommand_v3_11;
    l1 = self.box_ConsoleCommand_v3_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1701003844", "1701003844", "GFH", "box_ConsoleCommand_v3_11.Enabled", "box_ConsoleCommand_v3_16.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_11_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_10();
    l0 = self.box_ConsoleCommand_v3_11;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1898796121", "1898796121", "GFH", "box_ConsoleCommand_v3_11.Execute", "box_GetLocalPlayer_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_5_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_6();
    l0 = self.box_TeleportPawns_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|65552664", "65552664", "GFH", "box_GetLocalPlayer_v2_5.Out", "box_TeleportPawns_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GroupIter_36_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_36_PawnIter();
    params = self:OnEnter_box_VisibilityModifier_37();
    l0 = self.box_GroupIter_36;
    l1 = self.box_VisibilityModifier_37;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1265784001", "1265784001", "GFH", "box_GroupIter_36.PawnIter", "box_VisibilityModifier_37.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_51_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_2();
    l0 = self.box_ConsoleCommand_v3_51;
    l1 = self.box_ConsoleCommand_v3_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|505740206", "505740206", "GFH", "box_ConsoleCommand_v3_51.Enabled", "box_ConsoleCommand_v3_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_51_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_52();
    l0 = self.box_ConsoleCommand_v3_51;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1861798128", "1861798128", "GFH", "box_ConsoleCommand_v3_51.Execute", "box_HealthModifier_v2_52.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_2_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_11();
    l0 = self.box_ConsoleCommand_v3_2;
    l1 = self.box_ConsoleCommand_v3_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1619870059", "1619870059", "GFH", "box_ConsoleCommand_v3_2.Enabled", "box_ConsoleCommand_v3_11.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_2_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_5();
    l0 = self.box_ConsoleCommand_v3_2;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1545410968", "1545410968", "GFH", "box_ConsoleCommand_v3_2.Execute", "box_GetLocalPlayer_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_54_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_55();
    l0 = self.box_ConsoleCommand_v3_54;
    l1 = self.box_ConsoleCommand_v3_55;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|348930532", "348930532", "GFH", "box_ConsoleCommand_v3_54.Enabled", "box_ConsoleCommand_v3_55.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_54_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_53();
    l0 = self.box_ConsoleCommand_v3_54;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1101379808", "1101379808", "GFH", "box_ConsoleCommand_v3_54.Execute", "box_VehicleModifier_v2_53.SetExitEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetExitEnabled
    l1:Exec(16, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_55_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_56();
    l0 = self.box_ConsoleCommand_v3_55;
    l1 = self.box_ConsoleCommand_v3_56;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1824913826", "1824913826", "GFH", "box_ConsoleCommand_v3_55.Enabled", "box_ConsoleCommand_v3_56.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_55_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_53();
    l0 = self.box_ConsoleCommand_v3_55;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1206853663", "1206853663", "GFH", "box_ConsoleCommand_v3_55.Execute", "box_VehicleModifier_v2_53.SetExitDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetExitDisabled
    l1:Exec(15, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupIter_19_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_19_PawnIter();
    params = self:OnEnter_box_ForceInVehicle_v2_15();
    l0 = self.box_GroupIter_19;
    l1 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|2107599859", "2107599859", "GFH", "box_GroupIter_19.PawnIter", "box_ForceInVehicle_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupIter_34_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_34_PawnIter();
    params = self:OnEnter_box_VisibilityModifier_26();
    l0 = self.box_GroupIter_34;
    l1 = self.box_VisibilityModifier_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1893316478", "1893316478", "GFH", "box_GroupIter_34.PawnIter", "box_VisibilityModifier_26.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_GroupIter_35_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_35_PawnIter();
    params = self:OnEnter_box_VisibilityModifier_29();
    l0 = self.box_GroupIter_35;
    l1 = self.box_VisibilityModifier_29;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1085928607", "1085928607", "GFH", "box_GroupIter_35.PawnIter", "box_VisibilityModifier_29.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_GroupIter_21_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_21_PawnIter();
    params = self:OnEnter_box_ForceInVehicle_v2_7();
    l0 = self.box_GroupIter_21;
    l1 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|2035988963", "2035988963", "GFH", "box_GroupIter_21.PawnIter", "box_ForceInVehicle_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ForceInVehicle_v2_12();
    l0 = self.box_Delay_v5_13;
    l1 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|251464497", "251464497", "GFH", "box_Delay_v5_13.TimeElapsed", "box_ForceInVehicle_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_TeleportPawns_9;
    l1 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1761921577", "1761921577", "GFH", "box_TeleportPawns_9.Out", "box_Delay_v5_13.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ConsoleCommand_v3_44_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_47();
    l0 = self.box_ConsoleCommand_v3_44;
    l1 = self.box_ConsoleCommand_v3_47;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|726447512", "726447512", "GFH", "box_ConsoleCommand_v3_44.Enabled", "box_ConsoleCommand_v3_47.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_44_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_VehiclePositionLockModifier_45();
    l0 = self.box_ConsoleCommand_v3_44;
    l1 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|646897666", "646897666", "GFH", "box_ConsoleCommand_v3_44.Execute", "box_VehiclePositionLockModifier_45.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupIter_1_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_1_PawnIter();
    params = self:OnEnter_box_ForceInVehicle_v2_3();
    l0 = self.box_GroupIter_1;
    l1 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1113832066", "1113832066", "GFH", "box_GroupIter_1.PawnIter", "box_ForceInVehicle_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_48_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_49();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1439904618", "1439904618", "GFH", "box_VehicleSeatModifier_v2_48.Unlocked", "box_VehicleSeatModifier_v2_49.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_49_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_50();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1918051140", "1918051140", "GFH", "box_VehicleSeatModifier_v2_49.Unlocked", "box_VehicleSeatModifier_v2_50.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_20();
    l0 = self.box_GroupIter_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1924008276", "1924008276", "GFH", "box_OutputOrder_v2_8.Out", "box_GroupIter_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_21();
    l0 = self.box_GroupIter_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1970990711", "1970990711", "GFH", "box_OutputOrder_v2_8.Out", "box_GroupIter_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_1();
    l0 = self.box_GroupIter_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|519634919", "519634919", "GFH", "box_OutputOrder_v2_8.Out", "box_GroupIter_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_TeleportPawns_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_TeleportPawns_6;
    l1 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|477408418", "477408418", "GFH", "box_TeleportPawns_6.Out", "box_Delay_v5_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:OnEnter_box_VehicleSeatModifier_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|21184514");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_41_Unlocked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = "2108233858020286716",
    };
    return params;
end;

function export:OnEnter_box_ForceInVehicle_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceInVehicle_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|50721490");
    l0:SetConnections({
    });
    params = {
        -- pawns,
        [0] = self.eGFH,
        -- SeatType,
        [1] = 2,
        -- vehicleEntity,
        [2] = "2108233858020286716",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_25()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "gfh_unhide",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_16()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "gfh_snapto_introchopper_swampc2_seattype2_direct",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_42()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "gfh_disable",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_32()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "gfh_hide",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_30()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.eGFH,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|315935958");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#475E503B",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|318131424");
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
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
                [2] = self.f_box_OutputOrder_v2_60_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupIter_27()
    local params;
    params = {
        -- entities,
        [0] = "#C439C73D",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_47()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "gfh_helicopterlock",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_28()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.eFFH_Boar,
    };
    return params;
end;

function export:OnEnter_box_GroupIter_20()
    local params;
    params = {
        -- entities,
        [0] = "#C439C73D",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_22()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "gfh_snapto_introchopper_swampc2_lockseats",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_37()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.eFFH_Dog,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|848688289");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2108233858020286716",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|896765704");
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

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_24()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "gfh_snapto_introchopper_swampc2_unlockseats",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_14()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "gfh_snapto_introchopper_swampc2_seattype3_direct",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_56()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "gfh_killgfhffh",
    };
    return params;
end;

function export:OnEnter_box_ForceInVehicle_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceInVehicle_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1093153479");
    l0:SetConnections({
    });
    params = {
        -- pawns,
        [0] = "#C439C73D",
        -- SeatType,
        [1] = 3,
        -- vehicleEntity,
        [2] = "2108233858020286716",
    };
    return params;
end;

function export:OnEnter_box_ForceInVehicle_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceInVehicle_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1108460620");
    l0:SetConnections({
    });
    params = {
        -- pawns,
        [0] = self.eFFH_Dog,
        -- SeatType,
        [1] = 3,
        -- vehicleEntity,
        [2] = "2108233858020286716",
    };
    return params;
end;

function export:OnEnter_box_GroupIter_31()
    local params;
    params = {
        -- entities,
        [0] = "#90400C70",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1129190417");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_43()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "gfh_enable",
    };
    return params;
end;

function export:OnEnter_box_GroupIter_39()
    local params;
    params = {
        -- entities,
        [0] = "#DE9E034F",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_38()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.eFFH_Dog,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1182727614");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
                [2] = self.f_box_OutputOrder_v2_33_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_11()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "gfh_snapto_introchopper_swampc2_seattype3",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1318046348");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_5_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ForceInVehicle_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceInVehicle_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1356812360");
    l0:SetConnections({
    });
    params = {
        -- pawns,
        [0] = self.eFFH_Boar,
        -- SeatType,
        [1] = 3,
        -- vehicleEntity,
        [2] = "2108233858020286716",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1382698474");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#DE9E034F",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_GroupIter_36()
    local params;
    params = {
        -- entities,
        [0] = "#DE9E034F",
    };
    return params;
end;

function export:OnEnter_box_VehiclePositionLockModifier_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehiclePositionLockModifier_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1441686292");
    l0:SetConnections({
    });
    params = {
        -- VehicleEntity,
        [0] = "2108233858020286716",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1441777709");
    l0:SetConnections({
    });
    params = {
        -- IsAI,
        [0] = false,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = "2108233858020286716",
    };
    return params;
end;

function export:OnEnter_box_ForceInVehicle_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceInVehicle_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1442218504");
    l0:SetConnections({
    });
    params = {
        -- pawns,
        [0] = self.eGFH,
        -- SeatType,
        [1] = 3,
        -- vehicleEntity,
        [2] = "2108233858020286716",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_51()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "gfh_killpilot",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_46()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_26()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.eGFH,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_2()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "gfh_snapto_introchopper_swampc2_seattype2",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_54()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "gfh_helicopterexit_enable",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1711174403");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#C439C73D",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_55()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "gfh_helicopterexit_disable",
    };
    return params;
end;

function export:OnEnter_box_GroupIter_19()
    local params;
    params = {
        -- entities,
        [0] = "#C439C73D",
    };
    return params;
end;

function export:OnEnter_box_GroupIter_34()
    local params;
    params = {
        -- entities,
        [0] = "#C439C73D",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1862946574");
    l0:SetConnections({
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = "2108233858020286716",
    };
    return params;
end;

function export:OnEnter_box_ForceInVehicle_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceInVehicle_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1870511806");
    l0:SetConnections({
    });
    params = {
        -- pawns,
        [0] = "#C439C73D",
        -- SeatType,
        [1] = 2,
        -- vehicleEntity,
        [2] = "2108233858020286716",
    };
    return params;
end;

function export:OnEnter_box_GroupIter_35()
    local params;
    params = {
        -- entities,
        [0] = "#90400C70",
    };
    return params;
end;

function export:OnEnter_box_GroupIter_21()
    local params;
    params = {
        -- entities,
        [0] = "#DE9E034F",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = l0:GetDataOutValue(0),
        -- LoadingScreen,
        [2] = false,
        -- LoadSynch,
        [3] = false,
        -- Pawns,
        [4] = "#C439C73D",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_44()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "gfh_helicopterunlock",
    };
    return params;
end;

function export:OnEnter_box_GroupIter_1()
    local params;
    params = {
        -- entities,
        [0] = "#90400C70",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1943995767");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_48_Unlocked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 1,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = "2108233858020286716",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|1969580341");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#90400C70",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|2013301942");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_49_Unlocked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 2,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = "2108233858020286716",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_29()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.eFFH_Boar,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@GFH|2043495884");
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
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = l0:GetDataOutValue(0),
        -- LoadingScreen,
        [2] = false,
        -- LoadSynch,
        [3] = false,
        -- Pawns,
        [4] = "#C439C73D",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnExit_box_GroupIter_27_PawnIter()
    local l0;
    l0 = self.box_GroupIter_27;
    self.eGFH = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_20_PawnIter()
    local l0;
    l0 = self.box_GroupIter_20;
    self.eGFH = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_31_PawnIter()
    local l0;
    l0 = self.box_GroupIter_31;
    self.eFFH_Boar = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_10_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l1 = self.box_TeleportPawns_9;
    l1:GetLuaBox().Destination = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_39_PawnIter()
    local l0;
    l0 = self.box_GroupIter_39;
    self.eFFH_Dog = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_5_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l1 = self.box_TeleportPawns_6;
    l1:GetLuaBox().Destination = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_36_PawnIter()
    local l0;
    l0 = self.box_GroupIter_36;
    self.eFFH_Dog = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_19_PawnIter()
    local l0;
    l0 = self.box_GroupIter_19;
    self.eGFH = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_34_PawnIter()
    local l0;
    l0 = self.box_GroupIter_34;
    self.eGFH = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_35_PawnIter()
    local l0;
    l0 = self.box_GroupIter_35;
    self.eFFH_Boar = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_21_PawnIter()
    local l0;
    l0 = self.box_GroupIter_21;
    self.eFFH_Dog = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_1_PawnIter()
    local l0;
    l0 = self.box_GroupIter_1;
    self.eFFH_Boar = l0:GetDataOutValue(0);
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
