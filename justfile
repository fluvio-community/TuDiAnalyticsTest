
set dotenv-load := true

default:
    just -l

UE_ENGINE:="${UE_ROOT}/Unreal_Engine_5.5/Engine"
PROJ_UPROJECT:= `pwd` / "TudiAnalyticsTest.uproject"
WS_ADDR:= "${WS_ADDR}"

build:
    {{UE_ENGINE}}/Build/BatchFiles/Linux/Build.sh TudiAnalyticsTest Linux Development {{PROJ_UPROJECT}} -waitmutex

clean-all: clean clean-plugin

clean:
    {{UE_ENGINE}}/Build/BatchFiles/Linux/Build.sh TudiAnalyticsTest Linux Development {{PROJ_UPROJECT}} -waitmutex -clean

# Clean the plugin, run this, then `just edit` to rebuild.
clean-plugin:
    cd Plugins/InfinyonAnalytics && rm -rf Binaries/ Intermediate/


# Run the game, (bugs)
# UnrealEditor Tools->Project Launcher->"Linux profile"->Launch "icon on right of profile"
run: build
    Binaries/Linux/TudiAnalyticsTest

genproj:
    {{UE_ENGINE}}/Build/BatchFiles/Linux/GenerateProjectFiles.sh -project={{PROJ_UPROJECT}} -game

edit:
    {{UE_ENGINE}}/Binaries/Linux/UnrealEditor {{PROJ_UPROJECT}}

# test to cloud service
test-produce:
    echo '{"event_name":"test","attributes": { "key": "value""}}' | websocat {{WS_ADDR}}

# test to local ws gateway service
test-produce2:
    echo '{"event_name":"test","attributes": { "key": "value""}}' | websocat ws://127.0.0.1:3000/ws/v2/produce/analytics

