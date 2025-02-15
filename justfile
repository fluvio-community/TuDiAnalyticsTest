default:
    just -l

UE_ENGINE:="/opt/ssd2/work/Unreal_Engine_5.5/Engine"
PROJ_UPROJECT:="/opt/ssd2/work/TudiAnalyticsTest/TudiAnalyticsTest.uproject"
build:
    {{UE_ENGINE}}/Build/BatchFiles/Linux/Build.sh TudiAnalyticsTest Linux Development {{PROJ_UPROJECT}} -waitmutex

clean:
    {{UE_ENGINE}}/Build/BatchFiles/Linux/Build.sh TudiAnalyticsTest Linux Development {{PROJ_UPROJECT}} -waitmutex -clean

run: build
    Binaries/Linux/TudiAnalyticsTest
