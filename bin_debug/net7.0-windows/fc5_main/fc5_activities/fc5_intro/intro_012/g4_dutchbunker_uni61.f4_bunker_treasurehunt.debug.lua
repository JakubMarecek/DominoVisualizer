LUAC�T  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_012/g4_dutchbunker_uni61.domino
-- User graph: F4_Bunker_TreasureHunt
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
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FlashlightModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[entityarchetypeslibrary/9015274923154954.ark.fcb]], "CEntityArchetypeRes");
        cboxRes:LoadResource([[942052468.bnk]], "CSoundResource");
        cboxRes:LoadResource([[550588116.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_012/G4_DutchBunker_UNI61.F4_Bunker_TreasureHunt.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/FlashlightModifier.lua")] = {
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
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 2,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "F4_Bunker_TreasureHunt";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt";
    self.gLocalPlayer = nil;
    self.box_EntityStatusListener_1 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt|254825336");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_1_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_1_Unloaded,
    });
    self.box_SoundModifier_v2_8 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt|1098637910");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_8_Started,
    });
    self.box_FlashlightModifier_2 = cbox:CreateBox("Domino/System/FlashlightModifier.lua");
    l0 = self.box_FlashlightModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FlashlightModifier_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt|1189571939");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FlashlightModifier_2_Disabled,
        -- Enabled,
        [1] = self.f_box_FlashlightModifier_2_Enabled,
    });
    self.box_ProximityTrigger_v2_4 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt|1600766291");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_4_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_4_Leave,
    });
    self.box_SoundModifier_v2_7 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt|1844312704");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_7_Started,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_1();
    l0 = self.box_EntityStatusListener_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt|1845131922", "1845131922", "F4_Bunker_TreasureHunt", "In", "box_EntityStatusListener_1.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_1_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_3();
    l0 = self.box_EntityStatusListener_1;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt|1583271740", "1583271740", "F4_Bunker_TreasureHunt", "box_EntityStatusListener_1.Loaded", "box_GetLocalPlayer_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_1_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_4();
    l0 = self.box_EntityStatusListener_1;
    l1 = self.box_ProximityTrigger_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt|458720889", "458720889", "F4_Bunker_TreasureHunt", "box_EntityStatusListener_1.Unloaded", "box_ProximityTrigger_v2_4.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_8_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_6();
    l0 = self.box_SoundModifier_v2_8;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt|2126109370", "2126109370", "F4_Bunker_TreasureHunt", "box_SoundModifier_v2_8.Started", "box_Print_v2_6.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FlashlightModifier_2_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_8();
    l0 = self.box_FlashlightModifier_2;
    l1 = self.box_SoundModifier_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt|596664110", "596664110", "F4_Bunker_TreasureHunt", "box_FlashlightModifier_2.Disabled", "box_SoundModifier_v2_8.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_FlashlightModifier_2_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_7();
    l0 = self.box_FlashlightModifier_2;
    l1 = self.box_SoundModifier_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt|311009434", "311009434", "F4_Bunker_TreasureHunt", "box_FlashlightModifier_2.Enabled", "box_SoundModifier_v2_7.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_3_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_4();
    l0 = self.box_ProximityTrigger_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt|617510373", "617510373", "F4_Bunker_TreasureHunt", "box_GetLocalPlayer_v2_3.Out", "box_ProximityTrigger_v2_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_4_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_FlashlightModifier_2();
    l0 = self.box_ProximityTrigger_v2_4;
    l1 = self.box_FlashlightModifier_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt|1545957033", "1545957033", "F4_Bunker_TreasureHunt", "box_ProximityTrigger_v2_4.Enter", "box_FlashlightModifier_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_4_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_FlashlightModifier_2();
    l0 = self.box_ProximityTrigger_v2_4;
    l1 = self.box_FlashlightModifier_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt|1494421684", "1494421684", "F4_Bunker_TreasureHunt", "box_ProximityTrigger_v2_4.Leave", "box_FlashlightModifier_2.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_7_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_5();
    l0 = self.box_SoundModifier_v2_7;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt|421289603", "421289603", "F4_Bunker_TreasureHunt", "box_SoundModifier_v2_7.Started", "box_Print_v2_5.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_EntityStatusListener_1()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2105241005623108480",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt|309776689");
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
        [8] = "Flashlight_ON",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_8()
    local params;
    params = {
        -- Pawns,
        [0] = self.gLocalPlayer,
        -- SoundId,
        [1] = "942052468",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_FlashlightModifier_2()
    local params;
    params = {
        -- archetypeId,
        [0] = "9015274923154954",
        -- players,
        [1] = self.gLocalPlayer,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt|1386505896");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_3_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_4()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.gLocalPlayer,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105241005623108480",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_7()
    local params;
    params = {
        -- Pawns,
        [0] = self.gLocalPlayer,
        -- SoundId,
        [1] = "550588116",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@F4_Bunker_TreasureHunt|2003967352");
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
        [8] = "Flashlight_OFF",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.gLocalPlayer = l0:GetDataOutValue(0);
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
