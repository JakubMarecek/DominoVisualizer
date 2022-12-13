LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni52/uni52_020_b11.domino
-- User graph: Custom_NarativeSetup
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Enable_Blackbars" Type="Core|bool" />
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Coop/AllPlayers/GodMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/EquippableWieldListener.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/LeashOverride.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PawnGadgetCheck_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/InputPriorityModifier_v4.lua");
        cboxRes:RegisterBox("Domino/System/Player/PlayersVisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/WieldInventory_v5.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCinematicBlackBars.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayPauseMenu_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1726923555.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1041232324.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI52/UNI52_020_B11.Custom_NarativeSetup.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "BasicSetup",
            },
            [1] = {
                name = "HolsterWeapon",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Holstered",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Enable_Blackbars",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.UIMode.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CinematicMode",
            },
            [1] = {
                name = "NormalMode",
            },
            [2] = {
                name = "OutpostMode",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "OnCinematicMode",
                delayed = false,
            },
            [1] = {
                name = "OnNormalMode",
                delayed = false,
            },
            [2] = {
                name = "OnOutpostMode",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
        },
        dataInCount = 0,
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
    metadataTable[GetPathID("Domino/System/Coop/AllPlayers/GodMode_v3.lua")] = {
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "disableAfterBeat",
                type = "bool",
            },
            [1] = {
                name = "Mode",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/EquippableWieldListener.lua")] = {
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
                name = "Drawn",
                delayed = true,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "Holstered",
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
                name = "itemDescriptor",
                type = "genericdb",
            },
            [2] = {
                name = "itemFilter",
                type = "genericdb",
            },
            [3] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "ammo",
                type = "int",
            },
            [1] = {
                name = "wieldedItem",
                type = "genericdb",
            },
            [2] = {
                name = "wielder",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/LeashOverride.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableDefaultLeash",
            },
            [1] = {
                name = "EnableDefaultLeash",
            },
            [2] = {
                name = "RemoveCustomLeash",
            },
            [3] = {
                name = "UseCustomLeash",
            },
        },
        controlInCount = 4,
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
                name = "LeashCreated",
                delayed = false,
            },
            [3] = {
                name = "LeashRemoved",
                delayed = false,
            },
            [4] = {
                name = "OnLeashBroken",
                delayed = true,
            },
            [5] = {
                name = "OnLeashFinalWarning",
                delayed = true,
            },
            [6] = {
                name = "OnLeashWarning",
                delayed = true,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "CustomLeashDistance",
                type = "float",
            },
            [1] = {
                name = "CustomLeashFinalWarningDistance",
                type = "float",
            },
            [2] = {
                name = "CustomLeashWarningDistance",
                type = "float",
            },
            [3] = {
                name = "WarningText",
                type = "oasis",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "PlayerToTeleport",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/NoWeaponMode_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Off",
            },
            [1] = {
                name = "On",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnEnter",
                delayed = false,
            },
            [1] = {
                name = "OnLeave",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "useAnims",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/PawnGadgetCheck_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "InHands",
                delayed = false,
            },
            [1] = {
                name = "InInventory",
                delayed = false,
            },
            [2] = {
                name = "NotFound",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "categoryName",
                type = "string",
            },
            [1] = {
                name = "pawn",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/InputPriorityModifier_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Release",
            },
            [1] = {
                name = "Set",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnRelease",
                delayed = false,
            },
            [1] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "InputPriority",
                type = "string",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/PlayersVisibilityModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetAllInvisible",
            },
            [1] = {
                name = "SetAllVisible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSetAllInvisible",
                delayed = false,
            },
            [1] = {
                name = "OnSetAllVisible",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ExcludeLocalPlayer",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/WieldInventory_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "LuaDraw",
            },
            [1] = {
                name = "LuaHolster",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Drawn",
                delayed = false,
            },
            [1] = {
                name = "Holstered",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "itemDescriptorId",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterId",
                type = "genericdb",
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
    metadataTable[GetPathID("Domino/System/UI/DisplayCinematicBlackBars.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Hide",
            },
            [1] = {
                name = "Show",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Hidden",
                delayed = false,
            },
            [1] = {
                name = "Showned",
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
    metadataTable[GetPathID("Domino/System/UI/DisplayPauseMenu_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Close",
            },
            [1] = {
                name = "Open",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Closed",
                delayed = false,
            },
            [1] = {
                name = "Opened",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "EnableMenuTutorial",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "ShowPage",
                type = "int",
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
    self._name = "Custom_NarativeSetup";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup";
    self.Out = DummyFunction;
    self.Holstered = DummyFunction;
    self.BinocularsHolstered = false;
    self.dbCategoryFilter = "9015175750049587";
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|5705287");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|44652621");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_SoundModifier_v2_29 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|213246152");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_29_Started,
    });
    self.box_PlayersVisibilityModifier_19 = cbox:CreateBox("Domino/System/Player/PlayersVisibilityModifier.lua");
    l0 = self.box_PlayersVisibilityModifier_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayersVisibilityModifier_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|366408320");
    l0:SetConnections({
        -- OnSetAllInvisible,
        [0] = self.f_box_PlayersVisibilityModifier_19_OnSetAllInvisible,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|413305679");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_SoundModifier_v2_32 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|597831615");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_32_Started,
    });
    self.box_GodMode_v3_22 = cbox:CreateBox("Domino/System/Coop/AllPlayers/GodMode_v3.lua");
    l0 = self.box_GodMode_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GodMode_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|635995829");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GodMode_v3_22_Enabled,
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|972607092");
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
    self.box_NoWeaponMode_v3_14 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1035253739");
    l0:SetConnections({
        -- OnEnter,
        [0] = self.f_box_NoWeaponMode_v3_14_OnEnter,
    });
    self.box_UIMode_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
    l0 = self.box_UIMode_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIMode_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1049301508");
    l0:SetConnections({
        -- OnCinematicMode,
        [0] = self.f_box_UIMode_11_OnCinematicMode,
    });
    self.box_EquippableWieldListener_21 = cbox:CreateBox("Domino/System/EquippableWieldListener.lua");
    l0 = self.box_EquippableWieldListener_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquippableWieldListener_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1050556988");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_EquippableWieldListener_21_Enabled,
        -- Holstered,
        [3] = self.f_box_EquippableWieldListener_21_Holstered,
    });
    self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1171046520");
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
        [0] = self.f_box_MultipleOR_24_Out,
    });
    self.box_EquippableWieldListener_6 = cbox:CreateBox("Domino/System/EquippableWieldListener.lua");
    l0 = self.box_EquippableWieldListener_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquippableWieldListener_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1195411135");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_EquippableWieldListener_6_Enabled,
        -- Holstered,
        [3] = self.f_box_EquippableWieldListener_6_Holstered,
    });
    self.box_WieldInventory_v5_8 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1225112261");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_4 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1243219394");
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
        [0] = self.f_box_MultipleAND_v2_4_Out,
    });
    self.box_LeashOverride_34 = cbox:CreateBox("Domino/System/LeashOverride.lua");
    l0 = self.box_LeashOverride_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LeashOverride_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1280639345");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LeashOverride_34_Disabled,
    });
    self.box_InputPriorityModifier_v4_31 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1406978304");
    l0:SetConnections({
        -- OnSet,
        [1] = self.f_box_InputPriorityModifier_v4_31_OnSet,
    });
    self.box_InputPriorityModifier_v4_10 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1554546978");
    l0:SetConnections({
        -- OnSet,
        [1] = self.f_box_InputPriorityModifier_v4_10_OnSet,
    });
    self.box_OnceOnly_v3_15 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1714300379");
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
                [0] = self.f_box_OnceOnly_v3_15_Out_0,
            },
            count = 1,
        },
    });
    self.box_WieldInventory_v5_30 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|2145072960");
    l0:SetConnections({
    });
