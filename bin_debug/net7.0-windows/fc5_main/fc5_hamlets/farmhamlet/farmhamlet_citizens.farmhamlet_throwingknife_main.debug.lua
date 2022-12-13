LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_hamlets/farmhamlet/farmhamlet_citizens.domino
-- User graph: FarmHamlet_ThrowingKnife_Main
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_Ambience.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_KnifeTrigger.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_Loop.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_SportCaster.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnifeCheer.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_Main.debug.lua")] = {
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
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
                name = "Entity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/RandomFloat_v2.lua")] = {
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
                type = "float",
            },
            [1] = {
                name = "Min",
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_Ambience.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "Pause",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Enabled",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = true,
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_KnifeTrigger.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "BodyShot",
                delayed = true,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "HeadShot",
                delayed = true,
            },
            [3] = {
                name = "MissShot",
                delayed = true,
            },
            [4] = {
                name = "Player_Not_In_Mark",
                delayed = true,
            },
        },
        controlOutCount = 5,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_Loop.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Enabled",
                delayed = false,
            },
            [1] = {
                name = "Player_In_Mark",
                delayed = false,
            },
            [2] = {
                name = "Thrower_Will_Shoot",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "gPlayer",
                type = "group",
            },
            [1] = {
                name = "ThrowerNPC",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "ThrowerIsSpecator",
                type = "bool",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_SportCaster.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "BodyShot",
            },
            [1] = {
                name = "HeadShot",
            },
            [2] = {
                name = "Miss",
            },
            [3] = {
                name = "Player_Not_In_Mark",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Finish",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "SportCasterNPC",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnifeCheer.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Boring",
            },
            [1] = {
                name = "Negative",
            },
            [2] = {
                name = "Positive",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "ThrowerIsSpectator",
                type = "bool",
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
    self._name = "FarmHamlet_ThrowingKnife_Main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main";
    self.gPlayer = nil;
    self.ThrowerNPC = nil;
    self.ThrowerIsSpectator = false;
    self.SportCasterNPC = nil;
    self.box_FarmHamlet_ThrowingKnife_KnifeTrigger_31 = cbox:CreateBox("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_KnifeTrigger.debug.lua");
    l0 = self.box_FarmHamlet_ThrowingKnife_KnifeTrigger_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FarmHamlet_ThrowingKnife_KnifeTrigger_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|51092411");
    l0:SetConnections({
        -- BodyShot,
        [0] = self.f_box_FarmHamlet_ThrowingKnife_KnifeTrigger_31_BodyShot,
        -- HeadShot,
        [2] = self.f_box_FarmHamlet_ThrowingKnife_KnifeTrigger_31_HeadShot,
        -- MissShot,
        [3] = self.f_box_FarmHamlet_ThrowingKnife_KnifeTrigger_31_MissShot,
        -- Player_Not_In_Mark,
        [4] = self.f_box_FarmHamlet_ThrowingKnife_KnifeTrigger_31_Player_Not_In_Mark,
    });
    self.box_FarmHamlet_ThrowingKnife_SportCaster_14 = cbox:CreateBox("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_SportCaster.debug.lua");
    l0 = self.box_FarmHamlet_ThrowingKnife_SportCaster_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FarmHamlet_ThrowingKnife_SportCaster_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|101346505");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_FarmHamlet_ThrowingKnife_SportCaster_14_Started,
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|152852989");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_FarmHamlet_ThrowingKnifeCheer_38 = cbox:CreateBox("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnifeCheer.debug.lua");
    l0 = self.box_FarmHamlet_ThrowingKnifeCheer_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FarmHamlet_ThrowingKnifeCheer_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|178891174");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_FarmHamlet_ThrowingKnifeCheer_38_Finished,
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|181791625");
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
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|182428258");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|314920392");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_ContextualActionListener_8 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|444070517");
    l0:SetConnections({
        -- Select,
        [7] = self.f_box_ContextualActionListener_8_Select,
    });
    self.box_FarmHamlet_ThrowingKnifeCheer_39 = cbox:CreateBox("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnifeCheer.debug.lua");
    l0 = self.box_FarmHamlet_ThrowingKnifeCheer_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FarmHamlet_ThrowingKnifeCheer_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|480388126");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_FarmHamlet_ThrowingKnifeCheer_39_Finished,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|485427582");
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
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|518377402");
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
        [0] = self.f_box_MultipleOR_23_Out,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|653023521");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_Gate_v3_36 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|701562044");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_36_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_36_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_36_Out,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1051723657");
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
    self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1113391620");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
        [0] = self.f_box_MultipleOR_22_Out,
    });
    self.box_Delay_v5_37 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1387373939");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_37_TimeElapsed,
    });
    self.box_FarmHamlet_ThrowingKnife_SportCaster_6 = cbox:CreateBox("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_SportCaster.debug.lua");
    l0 = self.box_FarmHamlet_ThrowingKnife_SportCaster_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FarmHamlet_ThrowingKnife_SportCaster_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1400100665");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_FarmHamlet_ThrowingKnife_SportCaster_6_Started,
    });
    self.box_FarmHamlet_ThrowingKnifeCheer_19 = cbox:CreateBox("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnifeCheer.debug.lua");
    l0 = self.box_FarmHamlet_ThrowingKnifeCheer_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FarmHamlet_ThrowingKnifeCheer_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1449686589");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_FarmHamlet_ThrowingKnifeCheer_19_Finished,
    });
    self.box_FarmHamlet_ThrowingKnife_Ambience_21 = cbox:CreateBox("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_Ambience.debug.lua");
    l0 = self.box_FarmHamlet_ThrowingKnife_Ambience_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FarmHamlet_ThrowingKnife_Ambience_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1486969903");
    l0:SetConnections({
        -- Enabled,
        [0] = self.f_box_FarmHamlet_ThrowingKnife_Ambience_21_Enabled,
    });
    self.box_FarmHamlet_ThrowingKnife_SportCaster_5 = cbox:CreateBox("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_SportCaster.debug.lua");
    l0 = self.box_FarmHamlet_ThrowingKnife_SportCaster_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FarmHamlet_ThrowingKnife_SportCaster_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1592543509");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_FarmHamlet_ThrowingKnife_SportCaster_5_Started,
    });
    self.box_FarmHamlet_ThrowingKnife_Loop_9 = cbox:CreateBox("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_Loop.debug.lua");
    l0 = self.box_FarmHamlet_ThrowingKnife_Loop_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FarmHamlet_ThrowingKnife_Loop_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1889499931");
    l0:SetConnections({
        -- Enabled,
        [0] = self.f_box_FarmHamlet_ThrowingKnife_Loop_9_Enabled,
        -- Player_In_Mark,
        [1] = self.f_box_FarmHamlet_ThrowingKnife_Loop_9_Player_In_Mark,
        -- Thrower Will Shoot,
        [2] = self.f_box_FarmHamlet_ThrowingKnife_Loop_9_Thrower_Will_Shoot,
    });
    self.box_ProximityTrigger_v2_27 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1898224464");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_27_Enter,
    });
    self.box_FarmHamlet_ThrowingKnife_SportCaster_10 = cbox:CreateBox("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_SportCaster.debug.lua");
    l0 = self.box_FarmHamlet_ThrowingKnife_SportCaster_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FarmHamlet_ThrowingKnife_SportCaster_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1998835650");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_FarmHamlet_ThrowingKnife_SportCaster_10_Started,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_35();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|2120981235", "2120981235", "FarmHamlet_ThrowingKnife_Main", "In", "box_GetPlayerGroup_v2_35.FriendlyPlayers", self, l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|633346537", "633346537", "FarmHamlet_ThrowingKnife_Main", "In", "box_MultipleOR_23.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_11_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_8();
    l0 = self.box_ContextualActionListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1728521642", "1728521642", "FarmHamlet_ThrowingKnife_Main", "box_UseContextualActionModifier_v3_11.Enabled", "box_ContextualActionListener_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_FarmHamlet_ThrowingKnife_KnifeTrigger_31_BodyShot()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_FarmHamlet_ThrowingKnife_KnifeTrigger_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|244129582", "244129582", "FarmHamlet_ThrowingKnife_Main", "box_FarmHamlet_ThrowingKnife_KnifeTrigger_31.BodyShot", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FarmHamlet_ThrowingKnife_KnifeTrigger_31_HeadShot()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_FarmHamlet_ThrowingKnife_KnifeTrigger_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|2141581331", "2141581331", "FarmHamlet_ThrowingKnife_Main", "box_FarmHamlet_ThrowingKnife_KnifeTrigger_31.HeadShot", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FarmHamlet_ThrowingKnife_KnifeTrigger_31_MissShot()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_FarmHamlet_ThrowingKnife_KnifeTrigger_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1915729728", "1915729728", "FarmHamlet_ThrowingKnife_Main", "box_FarmHamlet_ThrowingKnife_KnifeTrigger_31.MissShot", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FarmHamlet_ThrowingKnife_KnifeTrigger_31_Player_Not_In_Mark()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_FarmHamlet_ThrowingKnife_KnifeTrigger_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|810078706", "810078706", "FarmHamlet_ThrowingKnife_Main", "box_FarmHamlet_ThrowingKnife_KnifeTrigger_31.Player_Not_In_Mark", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FarmHamlet_ThrowingKnife_SportCaster_14_Started()
    local l0, l1;
    l0 = self.box_FarmHamlet_ThrowingKnife_SportCaster_14;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|2040007537", "2040007537", "FarmHamlet_ThrowingKnife_Main", "box_FarmHamlet_ThrowingKnife_SportCaster_14.Started", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_FarmHamlet_ThrowingKnifeCheer_19();
    l0 = self.box_Delay_v5_16;
    l1 = self.box_FarmHamlet_ThrowingKnifeCheer_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1448628336", "1448628336", "FarmHamlet_ThrowingKnife_Main", "box_Delay_v5_16.TimeElapsed", "box_FarmHamlet_ThrowingKnifeCheer_19.Boring", l0:GetLuaBox(), l1:GetLuaBox());
    -- Boring
    l1:Exec(0, params);
