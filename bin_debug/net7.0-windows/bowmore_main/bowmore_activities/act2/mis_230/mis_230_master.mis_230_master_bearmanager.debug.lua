LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_230/mis_230_master.domino
-- User graph: MIS_230_MASTER_BEARMANAGER
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="gBear" Type="Nomad|group" />
    <DataIn Name="FullHP" Type="Core|int" />
    <DataIn Name="gPlayers" Type="Nomad|group" />
    <DataIn Name="eBearB50SPW" Type="Nomad|entity{}" />
    <DataIn Name="eBearB50ID" Type="Nomad|entity{}" />
    <DataIn Name="eBearB40ID" Type="Nomad|entity{}" />
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

function export:ResetLocalGlobals()
    Globals.MIS_230_MASTER = nil;
    Globals.MIS_230_MASTER = {
        bIsFirePhase = false,
        bIsWrathPhase = false,
        eCurrentBearID = nil,
        fCurrentBearHP_Global = 10000,
        eIsPlayerInstigator = nil,
        isReload = true,
        dbPlayerBowFire = "9015351296631242",
        dbPlayerBowCommon = "9015351296639748",
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_MASTER.MIS_230_MASTER_BEARMANAGER.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "B20Started",
                delayed = false,
            },
            [1] = {
                name = "B25Started",
                delayed = false,
            },
            [2] = {
                name = "B30Started",
                delayed = false,
            },
            [3] = {
                name = "B40Started",
                delayed = false,
            },
            [4] = {
                name = "B45Started",
                delayed = false,
            },
            [5] = {
                name = "B50Started",
                delayed = false,
            },
            [6] = {
                name = "BearDied",
                delayed = false,
            },
            [7] = {
                name = "SetDay",
                delayed = false,
            },
            [8] = {
                name = "SetNight",
                delayed = false,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "eBearB40ID",
                type = "entity",
            },
            [1] = {
                name = "eBearB50ID",
                type = "entity",
            },
            [2] = {
                name = "eBearB50SPW",
                type = "entity",
            },
            [3] = {
                name = "FullHP",
                type = "int",
            },
            [4] = {
                name = "gBear",
                type = "group",
            },
            [5] = {
                name = "gPlayers",
                type = "group",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    self._name = "MIS_230_MASTER_BEARMANAGER";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_MASTER.domino|@MIS_230_MASTER_BEARMANAGER";
    self.BearDied = DummyFunction;
    self.B20Started = DummyFunction;
    self.B25Started = DummyFunction;
    self.B30Started = DummyFunction;
    self.B40Started = DummyFunction;
    self.B45Started = DummyFunction;
    self.B50Started = DummyFunction;
    self.SetNight = DummyFunction;
    self.SetDay = DummyFunction;
    self.iOBJ_ProgressID = 0;
    self.fCurrentBEARHP = 10000;
    self.iCurrentBEARHP = 0;
    self.iTotalBEARHP = 3800;
    self.iNumIllusionKilled = 0;
    self.fParticleDelay = 1;
    self.eBear = nil;
    self.dbAmmoType = nil;
    self.iBearGRPCount = 0;
end;

function export:Start()
    
end;

-- Empty out anchor definitions
function export:BearDied()
    
end;
function export:B20Started()
    
end;
function export:B25Started()
    
end;
function export:B30Started()
    
end;
function export:B40Started()
    
end;
function export:B45Started()
    
end;
function export:B50Started()
    
end;
function export:SetNight()
    
end;
function export:SetDay()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="B20Started" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="B25Started" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="B30Started" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="B40Started" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="B45Started" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="B50Started" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="BearDied" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="SetDay" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="SetNight" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eBearB40ID" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eBearB50ID" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eBearB50SPW" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="FullHP" AnchorDynType="0" DataTypeID="int" />
		<DataIn Name="gBear" AnchorDynType="0" DataTypeID="group" />
		<DataIn Name="gPlayers" AnchorDynType="0" DataTypeID="group" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
