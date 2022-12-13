LUAC7�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/c2/canyon_c2_ctp_010_enemy.domino
-- User graph: FlareGunSTPSetup
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Canyon_C2_CTP_010_Enemy = nil;
    Globals.Canyon_C2_CTP_010_Enemy = {
        i_CurrentSize = 0,
        Wave_01_Spawner_a = nil,
        Wave_01_Spawner_b = nil,
        Wave_02_Spawner_a = nil,
        Wave_02_Spawner_b = nil,
        Wave_03_Spawner_a = nil,
        Wave_03_Spawner_b = nil,
        Wave_04_Spawner_a = nil,
        Wave_04_Spawner_b = nil,
        Wave_05_Spawner_a = nil,
        Wave_05_Spawner_b = nil,
        Wave_06_Spawner_a = nil,
        Wave_06_Spawner_b = nil,
        Wave_07_Spawner_a = nil,
        Wave_07_Spawner_b = nil,
        Wave_08_Spawner_a = nil,
        Wave_08_Spawner_b = nil,
        Wave_09_Spawner_a = nil,
        Wave_09_Spawner_b = nil,
        Wave_10_Spawner_a = nil,
        Wave_10_Spawner_b = nil,
        RemainingNPCNUM_Wave_01 = 3,
        RemainingNPCNUM_Wave_02 = 3,
        RemainingNPCNUM_Wave_03 = 3,
        RemainingNPCNUM_Wave_04 = 3,
        RemainingNPCNUM_Wave_05 = 3,
        RemainingNPCNUM_Wave_06 = 3,
        RemainingNPCNUM_Wave_07 = 3,
        RemainingNPCNUM_Wave_08 = 3,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.FlareGunSTPSetup.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "FlareUsed",
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cleanup",
            },
            [1] = {
                name = "OutdoorSTP_01",
            },
            [2] = {
                name = "OutdoorSTP_02",
            },
            [3] = {
                name = "OutdoorSTP_03",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "flarestp_used",
                delayed = false,
            },
            [1] = {
                name = "ToValidateSTP_01_User",
                delayed = false,
            },
            [2] = {
                name = "ToValidateSTP_02_User",
                delayed = false,
            },
            [3] = {
                name = "ToValidateSTP_03_User",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "FlareSTP_Outdoor_01",
                type = "entity",
            },
            [1] = {
                name = "FlareSTP_Outdoor_02",
                type = "entity",
            },
            [2] = {
                name = "FlareSTP_Outdoor_03",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ToValidateUser_01",
            },
            [1] = {
                name = "ToValidateUser_02",
            },
            [2] = {
                name = "ToValidateUser_03",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Validated_User_01",
                delayed = false,
            },
            [1] = {
                name = "Validated_User_02",
                delayed = false,
            },
            [2] = {
                name = "Validated_User_03",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "BadPositionHelper",
                type = "entity",
            },
        },
        dataInCount = 1,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "FlareGunSTPSetup";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup";
    self.FlareUsed = DummyFunction;
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|121880111");
    l0:SetConnections({
        -- Validated_User_01,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44_Validated_User_01,
        -- Validated_User_02,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44_Validated_User_02,
        -- Validated_User_03,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44_Validated_User_03,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|206493592");
    l0:SetConnections({
        -- Validated_User_01,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46_Validated_User_01,
        -- Validated_User_02,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46_Validated_User_02,
        -- Validated_User_03,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46_Validated_User_03,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|516021667");
    l0:SetConnections({
        -- Validated_User_01,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45_Validated_User_01,
        -- Validated_User_02,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45_Validated_User_02,
        -- Validated_User_03,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45_Validated_User_03,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|594571424");
    l0:SetConnections({
        -- Validated_User_01,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48_Validated_User_01,
        -- Validated_User_02,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48_Validated_User_02,
        -- Validated_User_03,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48_Validated_User_03,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_49 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|1216752262");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|1749360659");
    l0:SetConnections({
        -- flarestp_used,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_7_flarestp_used,
        -- ToValidateSTP_01_User,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_7_ToValidateSTP_01_User,
        -- ToValidateSTP_02_User,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_7_ToValidateSTP_02_User,
        -- ToValidateSTP_03_User,
        [3] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_7_ToValidateSTP_03_User,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|2058725454");
    l0:SetConnections({
        -- Validated_User_01,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47_Validated_User_01,
        -- Validated_User_02,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47_Validated_User_02,
        -- Validated_User_03,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47_Validated_User_03,
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_7();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|266209557", "266209557", "FlareGunSTPSetup", "Disable", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_7.Cleanup", self, l0:GetLuaBox());
    -- Cleanup
    l0:Exec(0, params);
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_29();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|785532010", "785532010", "FlareGunSTPSetup", "In", "box_GroupAddToGroup_v2_29.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44_Validated_User_01()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|675434028", "675434028", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44.Validated_User_01", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44_Validated_User_02()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|1050145649", "1050145649", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44.Validated_User_02", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44_Validated_User_03()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|698941871", "698941871", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44.Validated_User_03", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46_Validated_User_01()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|1827128624", "1827128624", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46.Validated_User_01", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46_Validated_User_02()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|1475924846", "1475924846", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46.Validated_User_02", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46_Validated_User_03()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|1012324393", "1012324393", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46.Validated_User_03", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45_Validated_User_01()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|1812750668", "1812750668", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45.Validated_User_01", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45_Validated_User_02()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|721449625", "721449625", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45.Validated_User_02", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45_Validated_User_03()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|1904210770", "1904210770", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45.Validated_User_03", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48_Validated_User_01()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_49();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_49;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|5963611", "5963611", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48.Validated_User_01", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_49.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48_Validated_User_02()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_49();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_49;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|425287761", "425287761", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48.Validated_User_02", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_49.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48_Validated_User_03()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_49();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_49;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|568115099", "568115099", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48.Validated_User_03", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_49.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_GroupAddToGroup_v2_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|2047974548", "2047974548", "FlareGunSTPSetup", "box_GroupAddToGroup_v2_29.Out", "box_OutputOrder_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_7_flarestp_used()
    local l0;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|238337982", "238337982", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_7.flarestp_used", "FlareUsed", l0:GetLuaBox(), self);
    self:FlareUsed();
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_7_ToValidateSTP_01_User()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_7;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|1599790022", "1599790022", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_7.ToValidateSTP_01_User", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_7_ToValidateSTP_02_User()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_7;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|1241495311", "1241495311", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_7.ToValidateSTP_02_User", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_7_ToValidateSTP_03_User()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_7;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|1653728528", "1653728528", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_7.ToValidateSTP_03_User", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_7();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|1051201625", "1051201625", "FlareGunSTPSetup", "box_OutputOrder_v2_3.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_7.OutdoorSTP_01", clone:GetLuaBox(), l0:GetLuaBox());
    -- OutdoorSTP_01
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_7();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|280649344", "280649344", "FlareGunSTPSetup", "box_OutputOrder_v2_3.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_7.OutdoorSTP_02", clone:GetLuaBox(), l0:GetLuaBox());
    -- OutdoorSTP_02
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_7();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|229113995", "229113995", "FlareGunSTPSetup", "box_OutputOrder_v2_3.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_7.OutdoorSTP_03", clone:GetLuaBox(), l0:GetLuaBox());
    -- OutdoorSTP_03
    l0:Exec(3, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47_Validated_User_01()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|348841501", "348841501", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47.Validated_User_01", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47_Validated_User_02()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|1486990117", "1486990117", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47.Validated_User_02", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47_Validated_User_03()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|283292399", "283292399", "FlareGunSTPSetup", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47.Validated_User_03", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_44()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109696573762978485",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_46()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109696681556592344",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_45()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109696654186661588",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_48()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109696733880534752",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|1082797282");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_29_Out,
    });
    params = {
        -- FromGroup,
        [0] = "#71C4A962",
        -- ToGroup,
        [1] = "#4B8F54C8",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_49()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109696749753878246",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_7()
    local params;
    params = {
        -- FlareSTP_Outdoor_01,
        [0] = "2109658903192027154",
        -- FlareSTP_Outdoor_02,
        [1] = "2109658929704222742",
        -- FlareSTP_Outdoor_03,
        [2] = "2109658933560885274",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@FlareGunSTPSetup|1878830077");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_47()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109696700657452764",
    };
    return params;
end;

-- Empty out anchor definitions
function export:FlareUsed()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="FlareUsed" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