end;

function export:f_box_FarmHamlet_ThrowingKnifeCheer_38_Finished()
    local l0, l1;
    l0 = self.box_FarmHamlet_ThrowingKnifeCheer_38;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1610394279", "1610394279", "FarmHamlet_ThrowingKnife_Main", "box_FarmHamlet_ThrowingKnifeCheer_38.Finished", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_1();
    l0 = self.box_MultipleOR_34;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1941006865", "1941006865", "FarmHamlet_ThrowingKnife_Main", "box_MultipleOR_34.Out", "box_RandomFloat_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_FarmHamlet_ThrowingKnifeCheer_39();
    l0 = self.box_MultipleOR_32;
    l1 = self.box_FarmHamlet_ThrowingKnifeCheer_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|507851716", "507851716", "FarmHamlet_ThrowingKnife_Main", "box_MultipleOR_32.Out", "box_FarmHamlet_ThrowingKnifeCheer_39.Negative", l0:GetLuaBox(), l1:GetLuaBox());
    -- Negative
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FarmHamlet_ThrowingKnife_SportCaster_5();
    l0 = self.box_FarmHamlet_ThrowingKnife_SportCaster_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|311156200", "311156200", "FarmHamlet_ThrowingKnife_Main", "box_OutputOrder_v2_7.Out", "box_FarmHamlet_ThrowingKnife_SportCaster_5.BodyShot", clone:GetLuaBox(), l0:GetLuaBox());
    -- BodyShot
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1836619241", "1836619241", "FarmHamlet_ThrowingKnife_Main", "box_OutputOrder_v2_7.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_18;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|673330343", "673330343", "FarmHamlet_ThrowingKnife_Main", "box_Delay_v5_18.TimeElapsed", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_29_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_29_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FarmHamlet_ThrowingKnife_Loop_9();
    l0 = self.box_FarmHamlet_ThrowingKnife_Loop_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|901207455", "901207455", "FarmHamlet_ThrowingKnife_Main", "box_SetEntity_v2_29.Out", "box_FarmHamlet_ThrowingKnife_Loop_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_35_Out()
    local l0;
    self:OnExit_box_GetPlayerGroup_v2_35_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    l0 = self.box_FarmHamlet_ThrowingKnife_Ambience_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|60377653", "60377653", "FarmHamlet_ThrowingKnife_Main", "box_GetPlayerGroup_v2_35.Out", "box_FarmHamlet_ThrowingKnife_Ambience_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, {
    });
