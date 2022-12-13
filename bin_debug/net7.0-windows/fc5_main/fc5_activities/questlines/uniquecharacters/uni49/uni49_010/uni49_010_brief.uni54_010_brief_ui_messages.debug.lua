LUACf#  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni49/uni49_010/uni49_010_brief.domino
-- User graph: UNI54_010_Brief_UI_MESSAGES
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Message" Type="Core|string" />
    <DataIn Name="Duration" Type="Core|float" />
</InputReflection> 
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_BRIEF.UNI54_010_Brief_UI_MESSAGES.debug.lua")] = {
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
                name = "Duration",
                type = "float",
            },
            [1] = {
                name = "Message",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Delay_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
            },
            [2] = {
                name = "Start",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "LoopingEnded",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Resumed",
                delayed = false,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Stopped",
                delayed = false,
            },
            [5] = {
                name = "TimeElapsed",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "loop",
                type = "bool",
            },
            [1] = {
                name = "nbLoop",
                type = "int",
            },
            [2] = {
                name = "seconds",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "currentLoop",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Message",
                type = "string",
            },
            [1] = {
                name = "pawn",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI54_010_Brief_UI_MESSAGES";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_BRIEF.domino|@UNI54_010_Brief_UI_MESSAGES";
    self.Out = DummyFunction;
    self.box_Delay_v5_2 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_BRIEF.domino|@UNI54_010_Brief_UI_MESSAGES|996552843");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_2_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_2_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_DisplayDebugCinematicMsg_v3_1();
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_BRIEF.domino|@UNI54_010_Brief_UI_MESSAGES|1537575825", "1537575825", "UNI54_010_Brief_UI_MESSAGES", "In", "box_DisplayDebugCinematicMsg_v3_1.Display", self, l0:GetLuaBox());
    -- Display
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DisplayDebugCinematicMsg_v3_1_OnDisplay()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_BRIEF.domino|@UNI54_010_Brief_UI_MESSAGES|630901577", "630901577", "UNI54_010_Brief_UI_MESSAGES", "box_DisplayDebugCinematicMsg_v3_1.OnDisplay", "box_Delay_v5_2.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_DisplayDebugCinematicMsg_v3_1_OnHide()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_BRIEF.domino|@UNI54_010_Brief_UI_MESSAGES|1141253948", "1141253948", "UNI54_010_Brief_UI_MESSAGES", "box_DisplayDebugCinematicMsg_v3_1.OnHide", "box_Delay_v5_2.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Delay_v5_2_Stopped()
    local l0;
    l0 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_BRIEF.domino|@UNI54_010_Brief_UI_MESSAGES|1443447595", "1443447595", "UNI54_010_Brief_UI_MESSAGES", "box_Delay_v5_2.Stopped", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_Delay_v5_2_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayDebugCinematicMsg_v3_1();
    l0 = self.box_Delay_v5_2;
    l1 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_BRIEF.domino|@UNI54_010_Brief_UI_MESSAGES|195717523", "195717523", "UNI54_010_Brief_UI_MESSAGES", "box_Delay_v5_2.TimeElapsed", "box_DisplayDebugCinematicMsg_v3_1.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_DisplayDebugCinematicMsg_v3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayDebugCinematicMsg_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_BRIEF.domino|@UNI54_010_Brief_UI_MESSAGES|600224010");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayDebugCinematicMsg_v3_1_OnDisplay,
        -- OnHide,
        [1] = self.f_box_DisplayDebugCinematicMsg_v3_1_OnHide,
    });
    params = {
        -- Message,
        [0] = self.Message,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_2()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.Duration,
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
	<DatasIn>
		<DataIn Name="Duration" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Message" AnchorDynType="0" DataTypeID="string" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
