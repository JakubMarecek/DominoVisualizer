LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_hamlets/farmhamlet/farmhamlet_citizens.domino
-- User graph: FarmHamlet_ThrowingKnife_SportCaster
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="SportCasterNPC" Type="Nomad|entity{}" />
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
        
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_SportCaster.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "BodyShot",
            },
            [1] = {
                name = "HeadShot",
            },
            [2] = {
                name = "Miss",
            },
            [3] = {
                name = "Player_Not_In_Mark",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Finish",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "SportCasterNPC",
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
    self._name = "FarmHamlet_ThrowingKnife_SportCaster";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_SportCaster";
    self.Finish = DummyFunction;
    self.Started = DummyFunction;
end;

function export:BodyShot()
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_SportCaster|1917612433", "1917612433", "FarmHamlet_ThrowingKnife_SportCaster", "BodyShot", "Started", self, self);
    self:Started();
end;

function export:HeadShot()
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_SportCaster|1358754242", "1358754242", "FarmHamlet_ThrowingKnife_SportCaster", "HeadShot", "Started", self, self);
    self:Started();
end;

function export:Miss()
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_SportCaster|327126935", "327126935", "FarmHamlet_ThrowingKnife_SportCaster", "Miss", "Started", self, self);
    self:Started();
end;

function export:Player_Not_In_Mark()
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_SportCaster|1361868627", "1361868627", "FarmHamlet_ThrowingKnife_SportCaster", "Player_Not_In_Mark", "Started", self, self);
    self:Started();
end;

-- Empty out anchor definitions
function export:Finish()
    
end;
function export:Started()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="BodyShot" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="HeadShot" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Miss" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Player_Not_In_Mark" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Finish" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Started" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="SportCasterNPC" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
