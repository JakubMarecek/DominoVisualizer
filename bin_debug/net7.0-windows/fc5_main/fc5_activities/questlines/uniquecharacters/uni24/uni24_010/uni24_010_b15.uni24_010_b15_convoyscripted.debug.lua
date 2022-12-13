LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni24/uni24_010/uni24_010_b15.domino
-- User graph: UNI24_010_B15_ConvoyScripted
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
        cboxRes:RegisterBox("Domino/System/GetEntityInScriptPrefab.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI24/UNI24_010/UNI24_010_B10.globals.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI24/UNI24_010/UNI24_010_B15.UNI24_010_B15_ConvoyScripted.debug.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/GetEntityInScriptPrefab.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NoEntity",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ObjectName",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "ObjectEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI24_010_B15_ConvoyScripted";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B15.domino|@UNI24_010_B15_ConvoyScripted";
    self.Out = DummyFunction;
    self.box_GetEntityInScriptPrefab_1 = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self.box_GetEntityInScriptPrefab_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInScriptPrefab_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B15.domino|@UNI24_010_B15_ConvoyScripted|1119447239");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInScriptPrefab_1_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInScriptPrefab_1_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetEntityInScriptPrefab_1();
    l0 = self.box_GetEntityInScriptPrefab_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B15.domino|@UNI24_010_B15_ConvoyScripted|651424663", "651424663", "UNI24_010_B15_ConvoyScripted", "In", "box_GetEntityInScriptPrefab_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GetEntityInScriptPrefab_1_Out()
    local l0;
    self:OnExit_box_GetEntityInScriptPrefab_1_Out();
    l0 = self.box_GetEntityInScriptPrefab_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B15.domino|@UNI24_010_B15_ConvoyScripted|691349416", "691349416", "UNI24_010_B15_ConvoyScripted", "box_GetEntityInScriptPrefab_1.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:OnEnter_box_GetEntityInScriptPrefab_1()
    local params;
    params = {
        -- ObjectName,
        [0] = "Signature_010_Reward_UNI24_010_B15_Convoy",
    };
    return params;
end;

function export:OnExit_box_GetEntityInScriptPrefab_1_Out()
    local l0;
    l0 = self.box_GetEntityInScriptPrefab_1;
    PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle = l0:GetDataOutValue(0);
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
	<DatasIn />
	<DatasOut />
</DominoMetadata>
