LUAC�R  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni55/uni55_010/uni55_intro.domino
-- User graph: DisableMusicSwitches
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
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI55/UNI55_010/UNI55_INTRO.DisableMusicSwitches.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ShimmerModifier_v2.lua")] = {
        stateless = true,
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "B",
                type = "float",
            },
            [1] = {
                name = "G",
                type = "float",
            },
            [2] = {
                name = "R",
                type = "float",
            },
            [3] = {
                name = "Speed",
                type = "float",
            },
            [4] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UniversalInteractionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceInteraction",
            },
        },
        controlInCount = 3,
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
                name = "Interacted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "disableOnUse",
                type = "bool",
            },
            [1] = {
                name = "displayId",
                type = "oasis",
            },
            [2] = {
                name = "interactor",
                type = "entity",
            },
            [3] = {
                name = "state",
                type = "bool",
            },
            [4] = {
                name = "usableEntity",
                type = "entity",
            },
            [5] = {
                name = "usageType",
                type = "string",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "DisableMusicSwitches";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches";
    self.box_UniversalInteractionModifier_v2_3 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|1139367051");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_3_Disabled,
    });
    self.box_UniversalInteractionModifier_v2_2 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|1388459721");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_2_Disabled,
    });
    self.box_UniversalInteractionModifier_v2_1 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|1602415770");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_1_Disabled,
    });
    self.box_UniversalInteractionModifier_v2_4 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|2137030875");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_4_Disabled,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_1();
    l0 = self.box_UniversalInteractionModifier_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|1374256421", "1374256421", "DisableMusicSwitches", "In", "box_UniversalInteractionModifier_v2_1.Disable", self, l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ShimmerModifier_v2_10_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_4();
    l0 = self.box_UniversalInteractionModifier_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|464916373", "464916373", "DisableMusicSwitches", "box_ShimmerModifier_v2_10.Disabled", "box_UniversalInteractionModifier_v2_4.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ShimmerModifier_v2_5_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_9();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|864629466", "864629466", "DisableMusicSwitches", "box_ShimmerModifier_v2_5.Disabled", "box_ShimmerModifier_v2_9.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_6_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_10();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|434317597", "434317597", "DisableMusicSwitches", "box_ShimmerModifier_v2_6.Disabled", "box_ShimmerModifier_v2_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_8_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_12();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|728231157", "728231157", "DisableMusicSwitches", "box_ShimmerModifier_v2_8.Disabled", "box_ShimmerModifier_v2_12.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_9_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_3();
    l0 = self.box_UniversalInteractionModifier_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|260436719", "260436719", "DisableMusicSwitches", "box_ShimmerModifier_v2_9.Disabled", "box_UniversalInteractionModifier_v2_3.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ShimmerModifier_v2_11_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_2();
    l0 = self.box_UniversalInteractionModifier_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|1722423260", "1722423260", "DisableMusicSwitches", "box_ShimmerModifier_v2_11.Disabled", "box_UniversalInteractionModifier_v2_2.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_3_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_6();
    l0 = self.box_UniversalInteractionModifier_v2_3;
    l1 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|1776390496", "1776390496", "DisableMusicSwitches", "box_UniversalInteractionModifier_v2_3.Disabled", "box_ShimmerModifier_v2_6.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_7_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_11();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|1047875097", "1047875097", "DisableMusicSwitches", "box_ShimmerModifier_v2_7.Disabled", "box_ShimmerModifier_v2_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_2_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_8();
    l0 = self.box_UniversalInteractionModifier_v2_2;
    l1 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|1747492238", "1747492238", "DisableMusicSwitches", "box_UniversalInteractionModifier_v2_2.Disabled", "box_ShimmerModifier_v2_8.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_1_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_5();
    l0 = self.box_UniversalInteractionModifier_v2_1;
    l1 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|2133607566", "2133607566", "DisableMusicSwitches", "box_UniversalInteractionModifier_v2_1.Disabled", "box_ShimmerModifier_v2_5.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_4_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_7();
    l0 = self.box_UniversalInteractionModifier_v2_4;
    l1 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|1788910620", "1788910620", "DisableMusicSwitches", "box_UniversalInteractionModifier_v2_4.Disabled", "box_ShimmerModifier_v2_7.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_ShimmerModifier_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|243474484");
    l0:SetConnections({
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2102020170672266150",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|342857495");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_10_Disabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2102019486434471329",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|460712091");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_5_Disabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2102020380412631990",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|552172193");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_6_Disabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2102017837433373173",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|643632295");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_8_Disabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2102020170676460458",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|694645374");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_9_Disabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2102020380416826296",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|963505928");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_11_Disabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2102020285931740080",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_3()
    local params;
    params = {
        -- usableEntity,
        [4] = "2102017837433373173",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_INTRO.domino|@DisableMusicSwitches|1233811289");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_7_Disabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2102020285942225844",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_2()
    local params;
    params = {
        -- usableEntity,
        [4] = "2102020170676460458",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_1()
    local params;
    params = {
        -- usableEntity,
        [4] = "2102020380412631990",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_4()
    local params;
    params = {
        -- usableEntity,
        [4] = "2102020285942225844",
    };
    return params;
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