end;

function export:f_box_ContextualActionListener_8_Select()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_27();
    l0 = self.box_ContextualActionListener_8;
    l1 = self.box_ProximityTrigger_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|2120814585", "2120814585", "FarmHamlet_ThrowingKnife_Main", "box_ContextualActionListener_8.Select", "box_ProximityTrigger_v2_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_FarmHamlet_ThrowingKnifeCheer_39_Finished()
    local l0, l1;
    l0 = self.box_FarmHamlet_ThrowingKnifeCheer_39;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|299106200", "299106200", "FarmHamlet_ThrowingKnife_Main", "box_FarmHamlet_ThrowingKnifeCheer_39.Finished", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_36();
    l0 = self.box_MultipleOR_17;
    l1 = self.box_Gate_v3_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1577972", "1577972", "FarmHamlet_ThrowingKnife_Main", "box_MultipleOR_17.Out", "box_Gate_v3_36.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_11();
    l0 = self.box_MultipleOR_23;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1009038913", "1009038913", "FarmHamlet_ThrowingKnife_Main", "box_MultipleOR_23.Out", "box_UseContextualActionModifier_v3_11.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_12();
    l0 = self.box_MultipleOR_4;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|145049547", "145049547", "FarmHamlet_ThrowingKnife_Main", "box_MultipleOR_4.Out", "box_RandomFloat_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_36_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_Gate_v3_36;
    l1 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|838358463", "838358463", "FarmHamlet_ThrowingKnife_Main", "box_Gate_v3_36.Closed", "box_Delay_v5_16.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_36_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_36;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1775252734", "1775252734", "FarmHamlet_ThrowingKnife_Main", "box_Gate_v3_36.Opened", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_36_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_36;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1207727750", "1207727750", "FarmHamlet_ThrowingKnife_Main", "box_Gate_v3_36.Out", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_2_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|863953082", "863953082", "FarmHamlet_ThrowingKnife_Main", "box_UseContextualActionModifier_v3_2.Disabled", "box_Delay_v5_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_FarmHamlet_ThrowingKnifeCheer_38();
    l0 = self.box_MultipleOR_25;
    l1 = self.box_FarmHamlet_ThrowingKnifeCheer_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1233783840", "1233783840", "FarmHamlet_ThrowingKnife_Main", "box_MultipleOR_25.Out", "box_FarmHamlet_ThrowingKnifeCheer_38.Positive", l0:GetLuaBox(), l1:GetLuaBox());
    -- Positive
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FarmHamlet_ThrowingKnife_SportCaster_10();
    l0 = self.box_FarmHamlet_ThrowingKnife_SportCaster_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|938529153", "938529153", "FarmHamlet_ThrowingKnife_Main", "box_OutputOrder_v2_30.Out", "box_FarmHamlet_ThrowingKnife_SportCaster_10.Miss", clone:GetLuaBox(), l0:GetLuaBox());
    -- Miss
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1190668463", "1190668463", "FarmHamlet_ThrowingKnife_Main", "box_OutputOrder_v2_30.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_36();
    l0 = self.box_MultipleOR_22;
    l1 = self.box_Gate_v3_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|593245021", "593245021", "FarmHamlet_ThrowingKnife_Main", "box_MultipleOR_22.Out", "box_Gate_v3_36.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_37_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_37;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|705680790", "705680790", "FarmHamlet_ThrowingKnife_Main", "box_Delay_v5_37.TimeElapsed", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_FarmHamlet_ThrowingKnife_SportCaster_6_Started()
    local l0, l1;
    l0 = self.box_FarmHamlet_ThrowingKnife_SportCaster_6;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1471347007", "1471347007", "FarmHamlet_ThrowingKnife_Main", "box_FarmHamlet_ThrowingKnife_SportCaster_6.Started", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_FarmHamlet_ThrowingKnifeCheer_19_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_36();
    l0 = self.box_FarmHamlet_ThrowingKnifeCheer_19;
    l1 = self.box_Gate_v3_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|2028759326", "2028759326", "FarmHamlet_ThrowingKnife_Main", "box_FarmHamlet_ThrowingKnifeCheer_19.Finished", "box_Gate_v3_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_FarmHamlet_ThrowingKnife_Ambience_21_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_24();
    l0 = self.box_FarmHamlet_ThrowingKnife_Ambience_21;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1257301635", "1257301635", "FarmHamlet_ThrowingKnife_Main", "box_FarmHamlet_ThrowingKnife_Ambience_21.Enabled", "box_SetEntity_v2_24.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_24_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_24_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_29();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1789156060", "1789156060", "FarmHamlet_ThrowingKnife_Main", "box_SetEntity_v2_24.Out", "box_SetEntity_v2_29.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FarmHamlet_ThrowingKnife_SportCaster_14();
    l0 = self.box_FarmHamlet_ThrowingKnife_SportCaster_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|127326468", "127326468", "FarmHamlet_ThrowingKnife_Main", "box_OutputOrder_v2_28.Out", "box_FarmHamlet_ThrowingKnife_SportCaster_14.HeadShot", clone:GetLuaBox(), l0:GetLuaBox());
    -- HeadShot
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1114964623", "1114964623", "FarmHamlet_ThrowingKnife_Main", "box_OutputOrder_v2_28.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_FarmHamlet_ThrowingKnife_SportCaster_5_Started()
    local l0, l1;
    l0 = self.box_FarmHamlet_ThrowingKnife_SportCaster_5;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|205315932", "205315932", "FarmHamlet_ThrowingKnife_Main", "box_FarmHamlet_ThrowingKnife_SportCaster_5.Started", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_FarmHamlet_ThrowingKnife_Loop_9_Enabled()
    self:OnExit_box_FarmHamlet_ThrowingKnife_Loop_9_Enabled();
