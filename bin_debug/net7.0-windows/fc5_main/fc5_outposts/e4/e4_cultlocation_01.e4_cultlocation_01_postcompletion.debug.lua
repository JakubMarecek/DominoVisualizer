LUAC�!  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/e4/e4_cultlocation_01.domino
-- User graph: E4_CultLocation_01_PostCompletion
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
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/E4/E4_CultLocation_01.E4_CultLocation_01_PostCompletion.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/RemoveEntity_v2.lua")] = {
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
                name = "Group",
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
    self._name = "E4_CultLocation_01_PostCompletion";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_PostCompletion";
    self.box_RemoveEntity_v2_3 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_PostCompletion|311928427");
    l0:SetConnections({
    });
    self.box_Brick_Cult_Location_Post_Completion_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Post_Completion.debug.lua");
    l0 = self.box_Brick_Cult_Location_Post_Completion_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Post_Completion_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_PostCompletion|325382719");
    l0:SetConnections({
        -- CustomScript,
        [0] = self.f_box_Brick_Cult_Location_Post_Completion_1_CustomScript,
    });
    self.box_EntityStatusListener_2 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_PostCompletion|796140026");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_2_Loaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Post_Completion_1();
    l0 = self.box_Brick_Cult_Location_Post_Completion_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_PostCompletion|1434999490", "1434999490", "E4_CultLocation_01_PostCompletion", "In", "box_Brick_Cult_Location_Post_Completion_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Post_Completion_1();
    l0 = self.box_Brick_Cult_Location_Post_Completion_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_PostCompletion|161630073", "161630073", "E4_CultLocation_01_PostCompletion", "OnLeaveZone", "box_Brick_Cult_Location_Post_Completion_1.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(1, params);
end;

function export:f_box_Brick_Cult_Location_Post_Completion_1_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_2();
    l0 = self.box_Brick_Cult_Location_Post_Completion_1;
    l1 = self.box_EntityStatusListener_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_PostCompletion|1210776400", "1210776400", "E4_CultLocation_01_PostCompletion", "box_Brick_Cult_Location_Post_Completion_1.CustomScript", "box_EntityStatusListener_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_2_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_3();
    l0 = self.box_EntityStatusListener_2;
    l1 = self.box_RemoveEntity_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_PostCompletion|2000786048", "2000786048", "E4_CultLocation_01_PostCompletion", "box_EntityStatusListener_2.Loaded", "box_RemoveEntity_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_RemoveEntity_v2_3()
    local params;
    params = {
        -- Group,
        [0] = "2099447660571268565",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Post_Completion_1()
    local params;
    params = {
        -- SafeHouseEntity,
        [0] = "2100980209667811000",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_2()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099447660571268565",
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
