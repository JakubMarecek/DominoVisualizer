LUAC(  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/h4/h4_outpost_02.domino
-- User graph: H4_Cheeseburger_Landmark
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
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.H4_Outpost_02 = nil;
    Globals.H4_Outpost_02 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/H4/H4_Outpost_02.H4_Cheeseburger_Landmark.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Narrative/PlaySequence_v8.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Play",
            },
            [2] = {
                name = "PlayFromStart",
            },
            [3] = {
                name = "Skip",
            },
            [4] = {
                name = "SPIn",
                dynamicType = 2,
            },
            [5] = {
                name = "Stop",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = true,
            },
            [2] = {
                name = "Skipped",
                delayed = true,
            },
            [3] = {
                name = "SPOut",
                dynamicType = 2,
                delayed = false,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "Stopped",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "cleanupArrows",
                type = "bool",
            },
            [1] = {
                name = "IsSkippable",
                type = "bool",
            },
            [2] = {
                name = "MetaSequenceID",
                type = "int",
            },
            [3] = {
                name = "SceneEntity",
                type = "entity",
            },
            [4] = {
                name = "SequenceFile",
                type = "sequence",
            },
            [5] = {
                name = "ShouldRemovePostFx",
                type = "bool",
            },
            [6] = {
                name = "SkipPostFx",
                type = "string",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "H4_Cheeseburger_Landmark";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_02.domino|@H4_Cheeseburger_Landmark";
    self.Out = DummyFunction;
    self.box_PlaySequence_v8_1 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_02.domino|@H4_Cheeseburger_Landmark|1007625936");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 0,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlaySequence_v8_1_Started,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_PlaySequence_v8_1();
    l0 = self.box_PlaySequence_v8_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_02.domino|@H4_Cheeseburger_Landmark|351634076", "351634076", "H4_Cheeseburger_Landmark", "In", "box_PlaySequence_v8_1.PlayFromStart", self, l0:GetLuaBox());
    -- PlayFromStart
    l0:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_1_Started()
    local l0;
    l0 = self.box_PlaySequence_v8_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_02.domino|@H4_Cheeseburger_Landmark|2062582174", "2062582174", "H4_Cheeseburger_Landmark", "box_PlaySequence_v8_1.Started", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:OnEnter_box_PlaySequence_v8_1()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2104535140188307370",
        -- SequenceFile,
        [4] = "sequences/zeta_main/h4/h4_cheeseburger_landmark.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
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
