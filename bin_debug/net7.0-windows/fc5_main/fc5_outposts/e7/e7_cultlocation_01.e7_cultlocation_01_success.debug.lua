LUAC<  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/e7/e7_cultlocation_01.domino
-- User graph: E7_CultLocation_01_SUCCESS
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Post_Completion.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/E7/E7_CultLocation_01.E7_CultLocation_01_SUCCESS.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnLeaveZone",
            },
        },
        controlInCount = 2,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Post_Completion.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnLeaveZone",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "CustomScript",
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
                name = "SafeHouseEntity",
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
    self._name = "E7_CultLocation_01_SUCCESS";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_01_SUCCESS";
    self.box_Brick_Cult_Location_Post_Completion_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Post_Completion.debug.lua");
    l0 = self.box_Brick_Cult_Location_Post_Completion_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Post_Completion_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_01_SUCCESS|1457733521");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Post_Completion_1();
    l0 = self.box_Brick_Cult_Location_Post_Completion_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_01_SUCCESS|583966782", "583966782", "E7_CultLocation_01_SUCCESS", "In", "box_Brick_Cult_Location_Post_Completion_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Post_Completion_1();
    l0 = self.box_Brick_Cult_Location_Post_Completion_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_01_SUCCESS|1101973980", "1101973980", "E7_CultLocation_01_SUCCESS", "OnLeaveZone", "box_Brick_Cult_Location_Post_Completion_1.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(1, params);
end;

function export:OnEnter_box_Brick_Cult_Location_Post_Completion_1()
    local params;
    params = {
        -- SafeHouseEntity,
        [0] = "2100014310309765592",
    };
    return params;
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
