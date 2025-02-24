# Description

TudiAnalyticsTest is a project that shows an example integration of the
InfinyonAnalytics, Analytics provider plugin.

The game was initially generated from an open sidescroller template here:
https://github.com/CobraCodeDev/TP_2DSideScrollerBP

Changes were made to install the `InfinyonAnalytics` plugin,
as well as add Analytics events generation within the Blueprints of the
generated code.  The blueprint generated events are standard IAnalyticsEvent
events.

## Setup

Checkout this repostity with `git clone https://github.com/fluvio-community/TudiAnalyticsTest.git`
and **also checkout the submodules** `git submodule update --init --recursive`

Or you can add the `InfinyonAnlytics` Plugin to your project:
see https://github.com/fluvio-community/InfinyonAnalytics

Either way, you will need to **Configure the Plugin** with an api key to send
analytics to the Infinyon cloud for storage and analysis

- Go to Infinyon.com and setup a fluvio cluster and create an access-key for
    an analytics storage topic.
    https://www.fluvio.io/docs/latest/cloud/how-to/use-ws-gateway
- go the project `Config/DefaultEngine.ini` file and add this section
    ```
    [InfinyonAnalytics]
    ApiKey=abcd
    ```

Visit us on Discord if you have any questions or comments
https://discord.com/invite/bBG2dTz

## Integration

Integration was performed on Unreal Engine 5.5.3 on Linux, the project builds and runs on Unreal Engine 5.5.3 on MacOs


# Unreal Engine 5 2D Side Scroller Blueprint Template Notes
A basic 2D side scroller blueprint template for Unreal Engine 5.
**This template requires Unreal Engine 5.1 or higher, however 5.3 or higher is recommended to prevent bugs with the orthographic camera**

![template](https://github.com/CobraCodeDev/TP_2DSideScrollerBP/assets/141534668/5bd1b1c9-5468-4de4-956f-4f688375023a)

## Advanced Templates
![TP_ZDSideScrollerBP](https://github.com/CobraCodeDev/TP_2DSideScrollerBP/assets/141534668/cd6b2446-cd31-4964-81db-496b1f7d86d8)
![TP_ZDTopDownBP](https://github.com/CobraCodeDev/TP_2DSideScrollerBP/assets/141534668/29672976-2ae4-4ebd-ac14-b94a21111117)

As a patron you get access to the advanced 2D/3D hybrid version of this template and also Top Down 2D template.
Both of these use the free PaperZD plugin which adds Animation Blueprint and Anim Notify support for a better workflow.

https://www.patreon.com/collection/111760

## How to Install
Click on Code and then Download ZIP to download the template.
![image](https://github.com/CobraCodeDev/TP_2DSideScrollerBP/assets/141534668/fbb64928-0b9c-4eeb-ad91-5b8910173fff)

After that follow the simple instructions in this document:
https://cobracode.notion.site/How-to-install-an-Unreal-Engine-Template-b7fe36e8f9d142b2b02a4fc88600b0f9?pvs=4

## Art Assets
Huge thanks to Ansimuz for putting out these art assets as Public Domain!

https://ansimuz.itch.io/sunny-land-pixel-game-art