end;

function export:f_box_FarmHamlet_ThrowingKnife_Loop_9_Player_In_Mark()
    local l0, l1;
    self:OnExit_box_FarmHamlet_ThrowingKnife_Loop_9_Player_In_Mark();
    l0 = self.box_FarmHamlet_ThrowingKnife_Loop_9;
    l1 = self.box_FarmHamlet_ThrowingKnife_KnifeTrigger_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1221352820", "1221352820", "FarmHamlet_ThrowingKnife_Main", "box_FarmHamlet_ThrowingKnife_Loop_9.Player_In_Mark", "box_FarmHamlet_ThrowingKnife_KnifeTrigger_31.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, {
    });
end;

function export:f_box_FarmHamlet_ThrowingKnife_Loop_9_Thrower_Will_Shoot()
    local l0, l1;
    self:OnExit_box_FarmHamlet_ThrowingKnife_Loop_9_Thrower_Will_Shoot();
    l0 = self.box_FarmHamlet_ThrowingKnife_Loop_9;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1970407690", "1970407690", "FarmHamlet_ThrowingKnife_Main", "box_FarmHamlet_ThrowingKnife_Loop_9.Thrower Will Shoot", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_27_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_2();
    l0 = self.box_ProximityTrigger_v2_27;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|32257534", "32257534", "FarmHamlet_ThrowingKnife_Main", "box_ProximityTrigger_v2_27.Enter", "box_UseContextualActionModifier_v3_2.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_12_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_37();
    l0 = self.box_Delay_v5_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1816903528", "1816903528", "FarmHamlet_ThrowingKnife_Main", "box_RandomFloat_v2_12.Out", "box_Delay_v5_37.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_FarmHamlet_ThrowingKnife_SportCaster_10_Started()
    local l0, l1;
    l0 = self.box_FarmHamlet_ThrowingKnife_SportCaster_10;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1106595039", "1106595039", "FarmHamlet_ThrowingKnife_Main", "box_FarmHamlet_ThrowingKnife_SportCaster_10.Started", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RandomFloat_v2_1_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1732039059", "1732039059", "FarmHamlet_ThrowingKnife_Main", "box_RandomFloat_v2_1.Out", "box_Delay_v5_16.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FarmHamlet_ThrowingKnife_SportCaster_6();
    l0 = self.box_FarmHamlet_ThrowingKnife_SportCaster_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|652240801", "652240801", "FarmHamlet_ThrowingKnife_Main", "box_OutputOrder_v2_13.Out", "box_FarmHamlet_ThrowingKnife_SportCaster_6.Player_Not_In_Mark", clone:GetLuaBox(), l0:GetLuaBox());
    -- Player_Not_In_Mark
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|252649990", "252649990", "FarmHamlet_ThrowingKnife_Main", "box_OutputOrder_v2_13.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:OnEnter_box_UseContextualActionModifier_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|10486846");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_11_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100554044857665234",
    };
    return params;
