LUAC�e  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key01/key01_050/key01_050_omni.domino
-- User graph: KEY01_050_EntitySetup
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Nick" Type="Nomad|entity{}" />
    <DataIn Name="Kim" Type="Nomad|entity{}" />
    <DataIn Name="Truck" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleToCollisionsState_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.KEY01_050_EntitySetup.debug.lua")] = {
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
                name = "Kim",
                type = "entity",
            },
            [1] = {
                name = "Nick",
                type = "entity",
            },
            [2] = {
                name = "Truck",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
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
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/PawnInvincibleState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetInvincible",
            },
            [1] = {
                name = "UnsetInvincible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSet",
                delayed = false,
            },
            [1] = {
                name = "OnUnSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PawnInvincibleToCollisionsState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetInvincible",
            },
            [1] = {
                name = "UnsetInvincible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSet",
                delayed = false,
            },
            [1] = {
                name = "OnUnSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    self._name = "KEY01_050_EntitySetup";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup";
    self.Out = DummyFunction;
    self.eNickRye = nil;
    self.eTruck = nil;
    self.eKimRye = nil;
    self.box_GunsForHireSystemModifier_4 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|1655658480");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_4_Disabled,
    });
    self.box_InventoryItemModifier_11 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|2040224335");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_11_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_SetEntity_v2_8();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|571881972", "571881972", "KEY01_050_EntitySetup", "In", "box_SetEntity_v2_8.FromEntity", self, l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_8_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_9();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|336313709", "336313709", "KEY01_050_EntitySetup", "box_SetEntity_v2_8.Out", "box_SetEntity_v2_9.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PawnInvincibleToCollisions_v2_3_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleToCollisionsState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnInvincibleState_v2_5();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|1013843454", "1013843454", "KEY01_050_EntitySetup", "box_PawnInvincibleToCollisions_v2_3.OnSet", "box_PawnInvincibleState_v2_5.SetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetInvincible
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_9_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_10();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|955593537", "955593537", "KEY01_050_EntitySetup", "box_SetEntity_v2_9.Out", "box_SetEntity_v2_10.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PawnInvincibleState_v2_1_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_4();
    l0 = self.box_GunsForHireSystemModifier_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|1384205385", "1384205385", "KEY01_050_EntitySetup", "box_PawnInvincibleState_v2_1.OnSet", "box_GunsForHireSystemModifier_4.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_PawnInvincibleToCollisions_v2_2_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleToCollisionsState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnInvincibleToCollisions_v2_3();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleToCollisionsState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|1840902128", "1840902128", "KEY01_050_EntitySetup", "box_PawnInvincibleToCollisions_v2_2.OnSet", "box_PawnInvincibleToCollisions_v2_3.SetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetInvincible
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_6_OnSetCommandeerDisabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_6();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|1038384280", "1038384280", "KEY01_050_EntitySetup", "box_VehicleModifier_v2_6.OnSetCommandeerDisabled", "box_VehicleModifier_v2_6.SetExitDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetExitDisabled
    l0:Exec(15, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_6_OnSetExitDisabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_11();
    l0 = self.box_InventoryItemModifier_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|963609898", "963609898", "KEY01_050_EntitySetup", "box_VehicleModifier_v2_6.OnSetExitDisabled", "box_InventoryItemModifier_11.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(3, params);
end;

function export:f_box_SetEntity_v2_10_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnInvincibleToCollisions_v2_2();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleToCollisionsState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|1712107712", "1712107712", "KEY01_050_EntitySetup", "box_SetEntity_v2_10.Out", "box_PawnInvincibleToCollisions_v2_2.SetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetInvincible
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_4_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_6();
    l0 = self.box_GunsForHireSystemModifier_4;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|285122551", "285122551", "KEY01_050_EntitySetup", "box_GunsForHireSystemModifier_4.Disabled", "box_VehicleModifier_v2_6.SetCommandeerDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetCommandeerDisabled
    l1:Exec(9, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_11_Out()
    local l0;
    l0 = self.box_InventoryItemModifier_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|165742311", "165742311", "KEY01_050_EntitySetup", "box_InventoryItemModifier_11.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_PawnInvincibleState_v2_5_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnInvincibleState_v2_1();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|2085308039", "2085308039", "KEY01_050_EntitySetup", "box_PawnInvincibleState_v2_5.OnSet", "box_PawnInvincibleState_v2_1.SetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetInvincible
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_SetEntity_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|481864645");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_8_Out,
    });
    params = {
        -- Entity,
        [0] = self.Nick,
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleToCollisions_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleToCollisionsState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleToCollisions_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|763656939");
    l0:SetConnections({
        -- OnSet,
        [0] = self.f_box_PawnInvincibleToCollisions_v2_3_OnSet,
    });
    params = {
        -- Pawn,
        [0] = self.eNickRye,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|790184779");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_9_Out,
    });
    params = {
        -- Entity,
        [0] = self.Kim,
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|945619047");
    l0:SetConnections({
        -- OnSet,
        [0] = self.f_box_PawnInvincibleState_v2_1_OnSet,
    });
    params = {
        -- Pawn,
        [0] = self.eNickRye,
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleToCollisions_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleToCollisionsState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleToCollisions_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|1326500473");
    l0:SetConnections({
        -- OnSet,
        [0] = self.f_box_PawnInvincibleToCollisions_v2_2_OnSet,
    });
    params = {
        -- Pawn,
        [0] = self.eKimRye,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|1358311758");
    l0:SetConnections({
        -- OnSetCommandeerDisabled,
        [9] = self.f_box_VehicleModifier_v2_6_OnSetCommandeerDisabled,
        -- OnSetExitDisabled,
        [15] = self.f_box_VehicleModifier_v2_6_OnSetExitDisabled,
    });
    params = {
        -- targets,
        [0] = self.eTruck,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|1424257784");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_10_Out,
    });
    params = {
        -- Entity,
        [0] = self.Truck,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_4()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_11()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015213189219337",
        -- players,
        [2] = self.eNickRye,
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@KEY01_050_EntitySetup|2060058038");
    l0:SetConnections({
        -- OnSet,
        [0] = self.f_box_PawnInvincibleState_v2_5_OnSet,
    });
    params = {
        -- Pawn,
        [0] = self.eKimRye,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eNickRye = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eKimRye = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTruck = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Kim" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Nick" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Truck" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
