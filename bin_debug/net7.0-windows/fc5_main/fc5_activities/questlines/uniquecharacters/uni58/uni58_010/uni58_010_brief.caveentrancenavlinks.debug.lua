LUAC~  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni58/uni58_010/uni58_010_brief.domino
-- User graph: CaveEntranceNavlinks
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
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_BRIEF.CaveEntranceNavlinks.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/NavLinkModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
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
    self._name = "CaveEntranceNavlinks";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@CaveEntranceNavlinks";
    self.box_NavLinkModifier_2 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@CaveEntranceNavlinks|672053432");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_1 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@CaveEntranceNavlinks|1915053026");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_1_Deactivated,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_NavLinkModifier_1();
    l0 = self.box_NavLinkModifier_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@CaveEntranceNavlinks|1215048627", "1215048627", "CaveEntranceNavlinks", "In", "box_NavLinkModifier_1.Deactivate", self, l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
end;

function export:f_box_NavLinkModifier_1_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_2();
    l0 = self.box_NavLinkModifier_1;
    l1 = self.box_NavLinkModifier_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_BRIEF.domino|@CaveEntranceNavlinks|285731215", "285731215", "CaveEntranceNavlinks", "box_NavLinkModifier_1.Deactivated", "box_NavLinkModifier_2.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:OnEnter_box_NavLinkModifier_2()
    local params;
    params = {
        -- Entity,
        [0] = "2102447181697935991",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_1()
    local params;
    params = {
        -- Entity,
        [0] = "2102447173615512179",
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