end;

function export:OnEnter_box_FarmHamlet_ThrowingKnife_SportCaster_14()
    local params;
    params = {
        -- SportCasterNPC,
        [0] = self.SportCasterNPC,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_FarmHamlet_ThrowingKnifeCheer_38()
    local params;
    params = {
        -- ThrowerIsSpectator,
        [0] = self.ThrowerIsSpectator,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|258224505");
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

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|321507268");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_29_Out,
    });
    params = {
        -- Entity,
        [0] = "2099915325456794451",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|351399649");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_35_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_8()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2100554044857665234",
    };
    return params;
end;

function export:OnEnter_box_FarmHamlet_ThrowingKnifeCheer_39()
    local params;
    params = {
        -- ThrowerIsSpectator,
        [0] = self.ThrowerIsSpectator,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_36()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|820423366");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_2_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100554044857665234",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1108791345");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_FarmHamlet_ThrowingKnife_SportCaster_6()
    local params;
    params = {
        -- SportCasterNPC,
        [0] = self.SportCasterNPC,
    };
    return params;
end;

function export:OnEnter_box_FarmHamlet_ThrowingKnifeCheer_19()
    local params;
    params = {
        -- ThrowerIsSpectator,
        [0] = self.ThrowerIsSpectator,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1550970337");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_24_Out,
    });
    params = {
        -- Entity,
        [0] = "2099915329032438632",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1551624737");
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

function export:OnEnter_box_FarmHamlet_ThrowingKnife_SportCaster_5()
    local params;
    params = {
        -- SportCasterNPC,
        [0] = self.SportCasterNPC,
    };
    return params;
end;

function export:OnEnter_box_FarmHamlet_ThrowingKnife_Loop_9()
    local params;
    params = {
        -- gPlayer,
        [0] = self.gPlayer,
        -- ThrowerNPC,
        [1] = self.ThrowerNPC,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2100702776733485435",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|1948090296");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_12_Out,
    });
    params = {
        -- Max,
        [0] = 10,
        -- Min,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_FarmHamlet_ThrowingKnife_SportCaster_10()
    local params;
    params = {
        -- SportCasterNPC,
        [0] = self.SportCasterNPC,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|2063268744");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_1_Out,
    });
    params = {
        -- Max,
        [0] = 3,
        -- Min,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Main|2139782356");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.SportCasterNPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_35_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.ThrowerNPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FarmHamlet_ThrowingKnife_Loop_9_Enabled()
    local l0;
    l0 = self.box_FarmHamlet_ThrowingKnife_Loop_9;
    self.ThrowerIsSpectator = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FarmHamlet_ThrowingKnife_Loop_9_Player_In_Mark()
    local l0;
    l0 = self.box_FarmHamlet_ThrowingKnife_Loop_9;
    self.ThrowerIsSpectator = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FarmHamlet_ThrowingKnife_Loop_9_Thrower_Will_Shoot()
    local l0;
    l0 = self.box_FarmHamlet_ThrowingKnife_Loop_9;
    self.ThrowerIsSpectator = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_12_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_37;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_1_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_16;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
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
