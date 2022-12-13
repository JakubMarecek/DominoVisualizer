LUAC�#  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/e4/e4_cultlocation_02.domino
-- User graph: E4_CultLocation_02_Cinematic
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Cinematic_V2_Main.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.CultLocation_Cleanup_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Outposts/E4/E4_CultLocation_02.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.E4_CultLocation_02 = nil;
    Globals.E4_CultLocation_02 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/E4/E4_CultLocation_02.E4_CultLocation_02_Cinematic.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Cinematic_V2_Main.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FadedOut",
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
                name = "bUseFadeInAtEnd",
                type = "bool",
            },
            [1] = {
                name = "CS_CINEMA_Outpost_Animals",
                type = "entity",
            },
            [2] = {
                name = "eSceneEntity",
                type = "entity",
            },
            [3] = {
                name = "IsFaithCelebration",
                type = "bool",
            },
            [4] = {
                name = "sSequenceFile",
                type = "sequence",
            },
            [5] = {
                name = "TeleportDestination",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.CultLocation_Cleanup_Manager.debug.lua")] = {
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
                name = "Global_Veh_List",
                type = "list",
            },
            [1] = {
                name = "Other_Group",
                type = "group",
            },
            [2] = {
                name = "Vehicle_Group",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityEnd.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EndHardSave",
            },
            [1] = {
                name = "EndNoSave",
            },
            [2] = {
                name = "EndSoftSave",
            },
        },
        controlInCount = 3,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Success",
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
    self._name = "E4_CultLocation_02_Cinematic";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_02.domino|@E4_CultLocation_02_Cinematic";
    self.Out = DummyFunction;
    self.box_Brick_Cult_Location_Cinematic_V2_Main_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Cinematic_V2_Main.debug.lua");
    l0 = self.box_Brick_Cult_Location_Cinematic_V2_Main_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Cinematic_V2_Main_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_02.domino|@E4_CultLocation_02_Cinematic|66200004");
    l0:SetConnections({
        -- FadedOut,
        [0] = self.f_box_Brick_Cult_Location_Cinematic_V2_Main_3_FadedOut,
        -- Out,
        [1] = self.f_box_Brick_Cult_Location_Cinematic_V2_Main_3_Out,
    });
    self.box_CultLocation_Cleanup_Manager_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Cleanup_Manager.debug.lua");
    l0 = self.box_CultLocation_Cleanup_Manager_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Cleanup_Manager_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_02.domino|@E4_CultLocation_02_Cinematic|937682124");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Cinematic_V2_Main_3();
    l0 = self.box_Brick_Cult_Location_Cinematic_V2_Main_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_02.domino|@E4_CultLocation_02_Cinematic|953850503", "953850503", "E4_CultLocation_02_Cinematic", "In", "box_Brick_Cult_Location_Cinematic_V2_Main_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Cinematic_V2_Main_3_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Cleanup_Manager_2();
    l0 = self.box_Brick_Cult_Location_Cinematic_V2_Main_3;
    l1 = self.box_CultLocation_Cleanup_Manager_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_02.domino|@E4_CultLocation_02_Cinematic|1890962143", "1890962143", "E4_CultLocation_02_Cinematic", "box_Brick_Cult_Location_Cinematic_V2_Main_3.FadedOut", "box_CultLocation_Cleanup_Manager_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Cinematic_V2_Main_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_1();
    l0 = self.box_Brick_Cult_Location_Cinematic_V2_Main_3;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_02.domino|@E4_CultLocation_02_Cinematic|2064305030", "2064305030", "E4_CultLocation_02_Cinematic", "box_Brick_Cult_Location_Cinematic_V2_Main_3.Out", "box_ActivityEnd_1.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Brick_Cult_Location_Cinematic_V2_Main_3()
    local params;
    params = {
        -- bUseFadeInAtEnd,
        [0] = false,
        -- CS_CINEMA_Outpost_Animals,
        [1] = "2098673440859886186",
        -- eSceneEntity,
        [2] = "2099694192002341148",
        -- IsFaithCelebration,
        [3] = true,
        -- sSequenceFile,
        [4] = "sequences/zeta_main/jesuscamp_celebration.seq",
        -- TeleportDestination,
        [5] = "2099625230036113742",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Cleanup_Manager_2()
    local params;
    params = {
        -- Global_Veh_List,
        [0] = Globals.E4_CultLocation_02.Veh_List,
        -- Vehicle_Group,
        [2] = "#7EDF03D3",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_02.domino|@E4_CultLocation_02_Cinematic|1015685868");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
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
