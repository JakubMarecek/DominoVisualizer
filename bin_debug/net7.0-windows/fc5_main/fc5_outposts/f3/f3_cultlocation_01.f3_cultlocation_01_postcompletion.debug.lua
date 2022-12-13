LUAC�(  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/f3/f3_cultlocation_01.domino
-- User graph: F3_CultLocation_01_PostCompletion
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
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.F3_CultLocation_01 = nil;
    Globals.F3_CultLocation_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/F3/F3_CultLocation_01.F3_CultLocation_01_PostCompletion.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/SetContextualStrategy.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetContextualStrategy",
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
                name = "ContextualStrategy",
                type = "entity",
            },
            [1] = {
                name = "Group",
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
    self._name = "F3_CultLocation_01_PostCompletion";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_PostCompletion";
    self.box_RemoveEntity_v2_2 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_PostCompletion|669476892");
    l0:SetConnections({
    });
    self.box_Brick_Cult_Location_Post_Completion_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Post_Completion.debug.lua");
    l0 = self.box_Brick_Cult_Location_Post_Completion_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Post_Completion_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_PostCompletion|1829843685");
    l0:SetConnections({
        -- CustomScript,
        [0] = self.f_box_Brick_Cult_Location_Post_Completion_1_CustomScript,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Post_Completion_1();
    l0 = self.box_Brick_Cult_Location_Post_Completion_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_PostCompletion|829498405", "829498405", "F3_CultLocation_01_PostCompletion", "In", "box_Brick_Cult_Location_Post_Completion_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Post_Completion_1();
    l0 = self.box_Brick_Cult_Location_Post_Completion_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_PostCompletion|1467646275", "1467646275", "F3_CultLocation_01_PostCompletion", "OnLeaveZone", "box_Brick_Cult_Location_Post_Completion_1.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_2();
    l0 = self.box_RemoveEntity_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_PostCompletion|1807937710", "1807937710", "F3_CultLocation_01_PostCompletion", "box_OutputOrder_v2_4.Out", "box_RemoveEntity_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_3();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_PostCompletion|1023853590", "1023853590", "F3_CultLocation_01_PostCompletion", "box_OutputOrder_v2_4.Out", "box_SetContextualStrategy_3.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Post_Completion_1_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_Brick_Cult_Location_Post_Completion_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_PostCompletion|1288703729", "1288703729", "F3_CultLocation_01_PostCompletion", "box_Brick_Cult_Location_Post_Completion_1.CustomScript", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_SetContextualStrategy_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_PostCompletion|639190318");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2100650471550104092",
        -- Group,
        [1] = "#DC9391C5",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_2()
    local params;
    params = {
        -- Group,
        [0] = "#DB6479EF",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_PostCompletion|1037409782");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Post_Completion_1()
    local params;
    params = {
        -- SafeHouseEntity,
        [0] = "2099129509247720414",
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
