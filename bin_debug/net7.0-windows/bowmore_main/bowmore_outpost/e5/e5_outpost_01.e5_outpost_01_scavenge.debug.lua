LUAC  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_outpost/e5/e5_outpost_01.domino
-- User graph: E5_Outpost_01_Scavenge
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Post_Completion.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Outpost/E5/E5_Outpost_01.E5_Outpost_01_Scavenge.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Post_Completion.debug.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "E5_Outpost_01_Scavenge";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Scavenge";
    self.box_Brick_Outpost_Post_Completion_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Post_Completion.debug.lua");
    l0 = self.box_Brick_Outpost_Post_Completion_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Post_Completion_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Scavenge|1953604512");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_Brick_Outpost_Post_Completion_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Scavenge|1798122772", "1798122772", "E5_Outpost_01_Scavenge", "In", "box_Brick_Outpost_Post_Completion_15.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local l0;
    l0 = self.box_Brick_Outpost_Post_Completion_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\E5\\E5_Outpost_01.domino|@E5_Outpost_01_Scavenge|559169897", "559169897", "E5_Outpost_01_Scavenge", "OnLeaveZone", "box_Brick_Outpost_Post_Completion_15.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(1, {
    });
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
