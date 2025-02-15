default:
    just -l

UE_ENGINE:="/opt/ssd2/work/Unreal_Engine_5.5/Engine"
PROJ_UPROJECT:="/opt/ssd2/work/TudiAnalyticsTest/TudiAnalyticsTest.uproject"
build:
    {{UE_ENGINE}}/Build/BatchFiles/Linux/Build.sh TudiAnalyticsTest Linux Development {{PROJ_UPROJECT}} -waitmutex

clean:
    {{UE_ENGINE}}/Build/BatchFiles/Linux/Build.sh TudiAnalyticsTest Linux Development {{PROJ_UPROJECT}} -waitmutex -clean

# Run the game, (bugs)
# UnrealEditor Tools->Project Launcher->"Linux profile"->Launch "icon on right of profile"
run: build
    Binaries/Linux/TudiAnalyticsTest

genproj:
    {{UE_ENGINE}}/Build/BatchFiles/Linux/GenerateProjectFiles.sh -project={{PROJ_UPROJECT}} -game

edit:
    {{UE_ENGINE}}/Binaries/Linux/UnrealEditor {{PROJ_UPROJECT}}