end;

function export:BasicSetup()
    local l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|714758221", "714758221", "Custom_NarativeSetup", "BasicSetup", "box_MultipleOR_17.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:HolsterWeapon()
    local params, l0;
    params = self:OnEnter_box_PawnGadgetCheck_v2_2();
    l0 = Boxes[GetPathID("Domino/System/PawnGadgetCheck_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1599221385", "1599221385", "Custom_NarativeSetup", "HolsterWeapon", "box_PawnGadgetCheck_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayPauseMenu_v2_9();
    l0 = self.box_MultipleOR_26;
    l1 = Boxes[GetPathID("Domino/System/UI/DisplayPauseMenu_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|130892880", "130892880", "Custom_NarativeSetup", "box_MultipleOR_26.Out", "box_DisplayPauseMenu_v2_9.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_28_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnGadgetCheck_v2_23();
    l0 = Boxes[GetPathID("Domino/System/PawnGadgetCheck_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1998583099", "1998583099", "Custom_NarativeSetup", "box_Compare_Boolean_28.A_is_False", "box_PawnGadgetCheck_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_28_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1109544975", "1109544975", "Custom_NarativeSetup", "box_Compare_Boolean_28.A_is_True", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_MultipleOR_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|2097681582", "2097681582", "Custom_NarativeSetup", "box_MultipleOR_13.Out", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_3_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1667103466", "1667103466", "Custom_NarativeSetup", "box_Compare_Boolean_3.A_is_False", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_3_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCinematicBlackBars_20();
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayCinematicBlackBars.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|773743490", "773743490", "Custom_NarativeSetup", "box_Compare_Boolean_3.A_is_True", "box_DisplayCinematicBlackBars_20.Show", clone:GetLuaBox(), l0:GetLuaBox());
    -- Show
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_29_Started()
    local params, l0, l1;
    params = self:OnEnter_box_LeashOverride_34();
    l0 = self.box_SoundModifier_v2_29;
    l1 = self.box_LeashOverride_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1519845950", "1519845950", "Custom_NarativeSetup", "box_SoundModifier_v2_29.Started", "box_LeashOverride_34.DisableDefaultLeash", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableDefaultLeash
    l1:Exec(0, params);
end;

function export:f_box_Simple_Node_12_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_4();
    l0 = self.box_MultipleAND_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|693230347", "693230347", "Custom_NarativeSetup", "box_Simple_Node_12.Out", "box_MultipleAND_v2_4.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_PlayersVisibilityModifier_19_OnSetAllInvisible()
    local params, l0, l1;
    params = self:OnEnter_box_GodMode_v3_22();
    l0 = self.box_PlayersVisibilityModifier_19;
    l1 = self.box_GodMode_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1796452128", "1796452128", "Custom_NarativeSetup", "box_PlayersVisibilityModifier_19.OnSetAllInvisible", "box_GodMode_v3_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_DisplayPauseMenu_v2_5_Closed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayPauseMenu_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InputPriorityModifier_v4_10();
    l0 = self.box_InputPriorityModifier_v4_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1748954406", "1748954406", "Custom_NarativeSetup", "box_DisplayPauseMenu_v2_5.Closed", "box_InputPriorityModifier_v4_10.Set", clone:GetLuaBox(), l0:GetLuaBox());
    -- Set
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_29();
    l0 = self.box_MultipleOR_17;
    l1 = self.box_SoundModifier_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1883288465", "1883288465", "Custom_NarativeSetup", "box_MultipleOR_17.Out", "box_SoundModifier_v2_29.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_DisplayPauseMenu_v2_9_Closed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayPauseMenu_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InputPriorityModifier_v4_31();
    l0 = self.box_InputPriorityModifier_v4_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1631743716", "1631743716", "Custom_NarativeSetup", "box_DisplayPauseMenu_v2_9.Closed", "box_InputPriorityModifier_v4_31.Set", clone:GetLuaBox(), l0:GetLuaBox());
    -- Set
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_32_Started()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_14();
    l0 = self.box_SoundModifier_v2_32;
    l1 = self.box_NoWeaponMode_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|764055049", "764055049", "Custom_NarativeSetup", "box_SoundModifier_v2_32.Started", "box_NoWeaponMode_v3_14.On", l0:GetLuaBox(), l1:GetLuaBox());
    -- On
    l1:Exec(1, params);
end;

function export:f_box_GodMode_v3_22_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_1();
    l0 = self.box_GodMode_v3_22;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1925833523", "1925833523", "Custom_NarativeSetup", "box_GodMode_v3_22.Enabled", "box_HealthModifier_v2_1.RemoveCritical", l0:GetLuaBox(), l1:GetLuaBox());
    -- RemoveCritical
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PawnGadgetCheck_v2_2_InHands()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnGadgetCheck_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquippableWieldListener_21();
    l0 = self.box_EquippableWieldListener_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|377906351", "377906351", "Custom_NarativeSetup", "box_PawnGadgetCheck_v2_2.InHands", "box_EquippableWieldListener_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PawnGadgetCheck_v2_2_InInventory()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnGadgetCheck_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1607499800", "1607499800", "Custom_NarativeSetup", "box_PawnGadgetCheck_v2_2.InInventory", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PawnGadgetCheck_v2_2_NotFound()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnGadgetCheck_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|298632408", "298632408", "Custom_NarativeSetup", "box_PawnGadgetCheck_v2_2.NotFound", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1411391261", "1411391261", "Custom_NarativeSetup", "box_OutputOrder_v2_16.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_4();
    l0 = self.box_MultipleAND_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|342531433", "342531433", "Custom_NarativeSetup", "box_OutputOrder_v2_16.Out", "box_MultipleAND_v2_4.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_SetBoolean_v2_18_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_18_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_32();
    l0 = self.box_SoundModifier_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|445843601", "445843601", "Custom_NarativeSetup", "box_SetBoolean_v2_18.Out", "box_SoundModifier_v2_32.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayPauseMenu_v2_5();
    l0 = self.box_MultipleOR_27;
    l1 = Boxes[GetPathID("Domino/System/UI/DisplayPauseMenu_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|570176807", "570176807", "Custom_NarativeSetup", "box_MultipleOR_27.Out", "box_DisplayPauseMenu_v2_5.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NoWeaponMode_v3_14_OnEnter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_NoWeaponMode_v3_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|989846662", "989846662", "Custom_NarativeSetup", "box_NoWeaponMode_v3_14.OnEnter", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UIMode_11_OnCinematicMode()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_28();
    l0 = self.box_UIMode_11;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|2020057242", "2020057242", "Custom_NarativeSetup", "box_UIMode_11.OnCinematicMode", "box_Compare_Boolean_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EquippableWieldListener_21_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_WieldInventory_v5_30();
    l0 = self.box_EquippableWieldListener_21;
    l1 = self.box_WieldInventory_v5_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1905578497", "1905578497", "Custom_NarativeSetup", "box_EquippableWieldListener_21.Enabled", "box_WieldInventory_v5_30.LuaHolster", l0:GetLuaBox(), l1:GetLuaBox());
    -- LuaHolster
    l1:Exec(1, params);
end;

function export:f_box_EquippableWieldListener_21_Holstered()
    local l0, l1;
    l0 = self.box_EquippableWieldListener_21;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|389666832", "389666832", "Custom_NarativeSetup", "box_EquippableWieldListener_21.Holstered", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_24_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_24;
    l1 = self.box_UIMode_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|982945669", "982945669", "Custom_NarativeSetup", "box_MultipleOR_24.Out", "box_UIMode_11.CinematicMode", l0:GetLuaBox(), l1:GetLuaBox());
    -- CinematicMode
    l1:Exec(0, {
    });
end;

function export:f_box_EquippableWieldListener_6_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_WieldInventory_v5_8();
    l0 = self.box_EquippableWieldListener_6;
    l1 = self.box_WieldInventory_v5_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|655306589", "655306589", "Custom_NarativeSetup", "box_EquippableWieldListener_6.Enabled", "box_WieldInventory_v5_8.LuaHolster", l0:GetLuaBox(), l1:GetLuaBox());
    -- LuaHolster
    l1:Exec(1, params);
end;

function export:f_box_EquippableWieldListener_6_Holstered()
    local l0, l1;
    l0 = self.box_EquippableWieldListener_6;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1492493977", "1492493977", "Custom_NarativeSetup", "box_EquippableWieldListener_6.Holstered", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleAND_v2_4_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_4;
    l1 = self.box_OnceOnly_v3_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|376578832", "376578832", "Custom_NarativeSetup", "box_MultipleAND_v2_4.Out", "box_OnceOnly_v3_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_LeashOverride_34_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayersVisibilityModifier_19();
    l0 = self.box_LeashOverride_34;
    l1 = self.box_PlayersVisibilityModifier_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1826212849", "1826212849", "Custom_NarativeSetup", "box_LeashOverride_34.Disabled", "box_PlayersVisibilityModifier_19.SetAllInvisible", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAllInvisible
    l1:Exec(0, params);
end;

function export:f_box_InputPriorityModifier_v4_31_OnSet()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_18();
    l0 = self.box_InputPriorityModifier_v4_31;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1432263111", "1432263111", "Custom_NarativeSetup", "box_InputPriorityModifier_v4_31.OnSet", "box_SetBoolean_v2_18.FromBool", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromBool
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|983207111", "983207111", "Custom_NarativeSetup", "box_OutputOrder_v2_7.Out", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|81758991", "81758991", "Custom_NarativeSetup", "box_OutputOrder_v2_7.Out", "box_Simple_Node_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_1_OnRemoveCritical()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_3();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|780428691", "780428691", "Custom_NarativeSetup", "box_HealthModifier_v2_1.OnRemoveCritical", "box_Compare_Boolean_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InputPriorityModifier_v4_10_OnSet()
    local l0, l1;
    l0 = self.box_InputPriorityModifier_v4_10;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|114083502", "114083502", "Custom_NarativeSetup", "box_InputPriorityModifier_v4_10.OnSet", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_15_Out_0()
    local l0;
    l0 = self.box_OnceOnly_v3_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|375141465", "375141465", "Custom_NarativeSetup", "box_OnceOnly_v3_15.Out", "Holstered", l0:GetLuaBox(), self);
    self:Holstered();
end;

function export:f_box_DisplayCinematicBlackBars_20_Showned()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayCinematicBlackBars.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|2110377277", "2110377277", "Custom_NarativeSetup", "box_DisplayCinematicBlackBars_20.Showned", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_12();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|874511745", "874511745", "Custom_NarativeSetup", "box_Simple_Node_33.Out", "box_Simple_Node_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PawnGadgetCheck_v2_23_InHands()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnGadgetCheck_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquippableWieldListener_6();
    l0 = self.box_EquippableWieldListener_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|997773489", "997773489", "Custom_NarativeSetup", "box_PawnGadgetCheck_v2_23.InHands", "box_EquippableWieldListener_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PawnGadgetCheck_v2_23_InInventory()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnGadgetCheck_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1472722698", "1472722698", "Custom_NarativeSetup", "box_PawnGadgetCheck_v2_23.InInventory", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PawnGadgetCheck_v2_23_NotFound()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnGadgetCheck_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|597027312", "597027312", "Custom_NarativeSetup", "box_PawnGadgetCheck_v2_23.NotFound", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:OnEnter_box_Compare_Boolean_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|38164214");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_28_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_28_A_is_True,
    });
    params = {
        -- A,
        [0] = self.BinocularsHolstered,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|163844044");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_3_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_3_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Enable_Blackbars,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_29()
    local params;
    DrawTextToScreen("Comment: Mixing Preset - Global - Stop", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Mixing Preset - Global - Stop");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1726923555",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|220689506");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_12_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayersVisibilityModifier_19()
    local params;
    params = {
        -- ExcludeLocalPlayer,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_DisplayPauseMenu_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayPauseMenu_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayPauseMenu_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|372226788");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_DisplayPauseMenu_v2_5_Closed,
    });
    params = {
        -- EnableMenuTutorial,
        [0] = false,
        -- pawns,
        [1] = "#ED455357",
        -- ShowPage,
        [2] = -1,
    };
    return params;
end;

function export:OnEnter_box_DisplayPauseMenu_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayPauseMenu_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayPauseMenu_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|470598088");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_DisplayPauseMenu_v2_9_Closed,
    });
    params = {
        -- EnableMenuTutorial,
        [0] = false,
        -- pawns,
        [1] = "#ED455357",
        -- ShowPage,
        [2] = -1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_32()
    local params;
    DrawTextToScreen("Comment: Mixing Preset - Holster - Start", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Mixing Preset - Holster - Start");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1041232324",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GodMode_v3_22()
    local params;
    params = {
        -- disableAfterBeat,
        [0] = true,
        -- Mode,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_PawnGadgetCheck_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnGadgetCheck_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnGadgetCheck_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|898159013");
    l0:SetConnections({
        -- InHands,
        [0] = self.f_box_PawnGadgetCheck_v2_2_InHands,
        -- InInventory,
        [1] = self.f_box_PawnGadgetCheck_v2_2_InInventory,
        -- NotFound,
        [2] = self.f_box_PawnGadgetCheck_v2_2_NotFound,
    });
    params = {
        -- categoryName,
        [0] = "binoculars",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|933090035");
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
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|965163457");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_18_Out,
    });
    params = {
        -- Bool,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_14()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_EquippableWieldListener_21()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptor,
        [1] = self.dbCategoryFilter,
        -- pawns,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_EquippableWieldListener_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptor,
        [1] = self.dbCategoryFilter,
        -- pawns,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_8()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015175750049587",
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_4()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_LeashOverride_34()
    local params;
    params = {
        -- CustomLeashDistance,
        [0] = 150,
        -- CustomLeashWarningDistance,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_31()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1540062852");
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

function export:OnEnter_box_HealthModifier_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1544483740");
    l0:SetConnections({
        -- OnRemoveCritical,
        [2] = self.f_box_HealthModifier_v2_1_OnRemoveCritical,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#ED455357",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_10()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_DisplayCinematicBlackBars_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayCinematicBlackBars.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCinematicBlackBars_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1854026686");
    l0:SetConnections({
        -- Showned,
        [1] = self.f_box_DisplayCinematicBlackBars_20_Showned,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|1977159268");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_33_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PawnGadgetCheck_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnGadgetCheck_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnGadgetCheck_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI52\\UNI52_020_B11.domino|@Custom_NarativeSetup|2099668596");
    l0:SetConnections({
        -- InHands,
        [0] = self.f_box_PawnGadgetCheck_v2_23_InHands,
        -- InInventory,
        [1] = self.f_box_PawnGadgetCheck_v2_23_InInventory,
        -- NotFound,
        [2] = self.f_box_PawnGadgetCheck_v2_23_NotFound,
    });
    params = {
        -- categoryName,
        [0] = "binoculars",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_30()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015175750049587",
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_18_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.BinocularsHolstered = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Holstered()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="BasicSetup" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="HolsterWeapon" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Holstered" AnchorDynType="0" IsDelayed="1" />
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Enable_Blackbars" AnchorDynType="0" DataTypeID="bool" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
